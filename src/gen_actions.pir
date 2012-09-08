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
.sub "" :subid("cuid_1_1347081274.12836") :anon :lex
.annotate 'file', "src/safire/Actions.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5014 = 'cuid_12_1347081274.12836' 
    capture_lex $P5014 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P5001, "$*CTXSAVE"
    set ctxsave, $P5001
    isnull $I5001, ctxsave
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if11_end13 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if11_end13:
    set $P5005, $P5003
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_12_1347081274.12836' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5013, _lex_param_0
    unless _lex_param_0 goto if13_end54 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5009, "ModuleLoader"
    getinterp $P5011
    set $P5010, $P5011["context"]
    $P5012 = $P5009."set_mainline_module"($P5010)
    set $P5013, $P5012
  if13_end54:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1347081274.12836") :anon :lex :outer("cuid_1_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 3
    .const 'Sub' $P5011 = 'cuid_2_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_3_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_4_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_5_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_6_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_7_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_8_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_9_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_10_1347081274.12836' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_11_1347081274.12836' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1347081274.12836' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1347081274.12836' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_4_1347081274.12836' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_5_1347081274.12836' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_6_1347081274.12836' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_7_1347081274.12836' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_8_1347081274.12836' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_9_1347081274.12836' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_10_1347081274.12836' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_11_1347081274.12836' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_2_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 5
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 6
    $P5001 = "&say"("enter TOP: ", _lex_param_1)
.annotate 'line', 7
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Block"]
    unless_null $P5002, fallback14
    nqp_get_sc_object $P5006, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5002, $P5006
  fallback14:
    unless_null _lex_param_1, fallback15
    nqp_get_sc_object $P5008, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5008
  fallback15:
    set $P5007, _lex_param_1["statement_list"]
    unless_null $P5007, fallback16
    nqp_get_sc_object $P5009, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5007, $P5009
  fallback16:
    $P5010 = $P5007."ast"()
    $P5011 = $P5002."new"($P5010, _lex_param_1 :named("node"))
    $P5012 = _lex_param_1."!make"($P5011)
.annotate 'line', 8
    $P5013 = "&say"("exit TOP: ", _lex_param_1)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "statement_list" :subid("cuid_3_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 11
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_13_1347081274.12836' 
    capture_lex $P5019 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P101, $P5001
.annotate 'line', 12
    $P5002 = "&say"("enter statement_list: ", _lex_param_1)
.annotate 'line', 13
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Stmts"]
    unless_null $P5003, fallback17
    nqp_get_sc_object $P5007, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5003, $P5007
  fallback17:
    $P5008 = $P5003."new"(_lex_param_1 :named("node"))
    set $P101, $P5008
    unless_null _lex_param_1, fallback18
    nqp_get_sc_object $P5013, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5013
  fallback18:
    set $P5012, _lex_param_1["statement"]
    unless_null $P5012, fallback19
    nqp_get_sc_object $P5014, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5012, $P5014
  fallback19:
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next20:
    unless $P5011, for_done22
    shift $P5016, $P5011
  for_redo21:
    .const 'Sub' $P5015 = 'cuid_13_1347081274.12836' 
    capture_lex $P5015
    $P5009 = $P5015($P5016)
    goto for_next20
  for_done22:
.annotate 'line', 15
    $P5017 = _lex_param_1."!make"($P101)
.annotate 'line', 16
    $P5018 = "&say"("exit statement_list: ", _lex_param_1)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_13_1347081274.12836") :anon :lex :outer("cuid_3_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 14
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_4_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 19
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 20
    $P5001 = "&say"("enter statement: ", _lex_param_1)
.annotate 'line', 21
    unless_null _lex_param_1, fallback25
    nqp_get_sc_object $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5003
  fallback25:
    set $P5002, _lex_param_1["statement_control"]
    unless_null $P5002, fallback26
    nqp_get_sc_object $P5004, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5002, $P5004
  fallback26:
    unless $P5002 goto if12_else23 
    unless_null _lex_param_1, fallback27
    nqp_get_sc_object $P5006, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5006
  fallback27:
    set $P5005, _lex_param_1["statement_control"]
    unless_null $P5005, fallback28
    nqp_get_sc_object $P5007, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5005, $P5007
  fallback28:
    $P5008 = $P5005."ast"()
    set $P5013, $P5008
    goto if12_end24
  if12_else23:
    unless_null _lex_param_1, fallback29
    nqp_get_sc_object $P5010, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5010
  fallback29:
    set $P5009, _lex_param_1["EXPR"]
    unless_null $P5009, fallback30
    nqp_get_sc_object $P5011, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5009, $P5011
  fallback30:
    $P5012 = $P5009."ast"()
    set $P5013, $P5012
  if12_end24:
    $P5014 = _lex_param_1."!make"($P5013)
.annotate 'line', 22
    $P5015 = "&say"("exit statement: ", _lex_param_1)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "statement_control:sym<say>" :subid("cuid_5_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 25
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_14_1347081274.12836' 
    capture_lex $P5019 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P101, $P5001
.annotate 'line', 26
    $P5002 = "&say"("enter statement_control: ", _lex_param_1)
.annotate 'line', 27
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback31
    nqp_get_sc_object $P5007, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5003, $P5007
  fallback31:
    $P5008 = $P5003."new"("say" :named("name"), "callmethod" :named("op"), _lex_param_1 :named("node"))
    set $P101, $P5008
    unless_null _lex_param_1, fallback32
    nqp_get_sc_object $P5013, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5013
  fallback32:
    set $P5012, _lex_param_1["EXPR"]
    unless_null $P5012, fallback33
    nqp_get_sc_object $P5014, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5012, $P5014
  fallback33:
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next34:
    unless $P5011, for_done36
    shift $P5016, $P5011
  for_redo35:
    .const 'Sub' $P5015 = 'cuid_14_1347081274.12836' 
    capture_lex $P5015
    $P5009 = $P5015($P5016)
    goto for_next34
  for_done36:
.annotate 'line', 29
    $P5017 = _lex_param_1."!make"($P101)
.annotate 'line', 30
    $P5018 = "&say"("exit statement_control: ", _lex_param_1)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1347081274.12836") :anon :lex :outer("cuid_5_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement_control:sym<print>" :subid("cuid_6_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 33
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_15_1347081274.12836' 
    capture_lex $P5017 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P101, $P5001
.annotate 'line', 34
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback37
    nqp_get_sc_object $P5006, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5002, $P5006
  fallback37:
    $P5007 = $P5002."new"("print" :named("name"), "callmethod" :named("op"), _lex_param_1 :named("node"))
    set $P101, $P5007
    unless_null _lex_param_1, fallback38
    nqp_get_sc_object $P5012, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5012
  fallback38:
    set $P5011, _lex_param_1["EXPR"]
    unless_null $P5011, fallback39
    nqp_get_sc_object $P5013, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5011, $P5013
  fallback39:
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next40:
    unless $P5010, for_done42
    shift $P5015, $P5010
  for_redo41:
    .const 'Sub' $P5014 = 'cuid_15_1347081274.12836' 
    capture_lex $P5014
    $P5008 = $P5014($P5015)
    goto for_next40
  for_done42:
.annotate 'line', 36
    $P5016 = _lex_param_1."!make"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_15_1347081274.12836") :anon :lex :outer("cuid_6_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 35
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<integer>" :subid("cuid_7_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback43
    nqp_get_sc_object $P5002, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5002
  fallback43:
    set $P5001, _lex_param_1["integer"]
    unless_null $P5001, fallback44
    nqp_get_sc_object $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5001, $P5003
  fallback44:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<quote>" :subid("cuid_8_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 40
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 41
    $P5001 = "&say"("enter quote: ", _lex_param_1)
.annotate 'line', 42
    unless_null _lex_param_1, fallback45
    nqp_get_sc_object $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5003
  fallback45:
    set $P5002, _lex_param_1["quote_EXPR"]
    unless_null $P5002, fallback46
    nqp_get_sc_object $P5004, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5002, $P5004
  fallback46:
    $P5005 = $P5002."ast"()
    $P5006 = _lex_param_1."!make"($P5005)
.annotate 'line', 43
    $P5007 = "&say"("exit quote: ", _lex_param_1)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote:sym<'>" :subid("cuid_9_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback47
    nqp_get_sc_object $P5002, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5002
  fallback47:
    set $P5001, _lex_param_1["quote_EXPR"]
    unless_null $P5001, fallback48
    nqp_get_sc_object $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5001, $P5003
  fallback48:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote:sym<\">" :subid("cuid_10_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 48
    $P5001 = "&say"("enter quote:sym<\">: ", _lex_param_1)
.annotate 'line', 49
    unless_null _lex_param_1, fallback49
    nqp_get_sc_object $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5003
  fallback49:
    set $P5002, _lex_param_1["quote_EXPR"]
    unless_null $P5002, fallback50
    nqp_get_sc_object $P5004, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5002, $P5004
  fallback50:
    $P5005 = $P5002."ast"()
    $P5006 = _lex_param_1."!make"($P5005)
.annotate 'line', 50
    $P5007 = "&say"("exit quote:sym<\">: ", _lex_param_1)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix:sym<( )>" :subid("cuid_11_1347081274.12836") :anon :lex :outer("cuid_12_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
.annotate 'line', 53
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback51
    nqp_get_sc_object $P5002, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set _lex_param_1, $P5002
  fallback51:
    set $P5001, _lex_param_1["EXPR"]
    unless_null $P5001, fallback52
    nqp_get_sc_object $P5003, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5001, $P5003
  fallback52:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_17_1347081274.12836") :load :init
.annotate 'file', "src/safire/Actions.pm"
    .const 'Sub' $P5001 = 'cuid_16_1347081274.12836' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347081274.12836" 
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
    nqp_create_sc $P5001, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/safire/Actions.pm")
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
    push $P5003, "Str"
    push $P5003, "Numeric"
    push $P5003, "Int"
    push $P5003, "at_pos"
    push $P5003, "at_key"
    push $P5003, "defined"
    push $P5003, "ACCEPTS"
    push $P5003, "isa"
    push $P5003, "__dump"
    push $P5003, "ints_to_string"
    push $P5003, "4A5BD9A38C6E193C4CF429B1C28A4EC783872DAB-1346829367.55334"
    push $P5003, "src/stage2/gen/NQPHLL.pm"
    push $P5003, "CTXSAVE"
    push $P5003, "SET_BLOCK_OUTER_CTX"
    push $P5003, "EXPR"
    push $P5003, "term:sym<circumfix>"
    push $P5003, "termish"
    push $P5003, "nullterm"
    push $P5003, "nullterm_alt"
    push $P5003, "integer"
    push $P5003, "dec_number"
    push $P5003, "decint"
    push $P5003, "hexint"
    push $P5003, "octint"
    push $P5003, "binint"
    push $P5003, "quote_EXPR"
    push $P5003, "quote_delimited"
    push $P5003, "quote_atom"
    push $P5003, "quote_escape:sym<backslash>"
    push $P5003, "quote_escape:sym<stopper>"
    push $P5003, "quote_escape:sym<bs>"
    push $P5003, "quote_escape:sym<nl>"
    push $P5003, "quote_escape:sym<cr>"
    push $P5003, "quote_escape:sym<tab>"
    push $P5003, "quote_escape:sym<ff>"
    push $P5003, "quote_escape:sym<esc>"
    push $P5003, "quote_escape:sym<hex>"
    push $P5003, "quote_escape:sym<oct>"
    push $P5003, "quote_escape:sym<chr>"
    push $P5003, "quote_escape:sym<0>"
    push $P5003, "quote_escape:sym<misc>"
    push $P5003, "charname"
    push $P5003, "charnames"
    push $P5003, "charspec"
    push $P5003, "TOP"
    push $P5003, "statement_list"
    push $P5003, "statement"
    push $P5003, "statement_control:sym<say>"
    push $P5003, "statement_control:sym<print>"
    push $P5003, "term:sym<integer>"
    push $P5003, "term:sym<quote>"
    push $P5003, "quote:sym<'>"
    push $P5003, "quote:sym<\">"
    push $P5003, "circumfix:sym<( )>"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "2307B075AE989FBFD7AC085D0EE8506F81515FF7-1346829344.08174"
    push $P5003, "src/stage2/gen/nqp-mo.pm"
    push $P5003, "safire::Actions"
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
    .const 'Sub' $P5004 = 'cuid_16_1347081274.12836' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "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AABnAAAAAgAHAAAAeAAAAGgAAAACAAgAAAAnAAAAawAAAAIACAAAADgAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAADQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAANAAAAAwAAAAAAFAAAAAAAAAAOAAAACgACAAAAbAAAAAIAAQAAAAEAAABtAAAAAgAAAAAAFQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAOAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAA4AAAADAAAAAAAWAAAAAAAAAA8AAAAKAAUAAABuAAAAAgAEAAAAAQAAAG8AAAACAAQAAAA9AAAAawAAAAIABAAAAF8AAABwAAAAAgAEAAAA0QAAAHEAAAACAAQAAACdAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAA8AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAADwAAAAMAAAAAABcAAAAAAAAAEAAAAAoABQAAAHIAAAACAAgAAAABAAAAVQAAAAIACAAAAAQAAABzAAAAAgAIAAAADAAAAHQAAAACAAgAAAAbAAAAdQAAAAIACAAAACIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAEAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAQAAAAAwAAAAAAGAAAAAAAAAARAAAACgABAAAAbwAAAAIAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAEQAAAAMAAAAAABkAAAAAAAAAFQAAAAoAAwAAAG4AAAACAAkAAAABAAAAbwAAAAIACQAAAFEAAABrAAAAAgAJAAAAigAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAVAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABUAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAwAAAAUAAAAAAAAAAQAAAAMAAAAFAAAAEAAAAAEAAAADAAAABQAAACAAAAABAAAAAwAAAAUAAAAwAAAAAQAAAAMAAAAFAAAAQAAAAAEAAAADAAAABQAAAFAAAAABAAAAAwAAAAUAAABgAAAAAQAAAAMAAAAFAAAAcAAAAAEAAAADAAAABQAAAIAAAAABAAAAAwAAAAUAAACQAAAAAQAAAAUAAAAAAAAAoAAAAAEAAAAAAAAAAgAAALAAAAAAAAAAAAAAAAMAAACwAAAAAAAAAAAAAAAEAAAAsAAAAAAAAAAAAAAABQAAALAAAAAAAAAAAAAAAAYAAACwAAAAAAAAAAYAAAAGAAAAsAAAAAEAAAAFAAAAAAAAAEQCAAABAAAABQAAAAAAAABUAgAAAQAAAAAAAAAHAAAAZAIAAAAAAAAFAAAAAAAAAGQCAAABAAAABQAAAAAAAAB0AgAAAQAAAAUAAAAAAAAAhAIAAAEAAAAFAAAAAAAAAJQCAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAE0AAAAHAAAAAAAKAAAAAAAGAFAAAAAKAAAAAAAKAAoAAABCAAAAAgAAAAAAAgAAAEMAAAACAAAAAAADAAAARAAAAAIAAAAAAAQAAABFAAAAAgAAAAAABQAAAEYAAAACAAAAAAAGAAAARwAAAAIAAAAAAAcAAABIAAAAAgAAAAAACAAAAEkAAAACAAAAAAAJAAAASgAAAAIAAAAAAAoAAABLAAAAAgAAAAAACwAAAAcACgAAAAIAAAAAAAIAAAACAAAAAAADAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAAHAAAAAAAHAAEAAAACAAQAAAA9AAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAAQAAAAIABAAAAD0AAAACAAMAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAAAAAABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAPAAAABwAAAAAACgAAAAAAbQAAAAcAAAAAAAoAAAAAAA==", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347081274.12836"
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081274.12836"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347081274.12836"
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081274.12836"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 2
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 3
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1347081274.12836" 
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 11
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_12_1347081274.12836"
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1347081274.12836"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1347081274.12836"
    nqp_get_sc_object $P5002, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1347081274.12836"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "E1764C104AE926CA9177196569850085C44D3487-1347081274.17897", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_16_1347081274.12836") :anon :lex :outer("cuid_17_1347081274.12836")
.annotate 'file', "src/safire/Actions.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1347081274.12836" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1347081274.12836" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_18_1347081274.12836") :load
.annotate 'file', "src/safire/Actions.pm"
    .const 'Sub' $P5001 = "cuid_1_1347081274.12836" 
    $P5002 = $P5001()
    .return ($P5002) 
.end