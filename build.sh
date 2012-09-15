#!/bin/bash

PREFIX=/home/michael/local
NQP=$PREFIX/bin/nqp
PARROT=$PREFIX/bin/parrot
PBC_TO_EXE=$PREFIX/bin/pbc_to_exe
INCLUDE_DIR=$PREFIX/include/parrot/4.7.0-devel/
PARROT_VERSION=4.7.0-devel

./clean.sh

$NQP --target=pir --output=src/gen_world.pir  src/Safire/World.pm
$NQP --target=pir --output=src/gen_actions.pir  src/Safire/Actions.pm
$NQP --target=pir --output=src/gen_compiler.pir  src/Safire/Compiler.pm
$NQP --target=pir --output=src/gen_grammar.pir  src/Safire/Grammar.pm
$PARROT -o src/Safire/World.pbc src/gen_world.pir
$PARROT -o src/Safire/Actions.pbc src/gen_actions.pir
$PARROT -o src/Safire/Compiler.pbc src/gen_compiler.pir
$PARROT -o src/Safire/Grammar.pbc src/gen_grammar.pir
$NQP --target=pir --output=src/safire.pir  src/safire.nqp
$PARROT -o safire.pbc src/safire.pir
$PBC_TO_EXE safire.pbc --install && strip installable_safire

cc -o safire.o -I"$INCLUDE_DIR" -D_REENTRANT -D_GNU_SOURCE -DDEBIAN  -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -DHASATTRIBUTE_CONST  -DHASATTRIBUTE_DEPRECATED  -DHASATTRIBUTE_MALLOC  -DHASATTRIBUTE_NONNULL  -DHASATTRIBUTE_NORETURN  -DHASATTRIBUTE_PURE  -DHASATTRIBUTE_UNUSED  -DHASATTRIBUTE_WARN_UNUSED_RESULT  -DHASATTRIBUTE_HOT  -DHASATTRIBUTE_COLD  -DDISABLE_GC_DEBUG=1 -DNDEBUG -DHAS_GETTEXT -O2 -g -c safire.c

cc -s -o installable_safire "safire.o" "$PREFIX/lib/parrot/4.7.0-devel/parrot_config.o" -Wl,-rpath="$PREFIX/lib" -L"$PREFIX/lib" -lparrot -Wl,-E  -fstack-protector -L/usr/local/lib -Wl,-E -ldl -lm -lpthread -lcrypt -lrt -lreadline  -L/usr/lib  -licuuc -licudata 
