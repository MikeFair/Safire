# language-specific runtime functions go here

class Safire::World is HLL::World {

   sub print(*@args) { for @args { nqp::print($_) }; } #nqp::print("\n") }
   #sub print(*@args) { nqp::print(nqp::join('', @args)); 1; }

   #sub say(*@args) { for @args { nqp::print($_) }; nqp::print("\n") }
   sub say(*@args) { nqp::print(nqp::join('', @args)); 1; }
}
