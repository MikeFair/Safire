use src::Safire::Grammar;
use src::Safire::Actions;
use src::Safire::Compiler;

use NQPHLL;

sub MAIN(@ARGS) {
    # Initialize dynops.
    #pir::Safire_dynop_setup__v();

    # Bump up Parrot's recursion limit
    pir::getinterp__P().recursion_limit(100000);

    # Create and configure compiler object.
    my $comp := Safire::Compiler.new();
    $comp.language('Safire');
    $comp.parsegrammar(Safire::Grammar);
    $comp.parseactions(Safire::Actions);
    #$comp.addstage('syntaxcheck', :before<past>);
    #$comp.addstage('optimize', :before<post>);
    hll-config($comp.config);
    my $COMPILER_CONFIG := $comp.config;
    
    # Add extra command line options.
    #my @clo := $comp.commandline_options();
    #@clo.push('parsetrace');
    #@clo.push('setting=s');
    #@clo.push('n');
    #@clo.push('p');
    #@clo.push('doc=s?');
    #@clo.push('optimize=s?');
    #@clo.push('c');
    #@clo.push('I=s');
    #@clo.push('M=s');

    # Set up module loading trace
    my @*MODULES := [];
    
    # Set up END block list, which we'll run at exit.
    my @*END_PHASERS := [];

    # Enter the compiler.
    $comp.command_line(@ARGS, :encoding('utf8'), :transcode('ascii iso-8859-1'));
    
    # Run any END blocks before exiting.
    for @*END_PHASERS { $_() }
}

sub hll-config($config) {
    $config<version>    := '2012.09-220-g962ffbe';
    $config<build-date> := '2012-09-07T07:16:59Z';
}
