.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_1_1347081274.86839") :anon :lex
.annotate 'file', "src/safire/Compiler.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5015 = 'cuid_3_1347081274.86839' 
    capture_lex $P5015 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
.annotate 'line', 12
    nqp_get_sc_object $P5001, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    find_dynamic_lex $P5002, "$*CTXSAVE"
    set ctxsave, $P5002
    isnull $I5001, ctxsave
    box $P5007, $I5001
    set $P5006, $P5007
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if11_end13 
    $P5003 = ctxsave."ctxsave"()
    set $P5004, $P5003
  if11_end13:
    set $P5006, $P5004
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5008 = 'cuid_3_1347081274.86839' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5014, _lex_param_0
    unless _lex_param_0 goto if14_end20 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5010, "ModuleLoader"
    getinterp $P5012
    set $P5011, $P5012["context"]
    $P5013 = $P5010."set_mainline_module"($P5011)
    set $P5014, $P5013
  if14_end20:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_3_1347081274.86839") :anon :lex :outer("cuid_1_1347081274.86839")
.annotate 'file', "src/safire/Compiler.pm"
.annotate 'line', 3
    .const 'Sub' $P5002 = 'cuid_2_1347081274.86839' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1347081274.86839' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_2_1347081274.86839") :anon :lex :outer("cuid_3_1347081274.86839")
.annotate 'file', "src/safire/Compiler.pm"
.annotate 'line', 5
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$statement_list", _lex_param_1 
.annotate 'line', 7
    getinterp $P5001
    $P5002 = $P5001."stdhandle"(1)
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback16
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$AUTOPRINTPOS"]
    unless_null $P5005, fallback17
    nqp_get_sc_object $P5008, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5005, $P5008
  fallback17:
    unless_null $P5005, vivi_1318
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5009, "Contextual $*AUTOPRINTPOS not found"
    set $P5005, $P5009
  vivi_1318:
    set $P5004, $P5005
  fallback16:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5012, $I5001
    set $P5011, $P5012
    if $I5001 goto unless12_end15 
.annotate 'line', 6
    $P5010 = "&_dumper"(_lex_param_1, "SAFIRE")
    set $P5011, $P5010
  unless12_end15:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1347081274.86839") :load :init
.annotate 'file', "src/safire/Compiler.pm"
    .const 'Sub' $P5001 = 'cuid_4_1347081274.86839' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347081274.86839" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPP6QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPHLL")
    nqp_create_sc $P5001, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/safire/Compiler.pm")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "9373C39ED43EF411D214BE79DD6A18FB290EEDDA-1346829359.28173"
    push $P5003, "src/stage2/QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
    push $P5003, "PIRT"
    push $P5003, "PAST"
    push $P5003, "__PAST_CORE_SC__"
    push $P5003, "safire"
    push $P5003, "CREATE"
    push $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238"
    push $P5003, "src/stage2/NQPCORE.setting"
    push $P5003, "bless"
    push $P5003, "BUILDALL"
    push $P5003, "new"
    push $P5003, "4A5BD9A38C6E193C4CF429B1C28A4EC783872DAB-1346829367.55334"
    push $P5003, "src/stage2/gen/NQPHLL.pm"
    push $P5003, "Str"
    push $P5003, "Numeric"
    push $P5003, "Int"
    push $P5003, "at_pos"
    push $P5003, "at_key"
    push $P5003, "defined"
    push $P5003, "ACCEPTS"
    push $P5003, "isa"
    push $P5003, "__dump"
    push $P5003, "BUILD"
    push $P5003, "language"
    push $P5003, "compiler"
    push $P5003, "config"
    push $P5003, "load_module"
    push $P5003, "autoprint"
    push $P5003, "interactive"
    push $P5003, "eval"
    push $P5003, "ctxsave"
    push $P5003, "panic"
    push $P5003, "stages"
    push $P5003, "parsegrammar"
    push $P5003, "parseactions"
    push $P5003, "interactive_banner"
    push $P5003, "interactive_prompt"
    push $P5003, "compiler_progname"
    push $P5003, "commandline_options"
    push $P5003, "command_line"
    push $P5003, "command_eval"
    push $P5003, "process_args"
    push $P5003, "evalfiles"
    push $P5003, "compile"
    push $P5003, "start"
    push $P5003, "parse"
    push $P5003, "past"
    push $P5003, "post"
    push $P5003, "pirbegin"
    push $P5003, "pir"
    push $P5003, "evalpmc"
    push $P5003, "dumper"
    push $P5003, "usage"
    push $P5003, "version"
    push $P5003, "show-config"
    push $P5003, "verbose-config"
    push $P5003, "vmstat"
    push $P5003, "nqpevent"
    push $P5003, "removestage"
    push $P5003, "addstage"
    push $P5003, "parse_name"
    push $P5003, "lineof"
    push $P5003, "user-progname"
    push $P5003, "cli-options"
    push $P5003, "cli-arguments"
    push $P5003, "@!stages"
    push $P5003, "$!parsegrammar"
    push $P5003, "$!parseactions"
    push $P5003, "@!cmdoptions"
    push $P5003, "$!usage"
    push $P5003, "$!compiler_progname"
    push $P5003, "$!language"
    push $P5003, "%!config"
    push $P5003, "$!user_progname"
    push $P5003, "@!cli-arguments"
    push $P5003, "%!cli-options"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "2307B075AE989FBFD7AC085D0EE8506F81515FF7-1346829344.08174"
    push $P5003, "src/stage2/gen/nqp-mo.pm"
    push $P5003, "safire::Compiler"
    push $P5003, "CompileTimeValue"
    push $P5003, "44E67A824102CD2FF16A4D16678483BA63717CDF-1346829355.15241"
    push $P5003, "src/stage2/QASTNode.nqp"
    push $P5003, "SpecialArg"
    push $P5003, "Node"
    push $P5003, "Regex"
    push $P5003, "IVal"
    push $P5003, "NVal"
    push $P5003, "SVal"
    push $P5003, "BVal"
    push $P5003, "WVal"
    push $P5003, "Want"
    push $P5003, "Var"
    push $P5003, "VarWithFallback"
    push $P5003, "Op"
    push $P5003, "VM"
    push $P5003, "Stmts"
    push $P5003, "Stmt"
    push $P5003, "Block"
    push $P5003, "BlockMemo"
    push $P5003, "Unquote"
    push $P5003, "CompUnit"
    push $P5003, "InlinePlaceholder"
    push $P5003, "Operations"
    push $P5003, "D149224904FBFCCA116F66175EAE41643456A9B1-1346829379.9901"
    push $P5003, "src/stage2/QAST.nqp"
    push $P5003, "Compiler"
    push $P5003, "NFA"
    push $P5003, "P6Regex"
    push $P5003, "Grammar"
    push $P5003, "Actions"
    push $P5003, "CommandLine"
    push $P5003, "World"
    push $P5003, "CallResult"
    push $P5003, "Sub"
    push $P5003, "Ops"
    push $P5003, "Label"
    push $P5003, "209A97C1EC6909DF7E64A0778D59E946D8237859-1346829409.80434"
    push $P5003, "src/stage2/gen/NQPP6QRegex.pm"
    .const 'Sub' $P5004 = 'cuid_4_1347081274.86839' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "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AAAAAAIAAAAAAAEAAAADAAAAAAAKAAAAAAAAAAQAAAAKABcAAABcAAAAAgAHAAAAAQAAAF8AAAACAAcAAAAGAAAAYAAAAAIABwAAAAoAAABhAAAAAgAHAAAAJQAAAGIAAAACAAcAAAAtAAAAYwAAAAIABwAAADEAAABkAAAAAgAHAAAANQAAAGUAAAACAAcAAAA5AAAAZgAAAAIABwAAADwAAABnAAAAAgAHAAAAQAAAAGgAAAACAAcAAABFAAAAaQAAAAIABwAAAE0AAABqAAAAAgAHAAAATwAAAGsAAAACAAcAAABVAAAAbAAAAAIABwAAAFkAAABtAAAAAgAHAAAAXQAAAG4AAAACAAcAAABhAAAAbwAAAAIABwAAAGkAAABwAAAAAgAHAAAAbAAAAHEAAAACAAcAAABvAAAAcgAAAAIABwAAAHgAAABzAAAAAgAIAAAAJwAAAHYAAAACAAgAAAA4AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABAAAAAMAAAAAAAsAAAAAAAAABQAAAAoAAgAAAHcAAAACAAEAAAABAAAAeAAAAAIAAAAAAAwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAFAAAAAwAAAAAADQAAAAAAAAAGAAAACgAFAAAAeQAAAAIABAAAAAEAAAB6AAAAAgAEAAAAPQAAAHYAAAACAAQAAABfAAAAewAAAAIABAAAANEAAAB8AAAAAgAEAAAAnQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAYAAAADAAAAAAAOAAAAAAAAAAcAAAAKAAUAAAB9AAAAAgAIAAAAAQAAAGAAAAACAAgAAAAEAAAAfgAAAAIACAAAAAwAAAB/AAAAAgAIAAAAGwAAAIAAAAACAAgAAAAiAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAMAAAAAAA8AAAAAAAAACAAAAAoAAQAAAHYAAAACAAAAAAABAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAADAAAAAAAQAAAAAAAAAAwAAAAKAAMAAAB5AAAAAgAJAAAAAQAAAHoAAAACAAkAAABRAAAAdgAAAAIACQAAAIoAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAADAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAMAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAMAAAAFAAAAAAAAAAEAAAAFAAAAAAAAABAAAAABAAAAAAAAAAIAAAAgAAAAAAAAAAAAAAADAAAAIAAAAAAAAAAAAAAABAAAACAAAAAAAAAAAAAAAAUAAAAgAAAAAAAAAAAAAAAGAAAAIAAAAAAAAAAGAAAABgAAACAAAAABAAAABQAAAAAAAAAqAQAAAQAAAAUAAAAAAAAAOgEAAAEAAAAAAAAABwAAAEoBAAAAAAAABQAAAAAAAABKAQAAAQAAAAUAAAAAAAAAWgEAAAEAAAAFAAAAAAAAAGoBAAABAAAABQAAAAAAAAB6AQAAAQAAAAsAAAAAAAAAAAABAAEAAQBYAAAABwAAAAAACgAAAAAABgBbAAAACgAAAAAACgABAAAAJgAAAAIAAAAAAAIAAAAHAAEAAAACAAAAAAACAAAABwAAAAAABwABAAAAAgAEAAAAXwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAAEAAAACAAQAAABfAAAAAgADAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIABAAAAGEAAAAHAAIAAAAEAAAAAAAAAAAAAgAEAAAAYQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAQAAABhAAAAAQACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAADwAAAAcAAAAAAAoAAAAAAHgAAAAHAAAAAAAKAAAAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347081274.86839"
    nqp_get_sc_object $P5002, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081274.86839"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347081274.86839"
    nqp_get_sc_object $P5002, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081274.86839"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1347081274.86839" 
    nqp_get_sc_object $P5002, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784", 2
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_3_1347081274.86839"
    nqp_get_sc_object $P5002, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_3_1347081274.86839"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_3_1347081274.86839"
    nqp_get_sc_object $P5002, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_3_1347081274.86839"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1347081274.86839") :anon :lex :outer("cuid_5_1347081274.86839")
.annotate 'file', "src/safire/Compiler.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347081274.86839" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_6_1347081274.86839") :load
.annotate 'file', "src/safire/Compiler.pm"
    .const 'Sub' $P5001 = "cuid_1_1347081274.86839" 
    $P5002 = $P5001()
    .return ($P5002) 
.end