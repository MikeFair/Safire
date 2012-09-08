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
.sub "" :subid("cuid_1_1347081276.13016") :anon :lex
.annotate 'file', "src/safire/Runtime.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5014 = 'cuid_2_1347081276.13016' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_3_1347081276.13016' 
    capture_lex $P5014 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "&print", $P103 
    .lex "&say", $P104 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_2_1347081276.13016' 
    capture_lex $P5001
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_3_1347081276.13016' 
    capture_lex $P5002
    set $P104, $P5002
    find_dynamic_lex $P5003, "$*CTXSAVE"
    set ctxsave, $P5003
    isnull $I5001, ctxsave
    box $P5008, $I5001
    set $P5007, $P5008
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5006, $I5002
    set $P5005, $P5006
    unless $I5002 goto if11_end13 
    $P5004 = ctxsave."ctxsave"()
    set $P5005, $P5004
  if11_end13:
    set $P5007, $P5005
  unless10_end11:
.annotate 'line', 1
    set $P5013, _lex_param_0
    unless _lex_param_0 goto if12_end15 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5009, "ModuleLoader"
    getinterp $P5011
    set $P5010, $P5011["context"]
    $P5012 = $P5009."set_mainline_module"($P5010)
    set $P5013, $P5012
  if12_end15:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_2_1347081276.13016") :anon :lex :outer("cuid_1_1347081276.13016")
.annotate 'file', "src/safire/Runtime.pm"
.annotate 'line', 3
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
    join $S5001, "", _lex_param_0
    print $S5001
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_3_1347081276.13016") :anon :lex :outer("cuid_1_1347081276.13016")
.annotate 'file', "src/safire/Runtime.pm"
.annotate 'line', 8
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
    join $S5001, "", _lex_param_0
    say $S5001
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1347081276.13016") :load :init
.annotate 'file', "src/safire/Runtime.pm"
    .const 'Sub' $P5001 = 'cuid_4_1347081276.13016' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347081276.13016" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPP6QRegex")
    nqp_create_sc $P5001, "7274D95AB356A33A74B63C3D6AD9AF53A8C1B0E3-1347081276.17241"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/safire/Runtime.pm")
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
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
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
    push $P5003, "4A5BD9A38C6E193C4CF429B1C28A4EC783872DAB-1346829367.55334"
    push $P5003, "src/stage2/gen/NQPHLL.pm"
    push $P5003, "Actions"
    push $P5003, "CommandLine"
    push $P5003, "World"
    push $P5003, "CallResult"
    push $P5003, "Sub"
    push $P5003, "Ops"
    push $P5003, "Label"
    push $P5003, "209A97C1EC6909DF7E64A0778D59E946D8237859-1346829409.80434"
    push $P5003, "src/stage2/gen/NQPP6QRegex.pm"
    .const 'Sub' $P5004 = 'cuid_4_1347081276.13016' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAHAAAAeAAAAAYAAACoAAAA5AYAAAwAAACkBwAABAgAAAAAAAAECAAAAAAAAAQIAAAECAAAAAAAAAUAAAAGAAAADgAAAAAAAAAPAAAAAAAAABIAAAATAAAAKQAAACoAAAAvAAAAMAAAADgAAAA5AAAAAQAAAAAAAAABAAAAJgEAAAEAAAACAwAAAQAAALgDAAABAAAAmAQAAAEAAAB4BQAAAAAAAAEAAAAAAAAAAAAAAAoACgAAAAIAAAACAAAAAAACAAAAAwAAAAIAAAAAAAMAAAAEAAAAAgABAAAAGQAAAAcAAAACAAEAAABDAAAACAAAAAIAAQAAAFAAAAAJAAAAAgABAAAAVgAAAAoAAAACAAEAAABaAAAACwAAAAIAAAAAAAQAAAAMAAAAAgAAAAAABQAAAA0AAAACAAIAAAAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAYAAAAAAAAAAgAAAAoAFwAAABEAAAACAAQAAAABAAAAFAAAAAIABAAAAAYAAAAVAAAAAgAEAAAACgAAABYAAAACAAQAAAAlAAAAFwAAAAIABAAAAC0AAAAYAAAAAgAEAAAAMQAAABkAAAACAAQAAAA1AAAAGgAAAAIABAAAADkAAAAbAAAAAgAEAAAAPAAAABwAAAACAAQAAABAAAAAHQAAAAIABAAAAEUAAAAeAAAAAgAEAAAATQAAAB8AAAACAAQAAABPAAAAIAAAAAIABAAAAFUAAAAhAAAAAgAEAAAAWQAAACIAAAACAAQAAABdAAAAIwAAAAIABAAAAGEAAAAkAAAAAgAEAAAAaQAAACUAAAACAAQAAABsAAAAJgAAAAIABAAAAG8AAAAnAAAAAgAEAAAAeAAAACgAAAACAAUAAAAnAAAAKwAAAAIABQAAADgAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAAAwAAAAAABwAAAAAAAAADAAAACgACAAAALAAAAAIAAQAAAAEAAAAtAAAAAgAAAAAACAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAADAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAADAAAAAAAJAAAAAAAAAAQAAAAKAAUAAAAuAAAAAgAGAAAAAQAAADEAAAACAAYAAAA9AAAAKwAAAAIABgAAAF8AAAAyAAAAAgAGAAAA0QAAADMAAAACAAYAAACdAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABAAAAAMAAAAAAAoAAAAAAAAABQAAAAoABQAAADQAAAACAAUAAAABAAAAFQAAAAIABQAAAAQAAAA1AAAAAgAFAAAADAAAADYAAAACAAUAAAAbAAAANwAAAAIABQAAACIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAFAAAAAwAAAAAACwAAAAAAAAAIAAAACgADAAAALgAAAAIABwAAAAEAAAAxAAAAAgAHAAAAUQAAACsAAAACAAcAAACKAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACAAAAAMAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAEAAAAAAAAAAQAAABAAAAAAAAAAAAAAAAIAAAAQAAAAAAAAAAAAAAADAAAAEAAAAAAAAAAAAAAABAAAABAAAAAAAAAAAwAAAAAAAAAQAAAAAQAAAAMAAAAAAAAAIAAAAAEAAAAAAAAABQAAADAAAAAAAAAAAwAAAAAAAAAwAAAAAQAAAAMAAAAAAAAAQAAAAAEAAAADAAAAAAAAAFAAAAABAAAAEAAAAAcAAAAAAAoAAAAAAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAtAAAABwAAAAAACgAAAAAA", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347081276.13016"
    nqp_get_sc_object $P5002, "7274D95AB356A33A74B63C3D6AD9AF53A8C1B0E3-1347081276.17241", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081276.13016"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347081276.13016"
    nqp_get_sc_object $P5002, "7274D95AB356A33A74B63C3D6AD9AF53A8C1B0E3-1347081276.17241", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081276.13016"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "7274D95AB356A33A74B63C3D6AD9AF53A8C1B0E3-1347081276.17241", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1347081276.13016") :anon :lex :outer("cuid_5_1347081276.13016")
.annotate 'file', "src/safire/Runtime.pm"
    new $P5001, 'ResizablePMCArray'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_6_1347081276.13016") :load
.annotate 'file', "src/safire/Runtime.pm"
    .const 'Sub' $P5001 = "cuid_1_1347081276.13016" 
    $P5002 = $P5001()
    .return ($P5002) 
.end