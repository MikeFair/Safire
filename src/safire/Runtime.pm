# language-specific runtime functions go here

sub print(*@args) {
    nqp::print(nqp::join('', @args));
    1;
}

sub say(*@args) {
    nqp::say(nqp::join('', @args));
    1;
}
