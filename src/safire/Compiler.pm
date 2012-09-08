use NQPHLL;

class safire::Compiler is HLL::Compiler {

    method autoprint($statement_list) {
        _dumper($statement_list, 'SAFIRE')
            unless (pir::getinterp__P()).stdhandle(1).tell > $*AUTOPRINTPOS;
    }

}
#
INIT {
    #my $safire := safire::Compiler.new;
    #$safire.language('safire');
    #$safire.parsegrammar(safire::Grammar);
    #$safire.parseactions(safire::Actions);
    #$safire.command_line(@ARGS);
}

#sub MAIN(*@ARGS) {
    # XXX setup %LEXPAD?
    #my $compiler := safire::Compiler.new();
    #$compiler.language('safire');
    #$compiler.parsegrammar(safire::Grammar);
    #$compiler.parseactions(safire::Actions);
    #$compiler.command_line(@ARGS);
#}
