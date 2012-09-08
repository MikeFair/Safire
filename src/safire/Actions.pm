use NQPHLL;

class safire::Actions is HLL::Actions {

method TOP($/) {
say("enter TOP: ", $/);
    make QAST::Block.new( $<statement_list>.ast, :node($/) );
say("exit TOP: ", $/);
}

method statement_list($/) {
say("enter statement_list: ", $/);
    my $qast := PAST::Stmts.new( :node($/) );
    for $<statement> { $qast.push( $_.ast ); }
    make $qast;
say("exit statement_list: ", $/);
}

method statement($/) {
say("enter statement: ", $/);
    make $<statement_control> ?? $<statement_control>.ast !! $<EXPR>.ast;
say("exit statement: ", $/);
}

method statement_control:sym<say>($/) {
say("enter statement_control: ", $/);
    my $qast := QAST::Op.new( :name<say>, :op<callmethod>, :node($/) );
    for $<EXPR> { $qast.push( $_.ast ); }
    make $qast;
say("exit statement_control: ", $/);
}

method statement_control:sym<print>($/) {
    my $qast := QAST::Op.new( :name<print>, :op<callmethod>, :node($/) );
    for $<EXPR> { $qast.push( $_.ast ); }
    make $qast;
}

method term:sym<integer>($/) { make $<integer>.ast; }
method term:sym<quote>($/) {
say("enter quote: ", $/);
 make $<quote_EXPR>.ast; 
say("exit quote: ", $/);
}

method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<">($/) {
say("enter quote:sym<\">: ", $/);
make $<quote_EXPR>.ast;
say("exit quote:sym<\">: ", $/);
}

method circumfix:sym<( )>($/) { make $<EXPR>.ast; }


}
