# language-specific runtime functions go here

sub print(*@args) { for @args { nqp::print($_) }; } #nqp::print("\n") }
#sub print(*@args) { nqp::print(nqp::join('', @args)); 1; }

sub say(*@args) { for @args { nqp::print($_) }; nqp::print("\n") }
#sub say(*@args) { nqp::say(nqp::join('', @args)); 1; }
