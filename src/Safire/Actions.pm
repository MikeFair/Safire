use NQPHLL;

class Safire::Actions is HLL::Actions {

method TOP($/) {
say("actione TOP: ", $/);
    make QAST::Block.new( $<statement_list>.ast, :node($/) );
say("actionx TOP: ");
}

method statement_list($/) {
say("actione statement_list: ", $/);
    my $qast := QAST::Stmts.new( :node($/) );
    for $<statement> { $qast.push( $_.ast ); }
    make $qast;
say("actionx statement_list: ");
}

method statement($/) {
say("actione statement: ", $/ );
    make $<statement_control> ?? $<statement_control>.ast !! $<EXPR>.ast;
    #make $<statement_control>;
say("actionx statement: ");
}

method statement_control:sym<import>($/) {
say("actione statement_control import: ", $/ );
    #make $<import>.ast;
}

method import($/) {
say("actione import: ", $/ );
    #make QAST::Block.new( $<statement_list>.ast, :node($/) );
}

method statement_control:sym<handler>($/) {
say("actione statement_control handler: ", $/ );
    make $<handler>.ast;
say("actionx statement_control handler: " );
}

method handler($/) {
say("actione handler: ", $/ );
say("HANDLER STMNTLIST: { ", $<statement_list>, " }" );
    make QAST::Block.new( $<statement_list>.ast, :name($<identifier>), :node($/) );
say("actionx handler: " );
}

method statement_control:sym<say>($/) {
say("actione statement_control say: ", $/);
    my $qast := QAST::Op.new( :name<say>, :op<say>, :node($/) );
    for $<EXPR> { $qast.push( $_.ast ); }
    make $qast;
say("actionx statement_control say: ");
}

method statement_control:sym<print>($/) {
say("actione statement_control print: ", $/);
    my $qast := QAST::Op.new( :name<print>, :op<print>, :node($/) );
    for $<EXPR> { $qast.push( $_.ast ); }
    make $qast;
say("actionx statement_control print: ");
}

method statement_control:sym<if>($/) { say('actione statement_control if: ' ); make $<if_expr>.ast; say("actionx statement_control if: "); }

method if_expr($/) {
say("actione if_expr: ", $/);
   say("COND: ", $<cond>, "; CONDAST: ", $<cond>.ast);
   say("THEN: ", $<then>, "; THENAST: ", $<then>.ast);
   my $qast := QAST::Op.new( $<cond>.ast, $<then>.ast, :op('if'), :node($/) );

   if ($<elsePart>) {
      $qast.push( $<elsePart>.ast );
   }
   make $qast;
say("actionx if_expr: ");
}

method elsePart($/) { make ( $<statement> || $<statement_list> ).ast }

method term:sym<number>($/) { make $<number>.ast; }
method number($/) {
   my $value := $<dec_number> ?? $<dec_number>.ast !! $<integer>.ast;
   if ~$<sign> eq '-' { $value := -$value; }
   make $<dec_number> ??
      QAST::NVal.new( :value($value) ) !!
      QAST::IVal.new( :value($value) );
}

method term:sym<quote>($/) {
 make $<quote>.ast; 
}


#method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
#method quote:sym<">($/) { make $<quote_EXPR>.ast; }
method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<">($/) { make $<quote_EXPR>.ast; }

method circumfix:sym<( )>($/) { make $<EXPR>.ast; }


   #sub print(*@args) { for @args { nqp::print($_) }; } #nqp::print("\n") }
   #sub print(*@args) { nqp::print(nqp::join('', @args)); 1; }

   #sub say(*@args) { nqp::print(nqp::join('', @args)); 1; }
   #sub say(*@args) { for @args { nqp::print($_) }; nqp::print("\n") }

}
