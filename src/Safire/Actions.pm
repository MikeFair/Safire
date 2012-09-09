use NQPHLL;

class Safire::Actions is HLL::Actions {

method TOP($/) {
say("enter TOP: ", $/);
    make QAST::Block.new( $<statement_control>.ast, :node($/) );
say("exit TOP: ", $/);
}

method statement_list($/) {
say("enter statement_list: ", $/);
    my $qast := QAST::Stmts.new( :node($/) );
    for $<statement> { $qast.push( $_.ast ); }
    make $qast;
say("exit statement_list: ", $/);
}

method statement($/) {
say("enter statement: ", $/);
    make $<statement_control> ?? $<statement_control>.ast !! $<EXPR>.ast;
    #make $<statement_control>;
say("exit statement: ", $/);
}

method statement_control:sym<say>($/) {
say("enter statement_control say: ", $/);
    my $qast := QAST::Op.new( :name<say>, :op<say>, :node($/) );
    for $<EXPR> { $qast.push( $_.ast ); }
    make $qast;
say("exit statement_control say: ", $/);
}

method statement_control:sym<print>($/) {
say("enter statement_control print: ", $/);
    my $qast := QAST::Op.new( :name<print>, :op<print>, :node($/) );
    for $<EXPR> { $qast.push( $_.ast ); }
    make $qast;
say("exit statement_control print: ", $/);
}

method term:sym<number>($/) { make $<number>.ast; }
method number($/) {
   my $value := $<dec_number> ?? $<dec_number>.ast !! $<integer>.ast;
   if ~$<sign> eq '-' { $value := -$value; }
   make $<dec_number> ??
      QAST::NVal.new( :value($value) ) !!
      QAST::IVal.new( :value($value) );
}

method term:sym<quote>($/) {
say("enter quote: ", $/);
 make $<quote>.ast; 
say("exit quote: ", $/);
}


#method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<'>($/) { say("enter quote:sym<\'>: ", $/); make $<quote_EXPR>.ast; say("exit quote:sym<\">: ", $/); }
method quote:sym<">($/) { say("enter quote:sym<\">: ", $/); make $<quote_EXPR>.ast; say("exit quote:sym<\">: ", $/); }

method circumfix:sym<( )>($/) { make $<EXPR>.ast; }


}
