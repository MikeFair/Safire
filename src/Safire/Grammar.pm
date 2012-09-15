=begin overview

This is the grammar for Safire in Perl 6 rules.

=end overview

use NQPHLL;

grammar Safire::Grammar is HLL::Grammar {

my $cursor_class := NQPCursor;

token TOP {
    <statement_list>
    [ $ || <.panic: "Syntax error"> ]
}

## Lexer items

# This <ws> rule treats # as "comment to eol".
token ws {
   | <!ww> [ '#' \N* | \h+ | \\ \n ]*
}

## Statements

#rule statement_list { [ <statement> ]* %[ ';' | \n ] }
rule statement_list { <statement>* }

token statement { [
   || <statement_control>
   || <EXPR>
   || [ <.ws> \v ]+
   ]
   <.stmntEnd>
}


proto rule statement_control { <*> }
rule statement_control:sym<say>   { <sym> [ <EXPR> ]* %','  }
rule statement_control:sym<print> { <sym> [ <EXPR> ]* %','  }
rule statement_control:sym<if> { <if_expr> }
rule statement_control:sym<import> { <import> }
rule statement_control:sym<handler> { <handler> }


#proto rule block {*}
#rule block:sym<import> {}
rule import {
   'start' 'using' <identifier> <.return>
   #{ say("enter import: ", $<identifier>); }
   <statement_list>
   [ 'stop' 'using' $<identifier> ]?
   #{ say("exit import: ", $<identifier>); }
}

#rule block:sym<handler> {}
rule handler {
   'on' <identifier> <.return>
   #{ say("enter handler: ", $<identifier>); }
   <statement_list>
   'end' $<identifier> <.return>
   #{ say("exit  handler: ", $<identifier>); }
}

token identifier { <!keyword> <ident> }

token keyword { 'stop' | 'using' | 'if' | 'then' | 'else' | 'repeat' | 'end' | 'while' | 'until' | 'unless' }

#proto rule block_pair { <*> }
#rule block_pair:sym<if> { <sym> <if_expr> end $<sym> }
#rule block_pair:sym<repeat> { <sym> <repeat_expr> end $<sym> }

token stmntEnd { [ ';' | \v ]* }
token return { [ ';' | \v ]+ {say("exit  return",$/);} }

rule if_expr {
   'if' $<cond>=<EXPR> 'then' :
   { say("enter if: ", $/); }
   [
   || <.return>: $<then>=<statement_list> [ 'else' <elsePart> || 'end' 'if' ]
   || $<then>=<statement> [ 'else' <elsePart> ]?
   ]
   { say("exit  if: ", $/); }
}

rule elsePart {
   [
   || <.return> $<else>=<statement_list> 'end' 'if' 
   || $<else>=<statement>
   ]
}

## Terms

token term:sym<number> { <number> }
token term:sym<quote> { <quote> }

proto token quote { <*> }
token quote:sym<'> { <?[']> <quote_EXPR: ':q'> }
token quote:sym<"> { <?["]> <quote_EXPR: ':qq'> }

token number {
   $<sign>=[<[+\-]>?]
   [ <dec_number> | <integer> ]
}

## Operators

INIT {
    Safire::Grammar.O(':prec<u>, :assoc<left>',  '%multiplicative');
    Safire::Grammar.O(':prec<t>, :assoc<left>',  '%additive');
}

token circumfix:sym<( )> { '(' <.ws> <EXPR> ')' }

token infix:sym<*>  { <sym> <O('%multiplicative, :op<mul_n>')> }
token infix:sym</>  { <sym> <O('%multiplicative, :op<div_n>')> }

token infix:sym<+>  { <sym> <O('%additive, :op<add_n>')> }
token infix:sym<->  { <sym> <O('%additive, :op<sub_n>')> }
}
