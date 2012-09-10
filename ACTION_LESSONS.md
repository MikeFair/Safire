Things I have learned about how Parrot / NQP / etc work
============================================================

After Grammar.pm, the next most heavily worked on piece of code is Actions.pm, frankly there is likely more technical work you will do here than you will do in Grammar.pm.

While Grammar.pm does a great job of explaining what to match syntactically, Actions.pm is all about what to do as a result of that syntax.

Grammar and Actions and AST properties
====
* Every regex expression from Grammar.pm is a function that could correspond to a method in Action.pm.
  Once that Grammar.pm function matches something, the engine will call the same named 'method' from Actions.pm.
  Consequently any rule in Grammar.pm that should result in something meaningful about the language will likely have a corresponding method in Actions.pm.
  That is how the two are related; matches in Grammar.pm cause method calls in Actions.pm.

* The Actions.pm methods are called with a default parameter $/.
  The thing in $/ is a regex cursor and match tracker type object.
  These mothods are where the variables $<somestring> become accessible and are used to add meta-instructions to the languge.

* The $/ and $<somestring> are references to stuff passed in from Grammar.pm matches.
  These are objects, not strings. As such they have properties and methods of their own.
  One highly valuable property they have is their 'ast' property referenced just like you would expect as $<somestring>.ast.
  Or to say it in reverse, $<somestring>.ast references the 'ast' property of $<somestring>.

* The AST property from the match objects passed in represent what could possibly become a node in the AST tree.
  Alternatively you could use the information from the node (if not the node directly) to create a new kind of AST node to add.
  You could use a loop to create many nodes, the list goes on.

The key thing here is that the AST is what goes on to the next level to get turned into an executable by Parrot.


