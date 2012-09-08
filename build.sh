#!/bin/bash

echo rm safire.*
rm safire.*

echo rm src/*.pir
rm src/*.pir

echo rm src/safire/*.pbc
rm src/safire/*.pbc

/home/michael/local/bin/nqp --target=pir --output=src/gen_actions.pir  src/safire/Actions.pm
/home/michael/local/bin/nqp --target=pir --output=src/gen_compiler.pir  src/safire/Compiler.pm
/home/michael/local/bin/nqp --target=pir --output=src/gen_grammar.pir  src/safire/Grammar.pm
/home/michael/local/bin/nqp --target=pir --output=src/gen_runtime.pir  src/safire/Runtime.pm
/home/michael/local/bin/parrot -o src/safire/Actions.pbc src/gen_actions.pir
/home/michael/local/bin/parrot -o src/safire/Compiler.pbc src/gen_compiler.pir
/home/michael/local/bin/parrot -o src/safire/Grammar.pbc src/gen_grammar.pir
/home/michael/local/bin/parrot -o src/safire/Runtime.pbc src/gen_runtime.pir
/home/michael/local/bin/nqp --target=pir --output=src/safire.pir  src/safire.nqp
/home/michael/local/bin/parrot -o safire.pbc src/safire.pir
/home/michael/local/bin/pbc_to_exe safire.pbc --install && strip installable_safire

cc -o safire.o -I"/home/michael/local/include/parrot/4.7.0-devel" -D_REENTRANT -D_GNU_SOURCE -DDEBIAN  -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -DHASATTRIBUTE_CONST  -DHASATTRIBUTE_DEPRECATED  -DHASATTRIBUTE_MALLOC  -DHASATTRIBUTE_NONNULL  -DHASATTRIBUTE_NORETURN  -DHASATTRIBUTE_PURE  -DHASATTRIBUTE_UNUSED  -DHASATTRIBUTE_WARN_UNUSED_RESULT  -DHASATTRIBUTE_HOT  -DHASATTRIBUTE_COLD  -DDISABLE_GC_DEBUG=1 -DNDEBUG -DHAS_GETTEXT -O2 -g -c safire.c

cc -s -o installable_safire "safire.o" "/home/michael/local/lib/parrot/4.7.0-devel/parrot_config.o" -Wl,-rpath="/home/michael/local/lib" -L/home/michael/local/lib -L"../nqp/lib" -lparrot -Wl,-E  -fstack-protector -L/usr/local/lib -Wl,-E -ldl -lm -lpthread -lcrypt -lrt -lreadline  -L/usr/lib  -licuuc -licudata 
