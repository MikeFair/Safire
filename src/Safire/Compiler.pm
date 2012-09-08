use NQPHLL;

class Safire::Compiler is HLL::Compiler {

    method autoprint($statement_list) {
        _dumper($statement_list, 'SAFIRE')
            unless (pir::getinterp__P()).stdhandle(1).tell > $*AUTOPRINTPOS;
    }

}
#
INIT {
    #my $Safire := Safire::Compiler.new;
    #$Safire.language('Safire');
    #$Safire.parsegrammar(Safire::Grammar);
    #$Safire.parseactions(Safire::Actions);
    #$Safire.command_line(@ARGS);
}

#sub MAIN(*@ARGS) {
    # XXX setup %LEXPAD?
    #my $compiler := Safire::Compiler.new();
    #$compiler.language('Safire');
    #$compiler.parsegrammar(Safire::Grammar);
    #$compiler.parseactions(Safire::Actions);
    #$compiler.command_line(@ARGS);
#}
