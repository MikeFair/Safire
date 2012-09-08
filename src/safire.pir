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
.sub "" :subid("cuid_1_1347081276.48305") :anon :lex
.annotate 'file', "src/safire.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5016 = 'cuid_3_1347081276.48305' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_4_1347081276.48305' 
    capture_lex $P5016 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "&MAIN", $P103 
    .lex "&hll-config", $P104 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_3_1347081276.48305' 
    capture_lex $P5001
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_4_1347081276.48305' 
    capture_lex $P5002
    set $P104, $P5002
    find_dynamic_lex $P5003, "$*CTXSAVE"
    set ctxsave, $P5003
    isnull $I5001, ctxsave
    box $P5008, $I5001
    set $P5007, $P5008
    if $I5001 goto unless11_end20 
    can $I5002, ctxsave, "ctxsave"
    box $P5006, $I5002
    set $P5005, $P5006
    unless $I5002 goto if12_end22 
    $P5004 = ctxsave."ctxsave"()
    set $P5005, $P5004
  if12_end22:
    set $P5007, $P5005
  unless11_end20:
.annotate 'line', 1
    set $P5015, _lex_param_0
    unless _lex_param_0 goto if13_end24 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5009, "ModuleLoader"
    getinterp $P5011
    set $P5010, $P5011["context"]
    $P5012 = $P5009."set_mainline_module"($P5010)
    .const 'Sub' $P5013 = "cuid_3_1347081276.48305" 
    $P5014 = $P5013(_lex_param_0 :flat)
    set $P5015, $P5014
  if13_end24:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "MAIN" :subid("cuid_3_1347081276.48305") :anon :lex :outer("cuid_1_1347081276.48305")
.annotate 'file', "src/safire.nqp"
.annotate 'line', 7
    .param pmc _lex_param_0 
    .const 'Sub' $P5044 = 'cuid_2_1347081276.48305' 
    capture_lex $P5044 
    .lex "$comp", $P101 
    .lex "$COMPILER_CONFIG", $P102 
    .lex "@*MODULES", $P103 
    .lex "@*END_PHASERS", $P104 
    .lex "@ARGS", _lex_param_0 
    nqp_get_sc_object $P5001, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
.annotate 'line', 12
    getinterp $P5005
    $P5006 = $P5005."recursion_limit"(100000)
.annotate 'line', 15
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "safire"
    get_who $P5008, $P5009
    set $P5007, $P5008["Compiler"]
    unless_null $P5007, fallback10
    nqp_get_sc_object $P5011, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5007, $P5011
  fallback10:
    $P5012 = $P5007."new"()
    set $P101, $P5012
.annotate 'line', 16
    $P5013 = $P101."language"("safire")
.annotate 'line', 17
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "safire"
    get_who $P5015, $P5016
    set $P5014, $P5015["Grammar"]
    unless_null $P5014, fallback11
    nqp_get_sc_object $P5018, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5014, $P5018
  fallback11:
    $P5019 = $P101."parsegrammar"($P5014)
.annotate 'line', 18
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "safire"
    get_who $P5021, $P5022
    set $P5020, $P5021["Actions"]
    unless_null $P5020, fallback12
    nqp_get_sc_object $P5024, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5020, $P5024
  fallback12:
    $P5025 = $P101."parseactions"($P5020)
.annotate 'line', 21
    $P5026 = $P101."config"()
    $P5027 = "&hll-config"($P5026)
.annotate 'line', 22
    $P5028 = $P101."config"()
    set $P102, $P5028
    new $P5029, 'ResizablePMCArray'
    set $P103, $P5029
    new $P5030, 'ResizablePMCArray'
    set $P104, $P5030
.annotate 'line', 43
    $P5031 = $P101."command_line"(_lex_param_0, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
    unless_null $P104, fallback13
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    set $P5035, $P5036["@END_PHASERS"]
    unless_null $P5035, fallback14
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    new $P5040, 'ResizablePMCArray'
    set $P5038["@END_PHASERS"], $P5040
    set $P5035, $P5040
  fallback14:
    unless_null $P5035, vivi_1015
    die "Contextual @*END_PHASERS not found"
    box $P5041, "Contextual @*END_PHASERS not found"
    set $P5035, $P5041
  vivi_1015:
    set $P104, $P5035
  fallback13:
    set $P5032, $P104
    iter $P5034, $P104
  for_next16:
    unless $P5034, for_done18
    shift $P5043, $P5034
  for_redo17:
    .const 'Sub' $P5042 = 'cuid_2_1347081276.48305' 
    capture_lex $P5042
    $P5032 = $P5042($P5043)
    goto for_next16
  for_done18:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_2_1347081276.48305") :anon :lex :outer("cuid_3_1347081276.48305")
.annotate 'file', "src/safire.nqp"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "hll-config" :subid("cuid_4_1347081276.48305") :anon :lex :outer("cuid_1_1347081276.48305")
.annotate 'file', "src/safire.nqp"
.annotate 'line', 49
    .param pmc _lex_param_0 
    .lex "$config", _lex_param_0 
    box $P5001, "2012.09-220-g962ffbe"
    set _lex_param_0["version"], $P5001
    box $P5002, "2012-09-07T07:16:59Z"
    set _lex_param_0["build-date"], $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_6_1347081276.48305") :load :init
.annotate 'file', "src/safire.nqp"
    .const 'Sub' $P5001 = 'cuid_5_1347081276.48305' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347081276.48305" 
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
    $P5002 = $P5001."load_module"("src::safire::Grammar")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("src::safire::Actions")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("src::safire::Compiler")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPHLL")
    nqp_create_sc $P5001, "B868160944725B23692F86B78C4C49994A62349F-1347081276.52929"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/safire.nqp")
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
    push $P5003, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923"
    push $P5003, "src/safire/Grammar.pm"
    push $P5003, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897"
    push $P5003, "src/safire/Actions.pm"
    push $P5003, "4BAD02B21E35A525D855A2E4A154DD44B80A21DC-1347081274.91784"
    push $P5003, "src/safire/Compiler.pm"
    push $P5003, "209A97C1EC6909DF7E64A0778D59E946D8237859-1346829409.80434"
    push $P5003, "src/stage2/gen/NQPP6QRegex.pm"
    .const 'Sub' $P5004 = 'cuid_5_1347081276.48305' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAKAAAAkAAAAAcAAADIAAAA1gcAAA4AAAC2CAAAJgkAAAAAAAAmCQAAAAAAACYJAAAmCQAAAAAAAAUAAAAGAAAADgAAAAAAAAAQAAAAAAAAABMAAAAUAAAAKgAAACsAAAAwAAAAMQAAADkAAAA6AAAAOwAAADwAAAA9AAAAPgAAAD8AAABAAAAAAQAAAAAAAAABAAAANAEAAAEAAAAQAwAAAQAAAMYDAAABAAAApgQAAAEAAACGBQAAAQAAAEoGAAAAAAAAAQAAAAAAAAAAAAAACgALAAAAAgAAAAIAAAAAAAIAAAADAAAAAgAAAAAAAwAAAAQAAAACAAEAAAAZAAAABwAAAAIAAQAAAEMAAAAIAAAAAgABAAAAUAAAAAkAAAACAAEAAABWAAAACgAAAAIAAQAAAFoAAAALAAAAAgAAAAAABAAAAAwAAAACAAAAAAAFAAAADQAAAAIAAgAAAAAAAAAPAAAAAgAAAAAABgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAAHAAAAAAAAAAIAAAAKABcAAAASAAAAAgAEAAAAAQAAABUAAAACAAQAAAAGAAAAFgAAAAIABAAAAAoAAAAXAAAAAgAEAAAAJQAAABgAAAACAAQAAAAtAAAAGQAAAAIABAAAADEAAAAaAAAAAgAEAAAANQAAABsAAAACAAQAAAA5AAAAHAAAAAIABAAAADwAAAAdAAAAAgAEAAAAQAAAAB4AAAACAAQAAABFAAAAHwAAAAIABAAAAE0AAAAgAAAAAgAEAAAATwAAACEAAAACAAQAAABVAAAAIgAAAAIABAAAAFkAAAAjAAAAAgAEAAAAXQAAACQAAAACAAQAAABhAAAAJQAAAAIABAAAAGkAAAAmAAAAAgAEAAAAbAAAACcAAAACAAQAAABvAAAAKAAAAAIABAAAAHgAAAApAAAAAgAFAAAAJwAAACwAAAACAAUAAAA4AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAAgAAAAAAAAAAwAAAAoAAgAAAC0AAAACAAEAAAABAAAALgAAAAIAAAAAAAkAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAADAAAAAwAAAAAACgAAAAAAAAAEAAAACgAFAAAALwAAAAIABgAAAAEAAAAyAAAAAgAGAAAAPQAAACwAAAACAAYAAABfAAAAMwAAAAIABgAAANEAAAA0AAAAAgAGAAAAnQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAALAAAAAAAAAAUAAAAKAAUAAAA1AAAAAgAFAAAAAQAAABYAAAACAAUAAAAEAAAANgAAAAIABQAAAAwAAAA3AAAAAgAFAAAAGwAAADgAAAACAAUAAAAiAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAMAAAAAAAwAAAAAAAAABgAAAAoAAwAAAC8AAAACAAcAAAABAAAAMgAAAAIACAAAAAEAAAAsAAAAAgAJAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAYAAAADAAAAAAANAAAAAAAAAAkAAAAKAAMAAAAvAAAAAgAKAAAAAQAAADIAAAACAAoAAABRAAAALAAAAAIACgAAAIoAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAAAwAAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAQAAAAAAAAABAAAAEAAAAAAAAAAAAAAAAgAAABAAAAAAAAAAAAAAAAMAAAAQAAAAAAAAAAAAAAAEAAAAEAAAAAAAAAAAAAAABQAAABAAAAAAAAAAAwAAAAAAAAAQAAAAAQAAAAMAAAAAAAAAIAAAAAEAAAAAAAAABgAAADAAAAAAAAAAAwAAAAAAAAAwAAAAAQAAAAMAAAAAAAAAQAAAAAEAAAADAAAAAAAAAFAAAAABAAAAAwAAAAAAAABgAAAAAQAAABEAAAAHAAAAAAAKAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAADwAAAAcAAAAAAAoAAAAAAC4AAAAHAAAAAAAKAAAAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347081276.48305"
    nqp_get_sc_object $P5002, "B868160944725B23692F86B78C4C49994A62349F-1347081276.52929", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081276.48305"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347081276.48305"
    nqp_get_sc_object $P5002, "B868160944725B23692F86B78C4C49994A62349F-1347081276.52929", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081276.48305"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "B868160944725B23692F86B78C4C49994A62349F-1347081276.52929", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1347081276.48305") :anon :lex :outer("cuid_6_1347081276.48305")
.annotate 'file', "src/safire.nqp"
    new $P5001, 'ResizablePMCArray'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_7_1347081276.48305") :load
.annotate 'file', "src/safire.nqp"
    .const 'Sub' $P5001 = "cuid_1_1347081276.48305" 
    $P5002 = $P5001()
    .return ($P5002) 
.end