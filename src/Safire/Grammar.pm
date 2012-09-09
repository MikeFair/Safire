=begin overview

This is the grammar for Safire in Perl 6 rules.

=end overview

use NQPHLL;

grammar Safire::Grammar is HLL::Grammar {

my $cursor_class := NQPCursor;

token TOP {
    <statement_control>
    [ $ || <.panic: "Syntax error"> ]
}

## Lexer items

# This <ws> rule treats # as "comment to eol".
token ws {
    <!ww>
    [ '#' \N* \n? | \s+ | \\ \n ]*
}

## Statements

rule statement_list { <statement>* }

rule statement {
    | <statement_control>
    | <EXPR>
}

proto token statement_control { <...> }
rule statement_control:sym<say>   { <sym> [ <EXPR> ]* %','  }
rule statement_control:sym<print> { <sym> [ <EXPR> ]* %','  }

## Terms

token term:sym<number> { <number> }
token term:sym<quote> { <quote> }

proto token quote { <...> }
token quote:sym<'> { <?[']> <quote_EXPR: ':q'> }
token quote:sym<"> { <?["]> <quote_EXPR: ':qq'> }

token number {
   '-'?
   [ <[1..9]> <[0..9]>+ | <[0..9]> ]
   [ '.' <[0..9]>+ ]?
   [ <[Ee]> <[+\-]>? <[0..9]>+ ]?
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
