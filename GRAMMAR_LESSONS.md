Things I have learned about how Parrot / NQP / etc work
============================================================
Skipping most of the gory details that I really do not understand and keeping this list at the "functional understanding" level required to "use" the tools to make a language.  Explaining the underlying mechanisms only to the point of why you need to know about it in order to properly use the higher order abstractions.

Starting at the "TOP"
====

All languages, from our perspective are going to start with their syntax.
By syntax I mean the sequence of characters (and yes at this stage of programming everything begins life as characters!) that make up the instructions for the langauge and the legal ordering of characters that are valid for this language.

Those rules all get encoded in a file called Grammar.pm.
A very special rule in this Grammar file is called "TOP".
It all begins there (and it ends with the special "term" set of matches but we will get to that).

Grammar.pm looks like this:
use NQPHLL; # to get access to the HLL::Language class from NQP

grammar Safire::Grammar is HLL:Grammar {
############ THE GRAMMAR STUFF GOES IN THIS PART ####################

rule TOP { <YOURMATCHINGSTARTSHERE> }

}

As you can likely discern from this, the "Safire::Grammar" class a type of "HLL::Grammar" class.
Other docs do a good job of explaining that, so I am not repeating that here because it pretty much just does what you would expect (create something so Parrot can treat your language like one of its implemented High Level Languages).

In this case we are mostly talking about a newer NQP type grammar class.
What that means, is that inside Parrot, there is more than one way to write your High Level Language.
NQP and Winxed, are two different encapsulations of the things the Parrot team has learned to make life easier for us.
I have nothing meaningful to say to compare them at this stage.

As far as I am aware, they are both just as capable as each other, but each feels a bit different.

NQP is being used heavily inside the Perl6 engine, Winxed seems to be gaining favor elsewhere and with that said, there are people using NQP other places as well.

[[[
This is a really good place to reference something that talks about the distinction between the language you are writing, and the language you are using to write your language.
The difference between the Grammar expression language (which I believe is the same regardless of choice) and the Actions.pm part.
Examples comparing the same kinds of expressions in PIR/NQP/Winxed would be good.
As well as offering some kind of guidance about how to go about selecting one.
]]]

This Grammar.pm file can be thought of as a class, implementing a Perl 6 Grammar, with some extra "magic" sprinkled in to make building the Abstract Syntax Tree (which Parrot will ultimately execute) easier.


A bit about Perl6 Regexes, Rules, Tokens, and Terms
====

A Perl6 regex, or more specifically a Perl6 Grammar (a collection of Perl6 regex expressions), is a complete and total overhaul / upgrade of what a Perl5 regex used to be.

A Perl5 Regex was extremely powerful at finding and matching text within strings.

Now take all that raw expressive power, and throw gasoline on it to make it even more expressive, then 'clean it up' so that not only is it more expressive, but it can now also be easyish to read at the same time, and I think you will grasp what Perl6 Grammars are all about.

A Perl6 Grammar is about describing a structured string, which is a slightly different goal than matching text within a string.

One of the things in Perl 5 regex that was difficult for me was parsing a CSV file.
I have even seen and used other Perl5 definitions of a CSV line inside my own code.
It is awesome what you could do with a Perl5 regex.

Why then, you may ask, did I find a CSV difficult?
Because there are embedded commas inside quoted strings, escaped quotes inside quoted strings, mismatched quotes, lines with fewer or more values than you expect, etc.  Not to say that a perl5 regex, was not capable, it just was not 'easy' for me.

That said, there is still a "structure" to a CSV file (and note I said "file", not just "line", because a CSV can have alternate delimiters, an optional header row, and differ in the line ending sequences (even within the same file) depending on how the file got built).

Describing structured text is what a Grammar is all about.  Consider a Grammar as a collection of regex expressions that can be combined to describe the whole.

If you think of a single regex expression as like a special kind of function call that takes a string as input and returns something about what it was able to find/match in that string (similar to what a Perl5 regex did), then you are on the right track.

A regex in Perl6 has a somewhat different syntax (described better elsewhere, use Google) and most importantly, makes it easy to call other regex expressions (like sub-expressions) as part of its match criteria.  And it is this 'sub-expression' part that makes the whole language parsing idea really great flexible in Parrot land and why Perl6 Grammars are such an integral part of languages running on Parrot.

In Perl6 Grammar land, you have three tools in your Grammar toolbelt, the "rule", the "token", and the "term".

The "rule", the "token", and the "term" are three forms of exactly the same thing; a Perl6 regex expression.

However they each behave differently and the "term" does something conceptually different from the "rule" and the "token" do.

The Grammar implements something known as a top down recursive descent parser (but it has a special second engine to handle the things recursive descent parsers are really bad at).

In other words, the expression in "TOP" describes the whole file, for instance:
* "TOP" could be { <statement_list> } 
* "statement_list" could be { <statement>* } 
* "statement" could be a series of alternations of possible language statements.

This should make sense, you describe your language at the highest order syntax strutures, and then let the engine figure out the details.

This model however begins to break down once you get down to the nitty gritty details within those statements.
Take a math expression that needs to evaluated before passed on to a function for instance:
2 * ( 3 + 4 ) / 12 - 1 - -3 + 4 * -7

This is much more easily matched using a different kind of parsing system that understands the concept of operators and operator precedence.

So the brilliant people involved, said "ok then! let us have both!"
So that is what we have in Parrot, two classes of awesome parsers that when combined make matching the syntax of our language easy and fun! :)


Token and Rule
============================================================
As mentioned earlier, there are three tools; the "rule", the "token", and the "term".

We will come back to the "term" in a moment and start our focus on the "rule" and the "token".

The "rule" and the "token" do _exactly_ the same thing for a Grammar; they match something.

They can be used in exactly all the same places because they are simply two forms of a regex expression.
(Note: they are different, and would not mean the same thing in place of each other and so are not 'interchangeable' as such, but as they are both regex match expressions, either can be used wherever a regex expression is called for)

The difference between the two is in how they treat the internal whitespace within the expression itself.
As a consequence, depending on which one you apply, they will each make the same expression mean something different.

Looking a bit closer at this, a "rule" (with some minor exceptions) counts all the whitespace internal to the expression as an implicit <.ws> match (aka whitespace is significant), and a "token" ignores the whitespace like it did not exist at all (aka whitespace is not significant).

So what exactly does <.ws> in a "rule" do for us?

Ignoring the . at the front for just a second, in a regex expression, the format <somestring> means "match regex 'somestring' at this point and store what you found in the $<somestring> variable".
(and conversely if you can not match 'somestring' at this point, then this whole regex does not match.)

Note that $<somestring> then becomes a variable name containing the value of the matched text.  This is a useful thing for a language parser to have, some way to capturethe text it is seeing into different "pieces".

It was strange for me at first to understand <somestring> means 'match the somestring expression' and $<somestring> means 'the text that the expression somestring matched' only because I have not historically thought of < and > characters as valid characters within a variable name.  However once this is understood, things become much easier to comprehend.

Now that you know what <somestring> does, <ws> is a specially named token that defines what "whitespace" means.

I am not an expert, but in general ws starts off meaning something close to [ \s | \t | \n | $ | ^ ]* like you would expect it to.

The . at the front of <.somestring> (see we are coming to that . now) means "and do not store the result in $<somestring>".

This prevents keeping around every single piece of whitespace of the code in an array of matches that you will never need or want.
(Note: If you think you really need to access a particular piece of whitespace, make a special rule to match and store it explicitly)

By making "ws" a specially named regex expression that will automatically get called as a part of a "rule", a Grammar makes a rule an easy way to express matches that contain whitespace, without having to explicitly code for it.

Further, Grammars can (and usually do) redefine the "ws" token by including their own version of the "token ws {}" regex expression.

In a language Grammar, redefining/enhancing the "ws" token will usually add at least the syntax used to describe a comment.  This makes "comment" part of "whitespace" which get automatically tossed from evaluation as part of whitespace whenever a <.ws> is used.

So putting that all together, we can now see that <.ws> means:
* match any whitespace at this point
* and all whitespace afterward, if it is there at all
* including comments and other ignorable text in this Grammar 
* and do not keep track of anything that was matched, throw it all out

That is what <.ws> means, and it comes for free between your expression parts whenever you use a "rule" type regex expression.

That is to say, when you put whitespace in a rule, each occurence of whitespace in the rule (without regard the length/amount of the whitespace you add, and excluding some exceptions having to do with the starts and ends of some things) gets a free <.ws> entry in place of the rules "whitespace".

Looking at an example then:

rule somerule { 'the' 'quick' 'brown' 'fox' }
looks like regex somerule {'the'<.ws>'quick'<.ws>'brown'<.ws>'fox'}

And that is what you get when you use a "rule" to define a regex expression.

Now "token", ignores all occurence of whitespace within the expression as if it did not even exist, making:
token somerule { 'the' 'quick' 'brown' 'fox' }
like regex somerule {'the''quick''brown''fox'}

and since 'somechar' is simply a way to explicitly identify a literal string, this reduces to
regex somerule {'thequickbrownfox'}

And that is what you get when you use "token" to define a regex expression.


The main functional difference in how you use them is tokens are fabulous for 'alternations' and rules are great at 'formations'.

A quick example shall we?

token name { <ident> }
token value { <number> | <string> }
token type { 'int' | 'str' }

rule declaration { <type> <name>     [ '=' <value> ]? }


This is an easy way of saying:
* the "name" token will match the "ident" expression.
	* ident is another special builtin token expression (like "ws") and means "starts with a letter or underscore, and has a sequence of 0 or more /w characters after it".
* the "value" expression will match either the <number> expression or the <string> expression (not defined here)
* the "type" expression will match character sequences 'int' or 'str' 

Note that because the whitespace gets ignored, tokens are great at making a very readable list of alternate expression matches.

Finally we get to the rule part which creates a "declaration" expression to be:
* a <type> regex match,
* followed by some amount of whitespace (which could be nothing),
* followed by a <name> regex match,
* followed by some more whitespace (which could be nothing)
* and maybe having one occurence of:
	* an '='
	* followed by some amount of whitespace (which could be nothing)
	* followed by a <value> regex match
	* followed by some amount of whitespace (which could be nothing)

I added the large amount of whitespace between the '<name>' and the '[' to illustrate the point that all whitespace between the parts of a rule expression get collapsed into a single <.ws>. You can even place newlines between the rule terms and it will still work the same.

That is to say, the above would mean the exact same thing even if written like this:
rule declaration {
<type> <name>
[
   '='
   <value>
]?
}


Terms
====
This needs something good here.

There is another builtin rule called <EXPR>.
Now EXPR is special in that it essentially knows how to relate values via operators and discovers the basic "atomic" units of syntax.

It does this by relying on "term"

"term" is another builtin.
"term" gets defined in HLL::Language as proto token term { <*> }
which makes it what I like to call a 'set expression'

I call it that because proto token and proto rule expressions can take many expressions and will try to match any expression in the set.

proto token color { <*> }
color:sym<red> { 'red' }
color:sym<orange> { 'orange' }
color:sym<yellow> { 'yellow' }
color:sym<green> { 'green' }
color:sym<blue> { 'blue' }

This means that any call to <color> will try to match the whole set of expressions'red', 'orange', 'yellow', 'green', 'blue'.
Plus when one does match, the value $<sym> will be able to tell us which one matched.  So in addition to $<color> containing the matched the string, $<sym> will contain the expression variant of color that matched.

