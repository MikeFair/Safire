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
.sub "" :subid("cuid_1_1347081275.17332") :anon :lex
.annotate 'file', "src/safire/Grammar.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5014 = 'cuid_19_1347081275.17332' 
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
    .const 'Sub' $P5007 = 'cuid_19_1347081275.17332' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5013, _lex_param_0
    unless _lex_param_0 goto if100_end247 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5009, "ModuleLoader"
    getinterp $P5011
    set $P5010, $P5011["context"]
    $P5012 = $P5009."set_mainline_module"($P5010)
    set $P5013, $P5012
  if100_end247:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_19_1347081275.17332") :anon :lex :outer("cuid_1_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 9
    .const 'Sub' $P5037 = 'cuid_2_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_3_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_4_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_5_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_6_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_7_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_8_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_9_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_10_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_11_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_12_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_13_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_14_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_15_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_16_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_17_1347081275.17332' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_18_1347081275.17332' 
    capture_lex $P5037 
    .lex "$cursor_class", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    nqp_get_sc_object $P5001, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P101, $P5001
.annotate 'line', 50
.annotate 'line', 51
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "safire"
    get_who $P5003, $P5004
    set $P5002, $P5003["Grammar"]
    unless_null $P5002, fallback14
    nqp_get_sc_object $P5006, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5002, $P5006
  fallback14:
    $P5007 = $P5002."O"(":prec<u>, :assoc<left>", "%multiplicative")
.annotate 'line', 52
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "safire"
    get_who $P5009, $P5010
    set $P5008, $P5009["Grammar"]
    unless_null $P5008, fallback15
    nqp_get_sc_object $P5012, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5008, $P5012
  fallback15:
    $P5013 = $P5008."O"(":prec<t>, :assoc<left>", "%additive")
.annotate 'line', 9
    get_who $P5015, $P102
    set $P5014, $P5015["NQPCursor"]
    unless_null $P5014, fallback16
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["NQPCursor"]
    unless_null $P5016, vivi_1217
    nqp_get_sc_object $P5019, "E8B99BCDBBE88B0FE7D774EA5659CB23E2688D5A-1346829352.5238", 7
    set $P5016, $P5019
  vivi_1217:
    set $P5014, $P5016
  fallback16:
    set $P101, $P5014
    .const 'Sub' $P5020 = 'cuid_2_1347081275.17332' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_3_1347081275.17332' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_4_1347081275.17332' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_5_1347081275.17332' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_6_1347081275.17332' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_7_1347081275.17332' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_8_1347081275.17332' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_9_1347081275.17332' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_10_1347081275.17332' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_11_1347081275.17332' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_12_1347081275.17332' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_13_1347081275.17332' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_14_1347081275.17332' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_15_1347081275.17332' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_16_1347081275.17332' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_17_1347081275.17332' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_18_1347081275.17332' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_2_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 13
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx13_tgt
    .local int rx13_pos
    .local int rx13_off
    .local int rx13_eos
    .local int rx13_rep
    .local pmc rx13_cur
    .local pmc rx13_curclass
    .local pmc rx13_bstack
    .local pmc rx13_cstack
    (rx13_cur, rx13_tgt, rx13_pos, rx13_curclass, rx13_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx13_cur
    length rx13_eos, rx13_tgt
    eq $I19, 1, rx13_restart20
    gt rx13_pos, rx13_eos, rx13_fail21
    repr_get_attr_int $I11, self, rx13_curclass, "$!from"
    ne $I11, -1, rxscan14_done27
    goto rxscan14_scan26
  rxscan14_loop25:
    inc rx13_pos
    gt rx13_pos, rx13_eos, rx13_fail21
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!from", rx13_pos
  rxscan14_scan26:
    nqp_rxmark rx13_bstack, rxscan14_loop25, rx13_pos, 0
  rxscan14_done27:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."statement_control"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail21
    nqp_rxmark rx13_bstack, rxsubrule15_pass28, -1, 0
  rxsubrule15_pass28:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "statement_control")
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
  alt16_030:
    nqp_rxmark rx13_bstack, alt16_132, rx13_pos, 0
    lt rx13_pos, rx13_eos, rx13_fail21
    goto alt16_end29
  alt16_132:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."panic"("Syntax error")
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail21
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
  alt16_end29:
    rx13_cur."!cursor_pass"(rx13_pos, "TOP", 'backtrack'=>1)
    .return (rx13_cur)
  rx13_restart20:
    repr_get_attr_obj rx13_cstack, rx13_cur, rx13_curclass, "$!cstack"
  rx13_fail21:
    unless rx13_bstack, rx13_done19
    pop $I19, rx13_bstack
    if_null rx13_cstack, rx13_cstack_done24
    unless rx13_cstack, rx13_cstack_done24
    dec $I19
    set $P11, rx13_cstack[$I19]
  rx13_cstack_done24:
    pop rx13_rep, rx13_bstack
    pop rx13_pos, rx13_bstack
    pop $I19, rx13_bstack
    lt rx13_pos, -1, rx13_done19
    lt rx13_pos, 0, rx13_fail21
    eq $I19, 0, rx13_fail21
    nqp_islist $I20, rx13_cstack
    unless $I20, rx13_jump22
    elements $I18, rx13_bstack
    le $I18, 0, rx13_cut23
    dec $I18
    set $I18, rx13_bstack[$I18]
  rx13_cut23:
    assign rx13_cstack, $I18
  rx13_jump22:
    jump $I19
  rx13_done19:
    rx13_cur."!cursor_fail"()
    .return (rx13_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_2_1347081275.17332_caps" :subid("cuid_memo_1_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["statement_control"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_2_1347081275.17332_nfa" :subid("cuid_memo_2_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "statement_control"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 0
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_3_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 21
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx19_tgt
    .local int rx19_pos
    .local int rx19_off
    .local int rx19_eos
    .local int rx19_rep
    .local pmc rx19_cur
    .local pmc rx19_curclass
    .local pmc rx19_bstack
    .local pmc rx19_cstack
    (rx19_cur, rx19_tgt, rx19_pos, rx19_curclass, rx19_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx19_cur
    length rx19_eos, rx19_tgt
    eq $I19, 1, rx19_restart36
    gt rx19_pos, rx19_eos, rx19_fail37
    repr_get_attr_int $I11, self, rx19_curclass, "$!from"
    ne $I11, -1, rxscan20_done43
    goto rxscan20_scan42
  rxscan20_loop41:
    inc rx19_pos
    gt rx19_pos, rx19_eos, rx19_fail37
    repr_bind_attr_int rx19_cur, rx19_curclass, "$!from", rx19_pos
  rxscan20_scan42:
    nqp_rxmark rx19_bstack, rxscan20_loop41, rx19_pos, 0
  rxscan20_done43:
    repr_bind_attr_int rx19_cur, rx19_curclass, "$!pos", rx19_pos
    $P11 = rx19_cur."ww"()
    repr_get_attr_int $I11, $P11, rx19_curclass, "$!pos"
    ge $I11, 0, rx19_fail37
    nqp_rxmark rx19_bstack, rxquantr21_done45, rx19_pos, 0
  rxquantr21_loop44:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt22_047
    nqp_push_label $P11, alt22_152
    nqp_push_label $P11, alt22_255
    nqp_rxmark rx19_bstack, alt22_end46, -1, 0
    rx19_cur."!alt"(rx19_pos, "alt_nfa__1_1347081275.51494", $P11)
    goto rx19_fail37
  alt22_047:
    add $I11, rx19_pos, 1
    gt $I11, rx19_eos, rx19_fail37
    substr $S10, rx19_tgt, rx19_pos, 1
    ne $S10, ucs4:"#", rx19_fail37
    add rx19_pos, 1
    nqp_rxmark rx19_bstack, rxquantr23_done49, rx19_pos, 0
  rxquantr23_loop48:
    ge rx19_pos, rx19_eos, rx19_fail37
    is_cclass $I11, .CCLASS_NEWLINE, rx19_tgt, rx19_pos
    if $I11, rx19_fail37
    add rx19_pos, 1
    nqp_rxpeek $I19, rx19_bstack, rxquantr23_done49
    inc $I19
    inc $I19
    set rx19_rep, rx19_bstack[$I19]
    nqp_rxcommit rx19_bstack, rxquantr23_done49
    inc rx19_rep
    nqp_rxmark rx19_bstack, rxquantr23_done49, rx19_pos, rx19_rep
    goto rxquantr23_loop48
  rxquantr23_done49:
    nqp_rxmark rx19_bstack, rxquantr24_done51, rx19_pos, 0
  rxquantr24_loop50:
    ge rx19_pos, rx19_eos, rx19_fail37
    is_cclass $I11, .CCLASS_NEWLINE, rx19_tgt, rx19_pos
    unless $I11, rx19_fail37
    substr $S10, rx19_tgt, rx19_pos, 2
    iseq $I11, $S10, "\r\n"
    add rx19_pos, $I11
    add rx19_pos, 1
    nqp_rxpeek $I19, rx19_bstack, rxquantr24_done51
    inc $I19
    inc $I19
    set rx19_rep, rx19_bstack[$I19]
    nqp_rxcommit rx19_bstack, rxquantr24_done51
    inc rx19_rep
  rxquantr24_done51:
    goto alt22_end46
  alt22_152:
    nqp_rxmark rx19_bstack, rxquantr25_done54, -1, 0
  rxquantr25_loop53:
    ge rx19_pos, rx19_eos, rx19_fail37
    is_cclass $I11, .CCLASS_WHITESPACE, rx19_tgt, rx19_pos
    unless $I11, rx19_fail37
    add rx19_pos, 1
    nqp_rxpeek $I19, rx19_bstack, rxquantr25_done54
    inc $I19
    inc $I19
    set rx19_rep, rx19_bstack[$I19]
    nqp_rxcommit rx19_bstack, rxquantr25_done54
    inc rx19_rep
    nqp_rxmark rx19_bstack, rxquantr25_done54, rx19_pos, rx19_rep
    goto rxquantr25_loop53
  rxquantr25_done54:
    goto alt22_end46
  alt22_255:
    add $I11, rx19_pos, 1
    gt $I11, rx19_eos, rx19_fail37
    substr $S10, rx19_tgt, rx19_pos, 1
    ne $S10, ucs4:"\\", rx19_fail37
    add rx19_pos, 1
    ge rx19_pos, rx19_eos, rx19_fail37
    is_cclass $I11, .CCLASS_NEWLINE, rx19_tgt, rx19_pos
    unless $I11, rx19_fail37
    substr $S10, rx19_tgt, rx19_pos, 2
    iseq $I11, $S10, "\r\n"
    add rx19_pos, $I11
    add rx19_pos, 1
    goto alt22_end46
  alt22_end46:
    nqp_rxpeek $I19, rx19_bstack, rxquantr21_done45
    inc $I19
    inc $I19
    set rx19_rep, rx19_bstack[$I19]
    nqp_rxcommit rx19_bstack, rxquantr21_done45
    inc rx19_rep
    nqp_rxmark rx19_bstack, rxquantr21_done45, rx19_pos, rx19_rep
    goto rxquantr21_loop44
  rxquantr21_done45:
    rx19_cur."!cursor_pass"(rx19_pos, "ws", 'backtrack'=>1)
    .return (rx19_cur)
  rx19_restart36:
    repr_get_attr_obj rx19_cstack, rx19_cur, rx19_curclass, "$!cstack"
  rx19_fail37:
    unless rx19_bstack, rx19_done35
    pop $I19, rx19_bstack
    if_null rx19_cstack, rx19_cstack_done40
    unless rx19_cstack, rx19_cstack_done40
    dec $I19
    set $P11, rx19_cstack[$I19]
  rx19_cstack_done40:
    pop rx19_rep, rx19_bstack
    pop rx19_pos, rx19_bstack
    pop $I19, rx19_bstack
    lt rx19_pos, -1, rx19_done35
    lt rx19_pos, 0, rx19_fail37
    eq $I19, 0, rx19_fail37
    nqp_islist $I20, rx19_cstack
    unless $I20, rx19_jump38
    elements $I18, rx19_bstack
    le $I18, 0, rx19_cut39
    dec $I18
    set $I18, rx19_bstack[$I18]
  rx19_cut39:
    assign rx19_cstack, $I18
  rx19_jump38:
    jump $I19
  rx19_done35:
    rx19_cur."!cursor_fail"()
    .return (rx19_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1347081275.17332_caps" :subid("cuid_memo_3_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1347081275.17332_alt_nfa__1_1347081275.51494" :subid("cuid_memo_4_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 35
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 5
    push $P5008, $P5009
    box $P5010, 4096
    push $P5008, $P5010
    box $P5011, 2
    push $P5008, $P5011
    box $P5012, 1
    push $P5008, $P5012
    box $P5013, 0
    push $P5008, $P5013
    box $P5014, 3
    push $P5008, $P5014
    push $P5002, $P5008
    new $P5015, 'ResizablePMCArray'
    box $P5016, 4
    push $P5015, $P5016
    box $P5017, 4096
    push $P5015, $P5017
    box $P5018, 0
    push $P5015, $P5018
    box $P5019, 1
    push $P5015, $P5019
    box $P5020, 0
    push $P5015, $P5020
    box $P5021, 0
    push $P5015, $P5021
    push $P5002, $P5015
    push $P5001, $P5002
    new $P5022, 'ResizablePMCArray'
    new $P5023, 'ResizablePMCArray'
    push $P5022, $P5023
    new $P5024, 'ResizablePMCArray'
    box $P5025, 1
    push $P5024, $P5025
    box $P5026, 0
    push $P5024, $P5026
    box $P5027, 2
    push $P5024, $P5027
    push $P5022, $P5024
    new $P5028, 'ResizablePMCArray'
    box $P5029, 4
    push $P5028, $P5029
    box $P5030, 32
    push $P5028, $P5030
    box $P5031, 3
    push $P5028, $P5031
    push $P5022, $P5028
    new $P5032, 'ResizablePMCArray'
    box $P5033, 1
    push $P5032, $P5033
    box $P5034, 0
    push $P5032, $P5034
    box $P5035, 2
    push $P5032, $P5035
    box $P5036, 1
    push $P5032, $P5036
    box $P5037, 0
    push $P5032, $P5037
    box $P5038, 0
    push $P5032, $P5038
    push $P5022, $P5032
    push $P5001, $P5022
    new $P5039, 'ResizablePMCArray'
    new $P5040, 'ResizablePMCArray'
    push $P5039, $P5040
    new $P5041, 'ResizablePMCArray'
    box $P5042, 2
    push $P5041, $P5042
    box $P5043, 92
    push $P5041, $P5043
    box $P5044, 2
    push $P5041, $P5044
    push $P5039, $P5041
    new $P5045, 'ResizablePMCArray'
    box $P5046, 4
    push $P5045, $P5046
    box $P5047, 4096
    push $P5045, $P5047
    box $P5048, 0
    push $P5045, $P5048
    push $P5039, $P5045
    push $P5001, $P5039
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "statement_list" :subid("cuid_4_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    .local pmc rx26_curclass
    .local pmc rx26_bstack
    .local pmc rx26_cstack
    (rx26_cur, rx26_tgt, rx26_pos, rx26_curclass, rx26_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx26_cur
    length rx26_eos, rx26_tgt
    eq $I19, 1, rx26_restart58
    gt rx26_pos, rx26_eos, rx26_fail59
    repr_get_attr_int $I11, self, rx26_curclass, "$!from"
    ne $I11, -1, rxscan27_done65
    goto rxscan27_scan64
  rxscan27_loop63:
    inc rx26_pos
    gt rx26_pos, rx26_eos, rx26_fail59
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!from", rx26_pos
  rxscan27_scan64:
    nqp_rxmark rx26_bstack, rxscan27_loop63, rx26_pos, 0
  rxscan27_done65:
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt29_068
    nqp_push_label $P11, alt29_172
    nqp_rxmark rx26_bstack, alt29_end67, -1, 0
    rx26_cur."!alt"(rx26_pos, "alt_nfa__2_1347081275.53725", $P11)
    goto rx26_fail59
  alt29_068:
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."statement"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    nqp_rxmark rx26_bstack, rxsubrule31_pass70, -1, 0
  rxsubrule31_pass70:
    rx26_cstack = rx26_cur."!cursor_capture"($P11, "statement")
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    goto alt29_end67
  alt29_172:
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    goto alt29_end67
  alt29_end67:
    nqp_rxcommit rx26_bstack, alt29_end67
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."statement_list"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    nqp_rxmark rx26_bstack, rxsubrule37_pass77, -1, 0
  rxsubrule37_pass77:
    rx26_cstack = rx26_cur."!cursor_capture"($P11, "statement_list")
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail59
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    rx26_cur."!cursor_pass"(rx26_pos, "statement_list", 'backtrack'=>1)
    .return (rx26_cur)
  rx26_restart58:
    repr_get_attr_obj rx26_cstack, rx26_cur, rx26_curclass, "$!cstack"
  rx26_fail59:
    unless rx26_bstack, rx26_done57
    pop $I19, rx26_bstack
    if_null rx26_cstack, rx26_cstack_done62
    unless rx26_cstack, rx26_cstack_done62
    dec $I19
    set $P11, rx26_cstack[$I19]
  rx26_cstack_done62:
    pop rx26_rep, rx26_bstack
    pop rx26_pos, rx26_bstack
    pop $I19, rx26_bstack
    lt rx26_pos, -1, rx26_done57
    lt rx26_pos, 0, rx26_fail59
    eq $I19, 0, rx26_fail59
    nqp_islist $I20, rx26_cstack
    unless $I20, rx26_jump60
    elements $I18, rx26_bstack
    le $I18, 0, rx26_cut61
    dec $I18
    set $I18, rx26_bstack[$I18]
  rx26_cut61:
    assign rx26_cstack, $I18
  rx26_jump60:
    jump $I19
  rx26_done57:
    rx26_cur."!cursor_fail"()
    .return (rx26_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1347081275.17332_caps" :subid("cuid_memo_5_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["statement"], $P5002
    box $P5003, 0
    set $P5001["statement_list"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1347081275.17332_alt_nfa__2_1347081275.53725" :subid("cuid_memo_6_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 0
    push $P5004, $P5005
    box $P5006, 0
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    box $P5008, 0
    push $P5004, $P5008
    box $P5009, 0
    push $P5004, $P5009
    box $P5010, 0
    push $P5004, $P5010
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5011, 'ResizablePMCArray'
    new $P5012, 'ResizablePMCArray'
    push $P5011, $P5012
    new $P5013, 'ResizablePMCArray'
    box $P5014, 0
    push $P5013, $P5014
    box $P5015, 0
    push $P5013, $P5015
    box $P5016, 0
    push $P5013, $P5016
    box $P5017, 0
    push $P5013, $P5017
    box $P5018, 0
    push $P5013, $P5018
    box $P5019, 0
    push $P5013, $P5019
    push $P5011, $P5013
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_5_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 30
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx39_tgt
    .local int rx39_pos
    .local int rx39_off
    .local int rx39_eos
    .local int rx39_rep
    .local pmc rx39_cur
    .local pmc rx39_curclass
    .local pmc rx39_bstack
    .local pmc rx39_cstack
    (rx39_cur, rx39_tgt, rx39_pos, rx39_curclass, rx39_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx39_cur
    length rx39_eos, rx39_tgt
    eq $I19, 1, rx39_restart81
    gt rx39_pos, rx39_eos, rx39_fail82
    repr_get_attr_int $I11, self, rx39_curclass, "$!from"
    ne $I11, -1, rxscan40_done88
    goto rxscan40_scan87
  rxscan40_loop86:
    inc rx39_pos
    gt rx39_pos, rx39_eos, rx39_fail82
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!from", rx39_pos
  rxscan40_scan87:
    nqp_rxmark rx39_bstack, rxscan40_loop86, rx39_pos, 0
  rxscan40_done88:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt41_090
    nqp_push_label $P11, alt41_194
    nqp_rxmark rx39_bstack, alt41_end89, -1, 0
    rx39_cur."!alt"(rx39_pos, "alt_nfa__3_1347081275.55176", $P11)
    goto rx39_fail82
  alt41_090:
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."ws"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail82
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."statement_control"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail82
    nqp_rxmark rx39_bstack, rxsubrule43_pass92, -1, 0
  rxsubrule43_pass92:
    rx39_cstack = rx39_cur."!cursor_capture"($P11, "statement_control")
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."ws"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail82
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    goto alt41_end89
  alt41_194:
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."ws"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail82
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."EXPR"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail82
    nqp_rxmark rx39_bstack, rxsubrule46_pass96, -1, 0
  rxsubrule46_pass96:
    rx39_cstack = rx39_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."ws"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail82
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    goto alt41_end89
  alt41_end89:
    rx39_cur."!cursor_pass"(rx39_pos, "statement", 'backtrack'=>1)
    .return (rx39_cur)
  rx39_restart81:
    repr_get_attr_obj rx39_cstack, rx39_cur, rx39_curclass, "$!cstack"
  rx39_fail82:
    unless rx39_bstack, rx39_done80
    pop $I19, rx39_bstack
    if_null rx39_cstack, rx39_cstack_done85
    unless rx39_cstack, rx39_cstack_done85
    dec $I19
    set $P11, rx39_cstack[$I19]
  rx39_cstack_done85:
    pop rx39_rep, rx39_bstack
    pop rx39_pos, rx39_bstack
    pop $I19, rx39_bstack
    lt rx39_pos, -1, rx39_done80
    lt rx39_pos, 0, rx39_fail82
    eq $I19, 0, rx39_fail82
    nqp_islist $I20, rx39_cstack
    unless $I20, rx39_jump83
    elements $I18, rx39_bstack
    le $I18, 0, rx39_cut84
    dec $I18
    set $I18, rx39_bstack[$I18]
  rx39_cut84:
    assign rx39_cstack, $I18
  rx39_jump83:
    jump $I19
  rx39_done80:
    rx39_cur."!cursor_fail"()
    .return (rx39_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_5_1347081275.17332_caps" :subid("cuid_memo_7_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["statement_control"], $P5002
    box $P5003, 0
    set $P5001["EXPR"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_5_1347081275.17332_alt_nfa__3_1347081275.55176" :subid("cuid_memo_8_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 0
    push $P5004, $P5005
    box $P5006, 0
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    box $P5008, 0
    push $P5004, $P5008
    box $P5009, 0
    push $P5004, $P5009
    box $P5010, 0
    push $P5004, $P5010
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5011, 'ResizablePMCArray'
    new $P5012, 'ResizablePMCArray'
    push $P5011, $P5012
    new $P5013, 'ResizablePMCArray'
    box $P5014, 0
    push $P5013, $P5014
    box $P5015, 0
    push $P5013, $P5015
    box $P5016, 0
    push $P5013, $P5016
    box $P5017, 0
    push $P5013, $P5017
    box $P5018, 0
    push $P5013, $P5018
    box $P5019, 0
    push $P5013, $P5019
    push $P5011, $P5013
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "statement_control" :subid("cuid_6_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 35
    .param pmc self 
    $P5001 = self."!protoregex"("statement_control")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "statement_control:sym<say>" :subid("cuid_7_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 36
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    .local pmc rx48_curclass
    .local pmc rx48_bstack
    .local pmc rx48_cstack
    (rx48_cur, rx48_tgt, rx48_pos, rx48_curclass, rx48_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx48_cur
    length rx48_eos, rx48_tgt
    eq $I19, 1, rx48_restart100
    gt rx48_pos, rx48_eos, rx48_fail101
    repr_get_attr_int $I11, self, rx48_curclass, "$!from"
    ne $I11, -1, rxscan49_done107
    goto rxscan49_scan106
  rxscan49_loop105:
    inc rx48_pos
    gt rx48_pos, rx48_eos, rx48_fail101
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!from", rx48_pos
  rxscan49_scan106:
    nqp_rxmark rx48_bstack, rxscan49_loop105, rx48_pos, 0
  rxscan49_done107:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."ws"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail101
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    nqp_rxmark rx48_bstack, rxcap51_fail110, rx48_pos, 0
    add $I11, rx48_pos, 3
    gt $I11, rx48_eos, rx48_fail101
    substr $S10, rx48_tgt, rx48_pos, 3
    ne $S10, ucs4:"say", rx48_fail101
    add rx48_pos, 3
    nqp_rxpeek $I19, rx48_bstack, rxcap51_fail110
    inc $I19
    set $I11, rx48_bstack[$I19]
    $P11 = rx48_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx48_pos)
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "sym")
    goto rxcap51_done109
  rxcap51_fail110:
    goto rx48_fail101
  rxcap51_done109:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."ws"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail101
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    nqp_rxmark rx48_bstack, rxquantr53_done113, rx48_pos, 0
  rxquantr53_loop112:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."ws"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail101
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."EXPR"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail101
    nqp_rxmark rx48_bstack, rxsubrule55_pass115, -1, 0
  rxsubrule55_pass115:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."ws"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail101
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    nqp_rxpeek $I19, rx48_bstack, rxquantr53_done113
    inc $I19
    inc $I19
    set rx48_rep, rx48_bstack[$I19]
    nqp_rxcommit rx48_bstack, rxquantr53_done113
    inc rx48_rep
    nqp_rxmark rx48_bstack, rxquantr53_done113, rx48_pos, rx48_rep
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail101
    substr $S10, rx48_tgt, rx48_pos, 1
    ne $S10, ucs4:",", rx48_fail101
    add rx48_pos, 1
    goto rxquantr53_loop112
  rxquantr53_done113:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."ws"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail101
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    rx48_cur."!cursor_pass"(rx48_pos, "statement_control:sym<say>", 'backtrack'=>1)
    .return (rx48_cur)
  rx48_restart100:
    repr_get_attr_obj rx48_cstack, rx48_cur, rx48_curclass, "$!cstack"
  rx48_fail101:
    unless rx48_bstack, rx48_done99
    pop $I19, rx48_bstack
    if_null rx48_cstack, rx48_cstack_done104
    unless rx48_cstack, rx48_cstack_done104
    dec $I19
    set $P11, rx48_cstack[$I19]
  rx48_cstack_done104:
    pop rx48_rep, rx48_bstack
    pop rx48_pos, rx48_bstack
    pop $I19, rx48_bstack
    lt rx48_pos, -1, rx48_done99
    lt rx48_pos, 0, rx48_fail101
    eq $I19, 0, rx48_fail101
    nqp_islist $I20, rx48_cstack
    unless $I20, rx48_jump102
    elements $I18, rx48_bstack
    le $I18, 0, rx48_cut103
    dec $I18
    set $I18, rx48_bstack[$I18]
  rx48_cut103:
    assign rx48_cstack, $I18
  rx48_jump102:
    jump $I19
  rx48_done99:
    rx48_cur."!cursor_fail"()
    .return (rx48_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_7_1347081275.17332_caps" :subid("cuid_memo_9_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 2
    set $P5001["EXPR"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "statement_control:sym<print>" :subid("cuid_8_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 37
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    .local pmc rx58_curclass
    .local pmc rx58_bstack
    .local pmc rx58_cstack
    (rx58_cur, rx58_tgt, rx58_pos, rx58_curclass, rx58_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx58_cur
    length rx58_eos, rx58_tgt
    eq $I19, 1, rx58_restart120
    gt rx58_pos, rx58_eos, rx58_fail121
    repr_get_attr_int $I11, self, rx58_curclass, "$!from"
    ne $I11, -1, rxscan59_done127
    goto rxscan59_scan126
  rxscan59_loop125:
    inc rx58_pos
    gt rx58_pos, rx58_eos, rx58_fail121
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!from", rx58_pos
  rxscan59_scan126:
    nqp_rxmark rx58_bstack, rxscan59_loop125, rx58_pos, 0
  rxscan59_done127:
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."ws"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail121
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    nqp_rxmark rx58_bstack, rxcap61_fail130, rx58_pos, 0
    add $I11, rx58_pos, 5
    gt $I11, rx58_eos, rx58_fail121
    substr $S10, rx58_tgt, rx58_pos, 5
    ne $S10, ucs4:"print", rx58_fail121
    add rx58_pos, 5
    nqp_rxpeek $I19, rx58_bstack, rxcap61_fail130
    inc $I19
    set $I11, rx58_bstack[$I19]
    $P11 = rx58_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx58_pos)
    rx58_cstack = rx58_cur."!cursor_capture"($P11, "sym")
    goto rxcap61_done129
  rxcap61_fail130:
    goto rx58_fail121
  rxcap61_done129:
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."ws"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail121
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    nqp_rxmark rx58_bstack, rxquantr63_done133, rx58_pos, 0
  rxquantr63_loop132:
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."ws"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail121
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."EXPR"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail121
    nqp_rxmark rx58_bstack, rxsubrule65_pass135, -1, 0
  rxsubrule65_pass135:
    rx58_cstack = rx58_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."ws"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail121
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    nqp_rxpeek $I19, rx58_bstack, rxquantr63_done133
    inc $I19
    inc $I19
    set rx58_rep, rx58_bstack[$I19]
    nqp_rxcommit rx58_bstack, rxquantr63_done133
    inc rx58_rep
    nqp_rxmark rx58_bstack, rxquantr63_done133, rx58_pos, rx58_rep
    add $I11, rx58_pos, 1
    gt $I11, rx58_eos, rx58_fail121
    substr $S10, rx58_tgt, rx58_pos, 1
    ne $S10, ucs4:",", rx58_fail121
    add rx58_pos, 1
    goto rxquantr63_loop132
  rxquantr63_done133:
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."ws"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail121
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    rx58_cur."!cursor_pass"(rx58_pos, "statement_control:sym<print>", 'backtrack'=>1)
    .return (rx58_cur)
  rx58_restart120:
    repr_get_attr_obj rx58_cstack, rx58_cur, rx58_curclass, "$!cstack"
  rx58_fail121:
    unless rx58_bstack, rx58_done119
    pop $I19, rx58_bstack
    if_null rx58_cstack, rx58_cstack_done124
    unless rx58_cstack, rx58_cstack_done124
    dec $I19
    set $P11, rx58_cstack[$I19]
  rx58_cstack_done124:
    pop rx58_rep, rx58_bstack
    pop rx58_pos, rx58_bstack
    pop $I19, rx58_bstack
    lt rx58_pos, -1, rx58_done119
    lt rx58_pos, 0, rx58_fail121
    eq $I19, 0, rx58_fail121
    nqp_islist $I20, rx58_cstack
    unless $I20, rx58_jump122
    elements $I18, rx58_bstack
    le $I18, 0, rx58_cut123
    dec $I18
    set $I18, rx58_bstack[$I18]
  rx58_cut123:
    assign rx58_cstack, $I18
  rx58_jump122:
    jump $I19
  rx58_done119:
    rx58_cur."!cursor_fail"()
    .return (rx58_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_8_1347081275.17332_caps" :subid("cuid_memo_10_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 2
    set $P5001["EXPR"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<integer>" :subid("cuid_9_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_curclass
    .local pmc rx68_bstack
    .local pmc rx68_cstack
    (rx68_cur, rx68_tgt, rx68_pos, rx68_curclass, rx68_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx68_cur
    length rx68_eos, rx68_tgt
    eq $I19, 1, rx68_restart140
    gt rx68_pos, rx68_eos, rx68_fail141
    repr_get_attr_int $I11, self, rx68_curclass, "$!from"
    ne $I11, -1, rxscan69_done147
    goto rxscan69_scan146
  rxscan69_loop145:
    inc rx68_pos
    gt rx68_pos, rx68_eos, rx68_fail141
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!from", rx68_pos
  rxscan69_scan146:
    nqp_rxmark rx68_bstack, rxscan69_loop145, rx68_pos, 0
  rxscan69_done147:
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!pos", rx68_pos
    $P11 = rx68_cur."integer"()
    repr_get_attr_int $I11, $P11, rx68_curclass, "$!pos"
    lt $I11, 0, rx68_fail141
    nqp_rxmark rx68_bstack, rxsubrule70_pass148, -1, 0
  rxsubrule70_pass148:
    rx68_cstack = rx68_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx68_pos, $P11, rx68_curclass, "$!pos"
    rx68_cur."!cursor_pass"(rx68_pos, "term:sym<integer>", 'backtrack'=>1)
    .return (rx68_cur)
  rx68_restart140:
    repr_get_attr_obj rx68_cstack, rx68_cur, rx68_curclass, "$!cstack"
  rx68_fail141:
    unless rx68_bstack, rx68_done139
    pop $I19, rx68_bstack
    if_null rx68_cstack, rx68_cstack_done144
    unless rx68_cstack, rx68_cstack_done144
    dec $I19
    set $P11, rx68_cstack[$I19]
  rx68_cstack_done144:
    pop rx68_rep, rx68_bstack
    pop rx68_pos, rx68_bstack
    pop $I19, rx68_bstack
    lt rx68_pos, -1, rx68_done139
    lt rx68_pos, 0, rx68_fail141
    eq $I19, 0, rx68_fail141
    nqp_islist $I20, rx68_cstack
    unless $I20, rx68_jump142
    elements $I18, rx68_bstack
    le $I18, 0, rx68_cut143
    dec $I18
    set $I18, rx68_bstack[$I18]
  rx68_cut143:
    assign rx68_cstack, $I18
  rx68_jump142:
    jump $I19
  rx68_done139:
    rx68_cur."!cursor_fail"()
    .return (rx68_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1347081275.17332_caps" :subid("cuid_memo_11_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["integer"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1347081275.17332_nfa" :subid("cuid_memo_12_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "integer"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<quote>" :subid("cuid_10_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 42
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    .local pmc rx71_curclass
    .local pmc rx71_bstack
    .local pmc rx71_cstack
    (rx71_cur, rx71_tgt, rx71_pos, rx71_curclass, rx71_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx71_cur
    length rx71_eos, rx71_tgt
    eq $I19, 1, rx71_restart151
    gt rx71_pos, rx71_eos, rx71_fail152
    repr_get_attr_int $I11, self, rx71_curclass, "$!from"
    ne $I11, -1, rxscan72_done158
    goto rxscan72_scan157
  rxscan72_loop156:
    inc rx71_pos
    gt rx71_pos, rx71_eos, rx71_fail152
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!from", rx71_pos
  rxscan72_scan157:
    nqp_rxmark rx71_bstack, rxscan72_loop156, rx71_pos, 0
  rxscan72_done158:
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."quote"()
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail152
    nqp_rxmark rx71_bstack, rxsubrule73_pass159, -1, 0
  rxsubrule73_pass159:
    rx71_cstack = rx71_cur."!cursor_capture"($P11, "quote")
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
    rx71_cur."!cursor_pass"(rx71_pos, "term:sym<quote>", 'backtrack'=>1)
    .return (rx71_cur)
  rx71_restart151:
    repr_get_attr_obj rx71_cstack, rx71_cur, rx71_curclass, "$!cstack"
  rx71_fail152:
    unless rx71_bstack, rx71_done150
    pop $I19, rx71_bstack
    if_null rx71_cstack, rx71_cstack_done155
    unless rx71_cstack, rx71_cstack_done155
    dec $I19
    set $P11, rx71_cstack[$I19]
  rx71_cstack_done155:
    pop rx71_rep, rx71_bstack
    pop rx71_pos, rx71_bstack
    pop $I19, rx71_bstack
    lt rx71_pos, -1, rx71_done150
    lt rx71_pos, 0, rx71_fail152
    eq $I19, 0, rx71_fail152
    nqp_islist $I20, rx71_cstack
    unless $I20, rx71_jump153
    elements $I18, rx71_bstack
    le $I18, 0, rx71_cut154
    dec $I18
    set $I18, rx71_bstack[$I18]
  rx71_cut154:
    assign rx71_cstack, $I18
  rx71_jump153:
    jump $I19
  rx71_done150:
    rx71_cur."!cursor_fail"()
    .return (rx71_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1347081275.17332_caps" :subid("cuid_memo_13_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1347081275.17332_nfa" :subid("cuid_memo_14_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "quote"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote" :subid("cuid_11_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 44
    .param pmc self 
    $P5001 = self."!protoregex"("quote")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote:sym<'>" :subid("cuid_12_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 45
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx74_tgt
    .local int rx74_pos
    .local int rx74_off
    .local int rx74_eos
    .local int rx74_rep
    .local pmc rx74_cur
    .local pmc rx74_curclass
    .local pmc rx74_bstack
    .local pmc rx74_cstack
    (rx74_cur, rx74_tgt, rx74_pos, rx74_curclass, rx74_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx74_cur
    length rx74_eos, rx74_tgt
    eq $I19, 1, rx74_restart162
    gt rx74_pos, rx74_eos, rx74_fail163
    repr_get_attr_int $I11, self, rx74_curclass, "$!from"
    ne $I11, -1, rxscan75_done169
    goto rxscan75_scan168
  rxscan75_loop167:
    inc rx74_pos
    gt rx74_pos, rx74_eos, rx74_fail163
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!from", rx74_pos
  rxscan75_scan168:
    nqp_rxmark rx74_bstack, rxscan75_loop167, rx74_pos, 0
  rxscan75_done169:
    ge rx74_pos, rx74_eos, rx74_fail163
    substr $S11, rx74_tgt, rx74_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx74_fail163
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    lt $I11, 0, rx74_fail163
    nqp_rxmark rx74_bstack, rxsubrule76_pass170, -1, 0
  rxsubrule76_pass170:
    rx74_cstack = rx74_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx74_pos, $P11, rx74_curclass, "$!pos"
    rx74_cur."!cursor_pass"(rx74_pos, "quote:sym<'>", 'backtrack'=>1)
    .return (rx74_cur)
  rx74_restart162:
    repr_get_attr_obj rx74_cstack, rx74_cur, rx74_curclass, "$!cstack"
  rx74_fail163:
    unless rx74_bstack, rx74_done161
    pop $I19, rx74_bstack
    if_null rx74_cstack, rx74_cstack_done166
    unless rx74_cstack, rx74_cstack_done166
    dec $I19
    set $P11, rx74_cstack[$I19]
  rx74_cstack_done166:
    pop rx74_rep, rx74_bstack
    pop rx74_pos, rx74_bstack
    pop $I19, rx74_bstack
    lt rx74_pos, -1, rx74_done161
    lt rx74_pos, 0, rx74_fail163
    eq $I19, 0, rx74_fail163
    nqp_islist $I20, rx74_cstack
    unless $I20, rx74_jump164
    elements $I18, rx74_bstack
    le $I18, 0, rx74_cut165
    dec $I18
    set $I18, rx74_bstack[$I18]
  rx74_cut165:
    assign rx74_cstack, $I18
  rx74_jump164:
    jump $I19
  rx74_done161:
    rx74_cur."!cursor_fail"()
    .return (rx74_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1347081275.17332_caps" :subid("cuid_memo_15_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1347081275.17332_nfa" :subid("cuid_memo_16_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "'"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 0
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote:sym<\">" :subid("cuid_13_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    .local pmc rx77_curclass
    .local pmc rx77_bstack
    .local pmc rx77_cstack
    (rx77_cur, rx77_tgt, rx77_pos, rx77_curclass, rx77_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx77_cur
    length rx77_eos, rx77_tgt
    eq $I19, 1, rx77_restart173
    gt rx77_pos, rx77_eos, rx77_fail174
    repr_get_attr_int $I11, self, rx77_curclass, "$!from"
    ne $I11, -1, rxscan78_done180
    goto rxscan78_scan179
  rxscan78_loop178:
    inc rx77_pos
    gt rx77_pos, rx77_eos, rx77_fail174
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!from", rx77_pos
  rxscan78_scan179:
    nqp_rxmark rx77_bstack, rxscan78_loop178, rx77_pos, 0
  rxscan78_done180:
    ge rx77_pos, rx77_eos, rx77_fail174
    substr $S11, rx77_tgt, rx77_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx77_fail174
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!pos", rx77_pos
    $P11 = rx77_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx77_curclass, "$!pos"
    lt $I11, 0, rx77_fail174
    nqp_rxmark rx77_bstack, rxsubrule79_pass181, -1, 0
  rxsubrule79_pass181:
    rx77_cstack = rx77_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx77_pos, $P11, rx77_curclass, "$!pos"
    rx77_cur."!cursor_pass"(rx77_pos, "quote:sym<\">", 'backtrack'=>1)
    .return (rx77_cur)
  rx77_restart173:
    repr_get_attr_obj rx77_cstack, rx77_cur, rx77_curclass, "$!cstack"
  rx77_fail174:
    unless rx77_bstack, rx77_done172
    pop $I19, rx77_bstack
    if_null rx77_cstack, rx77_cstack_done177
    unless rx77_cstack, rx77_cstack_done177
    dec $I19
    set $P11, rx77_cstack[$I19]
  rx77_cstack_done177:
    pop rx77_rep, rx77_bstack
    pop rx77_pos, rx77_bstack
    pop $I19, rx77_bstack
    lt rx77_pos, -1, rx77_done172
    lt rx77_pos, 0, rx77_fail174
    eq $I19, 0, rx77_fail174
    nqp_islist $I20, rx77_cstack
    unless $I20, rx77_jump175
    elements $I18, rx77_bstack
    le $I18, 0, rx77_cut176
    dec $I18
    set $I18, rx77_bstack[$I18]
  rx77_cut176:
    assign rx77_cstack, $I18
  rx77_jump175:
    jump $I19
  rx77_done172:
    rx77_cur."!cursor_fail"()
    .return (rx77_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1347081275.17332_caps" :subid("cuid_memo_17_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1347081275.17332_nfa" :subid("cuid_memo_18_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "\""
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 0
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix:sym<( )>" :subid("cuid_14_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 55
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    .local pmc rx80_curclass
    .local pmc rx80_bstack
    .local pmc rx80_cstack
    (rx80_cur, rx80_tgt, rx80_pos, rx80_curclass, rx80_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx80_cur
    length rx80_eos, rx80_tgt
    eq $I19, 1, rx80_restart184
    gt rx80_pos, rx80_eos, rx80_fail185
    repr_get_attr_int $I11, self, rx80_curclass, "$!from"
    ne $I11, -1, rxscan81_done191
    goto rxscan81_scan190
  rxscan81_loop189:
    inc rx80_pos
    gt rx80_pos, rx80_eos, rx80_fail185
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!from", rx80_pos
  rxscan81_scan190:
    nqp_rxmark rx80_bstack, rxscan81_loop189, rx80_pos, 0
  rxscan81_done191:
    add $I11, rx80_pos, 1
    gt $I11, rx80_eos, rx80_fail185
    substr $S10, rx80_tgt, rx80_pos, 1
    ne $S10, ucs4:"(", rx80_fail185
    add rx80_pos, 1
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!pos", rx80_pos
    $P11 = rx80_cur."ws"()
    repr_get_attr_int $I11, $P11, rx80_curclass, "$!pos"
    lt $I11, 0, rx80_fail185
    repr_get_attr_int rx80_pos, $P11, rx80_curclass, "$!pos"
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!pos", rx80_pos
    $P11 = rx80_cur."EXPR"()
    repr_get_attr_int $I11, $P11, rx80_curclass, "$!pos"
    lt $I11, 0, rx80_fail185
    nqp_rxmark rx80_bstack, rxsubrule83_pass193, -1, 0
  rxsubrule83_pass193:
    rx80_cstack = rx80_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx80_pos, $P11, rx80_curclass, "$!pos"
    add $I11, rx80_pos, 1
    gt $I11, rx80_eos, rx80_fail185
    substr $S10, rx80_tgt, rx80_pos, 1
    ne $S10, ucs4:")", rx80_fail185
    add rx80_pos, 1
    rx80_cur."!cursor_pass"(rx80_pos, "circumfix:sym<( )>", 'backtrack'=>1)
    .return (rx80_cur)
  rx80_restart184:
    repr_get_attr_obj rx80_cstack, rx80_cur, rx80_curclass, "$!cstack"
  rx80_fail185:
    unless rx80_bstack, rx80_done183
    pop $I19, rx80_bstack
    if_null rx80_cstack, rx80_cstack_done188
    unless rx80_cstack, rx80_cstack_done188
    dec $I19
    set $P11, rx80_cstack[$I19]
  rx80_cstack_done188:
    pop rx80_rep, rx80_bstack
    pop rx80_pos, rx80_bstack
    pop $I19, rx80_bstack
    lt rx80_pos, -1, rx80_done183
    lt rx80_pos, 0, rx80_fail185
    eq $I19, 0, rx80_fail185
    nqp_islist $I20, rx80_cstack
    unless $I20, rx80_jump186
    elements $I18, rx80_bstack
    le $I18, 0, rx80_cut187
    dec $I18
    set $I18, rx80_bstack[$I18]
  rx80_cut187:
    assign rx80_cstack, $I18
  rx80_jump186:
    jump $I19
  rx80_done183:
    rx80_cur."!cursor_fail"()
    .return (rx80_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1347081275.17332_caps" :subid("cuid_memo_19_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1347081275.17332_nfa" :subid("cuid_memo_20_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 40
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "ws"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 8
    push $P5011, $P5012
    box $P5013, "EXPR"
    push $P5011, $P5013
    box $P5014, 4
    push $P5011, $P5014
    push $P5001, $P5011
    new $P5015, 'ResizablePMCArray'
    box $P5016, 2
    push $P5015, $P5016
    box $P5017, 41
    push $P5015, $P5017
    box $P5018, 0
    push $P5015, $P5018
    push $P5001, $P5015
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix:sym<*>" :subid("cuid_15_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    .local pmc rx84_curclass
    .local pmc rx84_bstack
    .local pmc rx84_cstack
    (rx84_cur, rx84_tgt, rx84_pos, rx84_curclass, rx84_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx84_cur
    length rx84_eos, rx84_tgt
    eq $I19, 1, rx84_restart196
    gt rx84_pos, rx84_eos, rx84_fail197
    repr_get_attr_int $I11, self, rx84_curclass, "$!from"
    ne $I11, -1, rxscan85_done203
    goto rxscan85_scan202
  rxscan85_loop201:
    inc rx84_pos
    gt rx84_pos, rx84_eos, rx84_fail197
    repr_bind_attr_int rx84_cur, rx84_curclass, "$!from", rx84_pos
  rxscan85_scan202:
    nqp_rxmark rx84_bstack, rxscan85_loop201, rx84_pos, 0
  rxscan85_done203:
    nqp_rxmark rx84_bstack, rxcap86_fail205, rx84_pos, 0
    add $I11, rx84_pos, 1
    gt $I11, rx84_eos, rx84_fail197
    substr $S10, rx84_tgt, rx84_pos, 1
    ne $S10, ucs4:"*", rx84_fail197
    add rx84_pos, 1
    nqp_rxpeek $I19, rx84_bstack, rxcap86_fail205
    inc $I19
    set $I11, rx84_bstack[$I19]
    $P11 = rx84_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx84_pos)
    rx84_cstack = rx84_cur."!cursor_capture"($P11, "sym")
    goto rxcap86_done204
  rxcap86_fail205:
    goto rx84_fail197
  rxcap86_done204:
    repr_bind_attr_int rx84_cur, rx84_curclass, "$!pos", rx84_pos
    $P11 = rx84_cur."O"("%multiplicative, :pirop<mul>")
    repr_get_attr_int $I11, $P11, rx84_curclass, "$!pos"
    lt $I11, 0, rx84_fail197
    nqp_rxmark rx84_bstack, rxsubrule87_pass206, -1, 0
  rxsubrule87_pass206:
    rx84_cstack = rx84_cur."!cursor_capture"($P11, "O")
    repr_get_attr_int rx84_pos, $P11, rx84_curclass, "$!pos"
    rx84_cur."!cursor_pass"(rx84_pos, "infix:sym<*>", 'backtrack'=>1)
    .return (rx84_cur)
  rx84_restart196:
    repr_get_attr_obj rx84_cstack, rx84_cur, rx84_curclass, "$!cstack"
  rx84_fail197:
    unless rx84_bstack, rx84_done195
    pop $I19, rx84_bstack
    if_null rx84_cstack, rx84_cstack_done200
    unless rx84_cstack, rx84_cstack_done200
    dec $I19
    set $P11, rx84_cstack[$I19]
  rx84_cstack_done200:
    pop rx84_rep, rx84_bstack
    pop rx84_pos, rx84_bstack
    pop $I19, rx84_bstack
    lt rx84_pos, -1, rx84_done195
    lt rx84_pos, 0, rx84_fail197
    eq $I19, 0, rx84_fail197
    nqp_islist $I20, rx84_cstack
    unless $I20, rx84_jump198
    elements $I18, rx84_bstack
    le $I18, 0, rx84_cut199
    dec $I18
    set $I18, rx84_bstack[$I18]
  rx84_cut199:
    assign rx84_cstack, $I18
  rx84_jump198:
    jump $I19
  rx84_done195:
    rx84_cur."!cursor_fail"()
    .return (rx84_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1347081275.17332_caps" :subid("cuid_memo_21_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["O"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1347081275.17332_nfa" :subid("cuid_memo_22_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 42
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "O"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix:sym</>" :subid("cuid_16_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_curclass
    .local pmc rx88_bstack
    .local pmc rx88_cstack
    (rx88_cur, rx88_tgt, rx88_pos, rx88_curclass, rx88_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx88_cur
    length rx88_eos, rx88_tgt
    eq $I19, 1, rx88_restart209
    gt rx88_pos, rx88_eos, rx88_fail210
    repr_get_attr_int $I11, self, rx88_curclass, "$!from"
    ne $I11, -1, rxscan89_done216
    goto rxscan89_scan215
  rxscan89_loop214:
    inc rx88_pos
    gt rx88_pos, rx88_eos, rx88_fail210
    repr_bind_attr_int rx88_cur, rx88_curclass, "$!from", rx88_pos
  rxscan89_scan215:
    nqp_rxmark rx88_bstack, rxscan89_loop214, rx88_pos, 0
  rxscan89_done216:
    nqp_rxmark rx88_bstack, rxcap90_fail218, rx88_pos, 0
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail210
    substr $S10, rx88_tgt, rx88_pos, 1
    ne $S10, ucs4:"/", rx88_fail210
    add rx88_pos, 1
    nqp_rxpeek $I19, rx88_bstack, rxcap90_fail218
    inc $I19
    set $I11, rx88_bstack[$I19]
    $P11 = rx88_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx88_pos)
    rx88_cstack = rx88_cur."!cursor_capture"($P11, "sym")
    goto rxcap90_done217
  rxcap90_fail218:
    goto rx88_fail210
  rxcap90_done217:
    repr_bind_attr_int rx88_cur, rx88_curclass, "$!pos", rx88_pos
    $P11 = rx88_cur."O"("%multiplicative, :pirop<div>")
    repr_get_attr_int $I11, $P11, rx88_curclass, "$!pos"
    lt $I11, 0, rx88_fail210
    nqp_rxmark rx88_bstack, rxsubrule91_pass219, -1, 0
  rxsubrule91_pass219:
    rx88_cstack = rx88_cur."!cursor_capture"($P11, "O")
    repr_get_attr_int rx88_pos, $P11, rx88_curclass, "$!pos"
    rx88_cur."!cursor_pass"(rx88_pos, "infix:sym</>", 'backtrack'=>1)
    .return (rx88_cur)
  rx88_restart209:
    repr_get_attr_obj rx88_cstack, rx88_cur, rx88_curclass, "$!cstack"
  rx88_fail210:
    unless rx88_bstack, rx88_done208
    pop $I19, rx88_bstack
    if_null rx88_cstack, rx88_cstack_done213
    unless rx88_cstack, rx88_cstack_done213
    dec $I19
    set $P11, rx88_cstack[$I19]
  rx88_cstack_done213:
    pop rx88_rep, rx88_bstack
    pop rx88_pos, rx88_bstack
    pop $I19, rx88_bstack
    lt rx88_pos, -1, rx88_done208
    lt rx88_pos, 0, rx88_fail210
    eq $I19, 0, rx88_fail210
    nqp_islist $I20, rx88_cstack
    unless $I20, rx88_jump211
    elements $I18, rx88_bstack
    le $I18, 0, rx88_cut212
    dec $I18
    set $I18, rx88_bstack[$I18]
  rx88_cut212:
    assign rx88_cstack, $I18
  rx88_jump211:
    jump $I19
  rx88_done208:
    rx88_cur."!cursor_fail"()
    .return (rx88_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_16_1347081275.17332_caps" :subid("cuid_memo_23_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["O"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_16_1347081275.17332_nfa" :subid("cuid_memo_24_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 47
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "O"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix:sym<+>" :subid("cuid_17_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx92_tgt
    .local int rx92_pos
    .local int rx92_off
    .local int rx92_eos
    .local int rx92_rep
    .local pmc rx92_cur
    .local pmc rx92_curclass
    .local pmc rx92_bstack
    .local pmc rx92_cstack
    (rx92_cur, rx92_tgt, rx92_pos, rx92_curclass, rx92_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx92_cur
    length rx92_eos, rx92_tgt
    eq $I19, 1, rx92_restart222
    gt rx92_pos, rx92_eos, rx92_fail223
    repr_get_attr_int $I11, self, rx92_curclass, "$!from"
    ne $I11, -1, rxscan93_done229
    goto rxscan93_scan228
  rxscan93_loop227:
    inc rx92_pos
    gt rx92_pos, rx92_eos, rx92_fail223
    repr_bind_attr_int rx92_cur, rx92_curclass, "$!from", rx92_pos
  rxscan93_scan228:
    nqp_rxmark rx92_bstack, rxscan93_loop227, rx92_pos, 0
  rxscan93_done229:
    nqp_rxmark rx92_bstack, rxcap94_fail231, rx92_pos, 0
    add $I11, rx92_pos, 1
    gt $I11, rx92_eos, rx92_fail223
    substr $S10, rx92_tgt, rx92_pos, 1
    ne $S10, ucs4:"+", rx92_fail223
    add rx92_pos, 1
    nqp_rxpeek $I19, rx92_bstack, rxcap94_fail231
    inc $I19
    set $I11, rx92_bstack[$I19]
    $P11 = rx92_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx92_pos)
    rx92_cstack = rx92_cur."!cursor_capture"($P11, "sym")
    goto rxcap94_done230
  rxcap94_fail231:
    goto rx92_fail223
  rxcap94_done230:
    repr_bind_attr_int rx92_cur, rx92_curclass, "$!pos", rx92_pos
    $P11 = rx92_cur."O"("%additive, :pirop<add>")
    repr_get_attr_int $I11, $P11, rx92_curclass, "$!pos"
    lt $I11, 0, rx92_fail223
    nqp_rxmark rx92_bstack, rxsubrule95_pass232, -1, 0
  rxsubrule95_pass232:
    rx92_cstack = rx92_cur."!cursor_capture"($P11, "O")
    repr_get_attr_int rx92_pos, $P11, rx92_curclass, "$!pos"
    rx92_cur."!cursor_pass"(rx92_pos, "infix:sym<+>", 'backtrack'=>1)
    .return (rx92_cur)
  rx92_restart222:
    repr_get_attr_obj rx92_cstack, rx92_cur, rx92_curclass, "$!cstack"
  rx92_fail223:
    unless rx92_bstack, rx92_done221
    pop $I19, rx92_bstack
    if_null rx92_cstack, rx92_cstack_done226
    unless rx92_cstack, rx92_cstack_done226
    dec $I19
    set $P11, rx92_cstack[$I19]
  rx92_cstack_done226:
    pop rx92_rep, rx92_bstack
    pop rx92_pos, rx92_bstack
    pop $I19, rx92_bstack
    lt rx92_pos, -1, rx92_done221
    lt rx92_pos, 0, rx92_fail223
    eq $I19, 0, rx92_fail223
    nqp_islist $I20, rx92_cstack
    unless $I20, rx92_jump224
    elements $I18, rx92_bstack
    le $I18, 0, rx92_cut225
    dec $I18
    set $I18, rx92_bstack[$I18]
  rx92_cut225:
    assign rx92_cstack, $I18
  rx92_jump224:
    jump $I19
  rx92_done221:
    rx92_cur."!cursor_fail"()
    .return (rx92_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1347081275.17332_caps" :subid("cuid_memo_25_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["O"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1347081275.17332_nfa" :subid("cuid_memo_26_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 43
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "O"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix:sym<->" :subid("cuid_18_1347081275.17332") :anon :lex :outer("cuid_19_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx96_tgt
    .local int rx96_pos
    .local int rx96_off
    .local int rx96_eos
    .local int rx96_rep
    .local pmc rx96_cur
    .local pmc rx96_curclass
    .local pmc rx96_bstack
    .local pmc rx96_cstack
    (rx96_cur, rx96_tgt, rx96_pos, rx96_curclass, rx96_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx96_cur
    length rx96_eos, rx96_tgt
    eq $I19, 1, rx96_restart235
    gt rx96_pos, rx96_eos, rx96_fail236
    repr_get_attr_int $I11, self, rx96_curclass, "$!from"
    ne $I11, -1, rxscan97_done242
    goto rxscan97_scan241
  rxscan97_loop240:
    inc rx96_pos
    gt rx96_pos, rx96_eos, rx96_fail236
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!from", rx96_pos
  rxscan97_scan241:
    nqp_rxmark rx96_bstack, rxscan97_loop240, rx96_pos, 0
  rxscan97_done242:
    nqp_rxmark rx96_bstack, rxcap98_fail244, rx96_pos, 0
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail236
    substr $S10, rx96_tgt, rx96_pos, 1
    ne $S10, ucs4:"-", rx96_fail236
    add rx96_pos, 1
    nqp_rxpeek $I19, rx96_bstack, rxcap98_fail244
    inc $I19
    set $I11, rx96_bstack[$I19]
    $P11 = rx96_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx96_pos)
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "sym")
    goto rxcap98_done243
  rxcap98_fail244:
    goto rx96_fail236
  rxcap98_done243:
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!pos", rx96_pos
    $P11 = rx96_cur."O"("%additive, :pirop<sub>")
    repr_get_attr_int $I11, $P11, rx96_curclass, "$!pos"
    lt $I11, 0, rx96_fail236
    nqp_rxmark rx96_bstack, rxsubrule99_pass245, -1, 0
  rxsubrule99_pass245:
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "O")
    repr_get_attr_int rx96_pos, $P11, rx96_curclass, "$!pos"
    rx96_cur."!cursor_pass"(rx96_pos, "infix:sym<->", 'backtrack'=>1)
    .return (rx96_cur)
  rx96_restart235:
    repr_get_attr_obj rx96_cstack, rx96_cur, rx96_curclass, "$!cstack"
  rx96_fail236:
    unless rx96_bstack, rx96_done234
    pop $I19, rx96_bstack
    if_null rx96_cstack, rx96_cstack_done239
    unless rx96_cstack, rx96_cstack_done239
    dec $I19
    set $P11, rx96_cstack[$I19]
  rx96_cstack_done239:
    pop rx96_rep, rx96_bstack
    pop rx96_pos, rx96_bstack
    pop $I19, rx96_bstack
    lt rx96_pos, -1, rx96_done234
    lt rx96_pos, 0, rx96_fail236
    eq $I19, 0, rx96_fail236
    nqp_islist $I20, rx96_cstack
    unless $I20, rx96_jump237
    elements $I18, rx96_bstack
    le $I18, 0, rx96_cut238
    dec $I18
    set $I18, rx96_bstack[$I18]
  rx96_cut238:
    assign rx96_cstack, $I18
  rx96_jump237:
    jump $I19
  rx96_done234:
    rx96_cur."!cursor_fail"()
    .return (rx96_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1347081275.17332_caps" :subid("cuid_memo_27_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["O"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1347081275.17332_nfa" :subid("cuid_memo_28_1347081275.17343")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 45
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "O"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_21_1347081275.17332") :load :init
.annotate 'file', "src/safire/Grammar.pm"
    .const 'Sub' $P5001 = 'cuid_20_1347081275.17332' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347081275.17332" 
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
    nqp_create_sc $P5001, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/safire/Grammar.pm")
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
    push $P5003, "MATCH"
    push $P5003, "Bool"
    push $P5003, "parse"
    push $P5003, "!INTERPOLATE"
    push $P5003, "!INTERPOLATE_REGEX"
    push $P5003, "target"
    push $P5003, "from"
    push $P5003, "pos"
    push $P5003, "CAPHASH"
    push $P5003, "!cursor_init"
    push $P5003, "!cursor_start"
    push $P5003, "!cursor_start_subcapture"
    push $P5003, "!cursor_capture"
    push $P5003, "!cursor_push_cstack"
    push $P5003, "!cursor_pass"
    push $P5003, "!cursor_fail"
    push $P5003, "!cursor_next"
    push $P5003, "!cursor_more"
    push $P5003, "!reduce"
    push $P5003, "!reduce_with_match"
    push $P5003, "!protoregex"
    push $P5003, "!protoregex_nfa"
    push $P5003, "!protoregex_table"
    push $P5003, "!alt"
    push $P5003, "!alt_nfa"
    push $P5003, "!BACKREF"
    push $P5003, "!LITERAL"
    push $P5003, "at"
    push $P5003, "before"
    push $P5003, "after"
    push $P5003, "ws"
    push $P5003, "ww"
    push $P5003, "wb"
    push $P5003, "ident"
    push $P5003, "alpha"
    push $P5003, "alnum"
    push $P5003, "upper"
    push $P5003, "lower"
    push $P5003, "digit"
    push $P5003, "xdigit"
    push $P5003, "space"
    push $P5003, "blank"
    push $P5003, "cntrl"
    push $P5003, "punct"
    push $P5003, "FAILGOAL"
    push $P5003, "4A5BD9A38C6E193C4CF429B1C28A4EC783872DAB-1346829367.55334"
    push $P5003, "src/stage2/gen/NQPHLL.pm"
    push $P5003, "termish"
    push $P5003, "term"
    push $P5003, "infix"
    push $P5003, "prefix"
    push $P5003, "postfix"
    push $P5003, "circumfix"
    push $P5003, "postcircumfix"
    push $P5003, "term:sym<circumfix>"
    push $P5003, "infixish"
    push $P5003, "prefixish"
    push $P5003, "postfixish"
    push $P5003, "nullterm"
    push $P5003, "nullterm_alt"
    push $P5003, "nulltermish"
    push $P5003, "quote_delimited"
    push $P5003, "quote_atom"
    push $P5003, "decint"
    push $P5003, "decints"
    push $P5003, "hexint"
    push $P5003, "hexints"
    push $P5003, "octint"
    push $P5003, "octints"
    push $P5003, "binint"
    push $P5003, "binints"
    push $P5003, "integer"
    push $P5003, "dec_number"
    push $P5003, "escale"
    push $P5003, "quote_escape"
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
    push $P5003, "O"
    push $P5003, "panic"
    push $P5003, "peek_delimiters"
    push $P5003, "quote_EXPR"
    push $P5003, "quotemod_check"
    push $P5003, "starter"
    push $P5003, "stopper"
    push $P5003, "split_words"
    push $P5003, "EXPR"
    push $P5003, "EXPR_reduce"
    push $P5003, "ternary"
    push $P5003, "MARKER"
    push $P5003, "MARKED"
    push $P5003, "LANG"
    push $P5003, "TOP"
    push $P5003, "statement_list"
    push $P5003, "statement"
    push $P5003, "statement_control"
    push $P5003, "statement_control:sym<say>"
    push $P5003, "statement_control:sym<print>"
    push $P5003, "term:sym<integer>"
    push $P5003, "term:sym<quote>"
    push $P5003, "quote"
    push $P5003, "quote:sym<'>"
    push $P5003, "quote:sym<\">"
    push $P5003, "circumfix:sym<( )>"
    push $P5003, "infix:sym<*>"
    push $P5003, "infix:sym</>"
    push $P5003, "infix:sym<+>"
    push $P5003, "infix:sym<->"
    push $P5003, "$!orig"
    push $P5003, "$!target"
    push $P5003, "$!from"
    push $P5003, "$!pos"
    push $P5003, "$!match"
    push $P5003, "$!name"
    push $P5003, "$!bstack"
    push $P5003, "$!cstack"
    push $P5003, "$!regexsub"
    push $P5003, "$!restart"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "2307B075AE989FBFD7AC085D0EE8506F81515FF7-1346829344.08174"
    push $P5003, "src/stage2/gen/nqp-mo.pm"
    push $P5003, "safire::Grammar"
    push $P5003, "orig"
    push $P5003, "match"
    push $P5003, "name"
    push $P5003, "bstack"
    push $P5003, "cstack"
    push $P5003, "regexsub"
    push $P5003, "restart"
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
    .const 'Sub' $P5004 = 'cuid_20_1347081275.17332' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAJAAAAiAAAAAgAAADIAAAAFhEAACEAAAAmEwAAaBgAAAAAAABoGAAAAAAAAGgYAABoGAAAAAAAAAUAAAAGAAAADgAAAAAAAAARAAAAEgAAAEwAAABNAAAAogAAAAAAAACkAAAApQAAAK8AAACwAAAAxgAAAMcAAADTAAAA1AAAAAEAAAAAAAAAAQAAADQBAAABAAAAngoAAAEAAAB6DAAAAQAAADANAAABAAAAEA4AAAEAAADwDgAAAQAAAIoPAAAAAAAAEwAAAAAAAAAAAAAACgALAAAAAgAAAAIAAAAAABQAAAADAAAAAgAAAAAAFQAAAAQAAAACAAEAAAAZAAAABwAAAAIAAQAAAEMAAAAIAAAAAgABAAAAUAAAAAkAAAACAAEAAABWAAAACgAAAAIAAQAAAFoAAAALAAAAAgAAAAAAFgAAAAwAAAACAAAAAAAXAAAADQAAAAIAAgAAAAAAAAAPAAAAAgAAAAAAGAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAAZAAAAAAAAAAEAAAAKAAAAAAAKAIQAAAAQAAAAAgADAAAACAAAABMAAAACAAMAAAAJAAAAFAAAAAIAAwAAAAoAAAAVAAAAAgADAAAACwAAABYAAAACAAMAAAAMAAAAFwAAAAIAAwAAAA8AAAAYAAAAAgADAAAAEQAAABkAAAACAAMAAAATAAAAGgAAAAIAAwAAABUAAAAbAAAAAgADAAAAFwAAABwAAAACAAMAAAAYAAAAHQAAAAIAAwAAABoAAAAeAAAAAgADAAAAGwAAAB8AAAACAAEAAABRAAAAIAAAAAIAAQAAAFIAAAAhAAAAAgABAAAAUwAAACIAAAACAAEAAABUAAAAIwAAAAIAAQAAAFUAAAAkAAAAAgABAAAAZQAAACUAAAACAAEAAABmAAAAJgAAAAIAAQAAAGcAAAAnAAAAAgABAAAAaAAAACgAAAACAAEAAABpAAAAKQAAAAIAAQAAAGoAAAAqAAAAAgABAAAAawAAACsAAAACAAEAAABsAAAALAAAAAIAAQAAAG0AAAAtAAAAAgABAAAAbgAAAC4AAAACAAEAAABvAAAALwAAAAIAAQAAAHAAAAAwAAAAAgABAAAAcQAAADEAAAACAAEAAAByAAAAMgAAAAIAAQAAAHMAAAAzAAAAAgABAAAAdAAAADQAAAACAAEAAAB1AAAANQAAAAIAAQAAAHYAAAA2AAAAAgABAAAAdwAAADcAAAACAAEAAAB4AAAAOAAAAAIAAQAAAHkAAAA5AAAAAgABAAAAegAAADoAAAACAAEAAAB7AAAAOwAAAAIAAQAAAHwAAAA8AAAAAgABAAAAfQAAAD0AAAACAAAAAAADAAAAPgAAAAIAAQAAAH8AAAA/AAAAAgABAAAAgAAAAEAAAAACAAEAAACBAAAAQQAAAAIAAQAAAIIAAABCAAAAAgABAAAAgwAAAEMAAAACAAEAAACEAAAARAAAAAIAAQAAAIUAAABFAAAAAgABAAAAhgAAAEYAAAACAAEAAACHAAAARwAAAAIAAQAAAIgAAABIAAAAAgABAAAAiQAAAEkAAAACAAEAAACKAAAASgAAAAIAAQAAAIsAAABLAAAAAgAEAAAAMAAAAE4AAAACAAQAAAACAAAATwAAAAIABAAAAAMAAABQAAAAAgAEAAAABAAAAFEAAAACAAQAAAAFAAAAUgAAAAIABAAAAAYAAABTAAAAAgAEAAAABwAAAFQAAAACAAQAAAAIAAAAVQAAAAIABAAAAAkAAABWAAAAAgAEAAAACgAAAFcAAAACAAQAAAALAAAAWAAAAAIABAAAAAwAAABZAAAAAgAEAAAADQAAAFoAAAACAAQAAAAOAAAAWwAAAAIABAAAAA8AAABcAAAAAgAEAAAAEAAAAF0AAAACAAQAAAARAAAAXgAAAAIABAAAABIAAABfAAAAAgAEAAAAEwAAAGAAAAACAAQAAAAUAAAAYQAAAAIABAAAABUAAABiAAAAAgAEAAAAFgAAAGMAAAACAAQAAAAXAAAAZAAAAAIABAAAABgAAABlAAAAAgAEAAAAGQAAAGYAAAACAAQAAAAaAAAAZwAAAAIABAAAABsAAABoAAAAAgAEAAAAHAAAAGkAAAACAAQAAAAdAAAAagAAAAIABAAAAB4AAABrAAAAAgAEAAAAHwAAAGwAAAACAAQAAAAgAAAAbQAAAAIABAAAACEAAABuAAAAAgAEAAAAIgAAAG8AAAACAAQAAAAjAAAAcAAAAAIABAAAACQAAABxAAAAAgAEAAAAJQAAAHIAAAACAAQAAAAmAAAAcwAAAAIABAAAACcAAAB0AAAAAgAEAAAAKAAAAHUAAAACAAQAAAApAAAAdgAAAAIABAAAACoAAAB3AAAAAgAEAAAAKwAAAHgAAAACAAQAAAAsAAAAeQAAAAIABAAAAC0AAAB6AAAAAgAEAAAALgAAAHsAAAACAAQAAAAvAAAAfAAAAAIABAAAADEAAAB9AAAAAgAEAAAAMgAAAH4AAAACAAQAAAAzAAAAfwAAAAIABAAAADQAAACAAAAAAgAEAAAANQAAAIEAAAACAAQAAAA2AAAAggAAAAIABAAAADcAAACDAAAAAgAEAAAAOAAAAIQAAAACAAQAAAA5AAAAhQAAAAIABAAAADoAAACGAAAAAgAEAAAAOwAAAIcAAAACAAQAAAA8AAAAiAAAAAIAAAAAAAIAAACJAAAAAgAAAAAABAAAAIoAAAACAAAAAAAFAAAAiwAAAAIAAAAAAAYAAACMAAAAAgAAAAAABwAAAI0AAAACAAAAAAAIAAAAjgAAAAIAAAAAAAkAAACPAAAAAgAAAAAACgAAAJAAAAACAAAAAAALAAAAkQAAAAIAAAAAAAwAAACSAAAAAgAAAAAADQAAAJMAAAACAAAAAAAOAAAAlAAAAAIAAAAAAA8AAACVAAAAAgAAAAAAEAAAAJYAAAACAAAAAAARAAAAlwAAAAIAAAAAABIAAAAAAAAAAAAAAAQAAAAAAAAAAgAAAAAAAQAAAAIABAAAAAEAAAACAAEAAABQAAAAAgADAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAQAAAFIAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAMAAAAEAAAAAQAAAAAAAAADAAAAAgAAAAEAAAAAAAAAAwAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgADAAAABwAAAAEAAQABAAIAAwAAAAcAAAACAAMAAAAHAAAAAgADAAAABwAAAAIAAwAAAAcAAAACAAMAAAAHAAAAAgADAAAABwAAAP///////////////////////////////wAAAAAAAAAABAAAAAAAAAACAAMAAAAHAAAAAwACAAEAAABQAAAACgAKAAAAmAAAAAQAAAAAAAAAAACZAAAABAABAAAAAAAAAJoAAAAEAAIAAAAAAAAAmwAAAAQAAwAAAAAAAACcAAAABAAEAAAAAAAAAJ0AAAAEAAUAAAAAAAAAngAAAAQABgAAAAAAAACfAAAABAAHAAAAAAAAAKAAAAAEAAgAAAAAAAAAoQAAAAQACQAAAAAAAAACAAQAAAABAAAAAwACAAAAAAABAAAAAwAAAAAAGgAAAAAAAAAUAAAACgAXAAAArgAAAAIABwAAAAEAAACxAAAAAgAHAAAABgAAALIAAAACAAcAAAAKAAAAswAAAAIABwAAACUAAAC0AAAAAgAHAAAALQAAALUAAAACAAcAAAAxAAAAtgAAAAIABwAAADUAAAC3AAAAAgAHAAAAOQAAALgAAAACAAcAAAA8AAAAuQAAAAIABwAAAEAAAAC6AAAAAgAHAAAARQAAALsAAAACAAcAAABNAAAAvAAAAAIABwAAAE8AAAC9AAAAAgAHAAAAVQAAAL4AAAACAAcAAABZAAAAvwAAAAIABwAAAF0AAADAAAAAAgAHAAAAYQAAAMEAAAACAAcAAABpAAAAwgAAAAIABwAAAGwAAADDAAAAAgAHAAAAbwAAAMQAAAACAAcAAAB4AAAAxQAAAAIACAAAACcAAADIAAAAAgAIAAAAOAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAUAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABQAAAADAAAAAAAbAAAAAAAAABUAAAAKAAIAAADJAAAAAgABAAAAAQAAAMoAAAACAAAAAAAcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABUAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAFQAAAAMAAAAAAB0AAAAAAAAAFgAAAAoABQAAAMsAAAACAAQAAAABAAAAzAAAAAIABAAAAD0AAADIAAAAAgAEAAAAXwAAAM0AAAACAAQAAADRAAAAzgAAAAIABAAAAJ0AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAFgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAWAAAAAwAAAAAAHgAAAAAAAAAXAAAACgAFAAAAzwAAAAIACAAAAAEAAACyAAAAAgAIAAAABAAAANAAAAACAAgAAAAMAAAA0QAAAAIACAAAABsAAADSAAAAAgAIAAAAIgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAXAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABcAAAADAAAAAAAfAAAAAAAAABgAAAAKAAEAAADLAAAAAgAAAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAYAAAAAwAAAAAAIAAAAAAAAAAcAAAACgADAAAAywAAAAIACQAAAAEAAADMAAAAAgAJAAAAUQAAAMgAAAACAAkAAACKAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABwAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAHAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAADAAAABQAAAAAAAAABAAAAAwAAAAUAAAAQAAAAAQAAAAMAAAAFAAAAIAAAAAEAAAADAAAABQAAADAAAAABAAAAAwAAAAUAAABAAAAAAQAAAAMAAAAFAAAAUAAAAAEAAAADAAAABQAAAGAAAAABAAAAAwAAAAUAAABwAAAAAQAAAAMAAAAFAAAAgAAAAAEAAAADAAAABQAAAJAAAAABAAAAAwAAAAUAAACgAAAAAQAAAAMAAAAFAAAAsAAAAAEAAAADAAAABQAAAMAAAAABAAAAAwAAAAUAAADQAAAAAQAAAAMAAAAFAAAA4AAAAAEAAAADAAAABQAAAPAAAAABAAAAAwAAAAUAAAAAAQAAAQAAAAUAAAAAAAAAEAEAAAEAAAAAAAAAAgAAACABAAAAAAAAAAAAAAMAAAAgAQAAAAAAAAAAAAAEAAAAIAEAAAAAAAAAAAAABQAAACABAAAAAAAAAAAAAAYAAAAgAQAAAAAAAAYAAAAGAAAAIAEAAAEAAAAFAAAAAAAAAOIEAAABAAAABQAAAAAAAADyBAAAAQAAAAAAAAAHAAAAAgUAAAAAAAAFAAAAAAAAAAIFAAABAAAABQAAAAAAAAASBQAAAQAAAAUAAAAAAAAAIgUAAAEAAAAFAAAAAAAAADIFAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQCjAAAABwAAAAAACgAAAAAABgCmAAAACgAAAAAACgARAAAAiAAAAAIAAAAAAAIAAAA9AAAAAgAAAAAAAwAAAIkAAAACAAAAAAAEAAAAigAAAAIAAAAAAAUAAACLAAAAAgAAAAAABgAAAIwAAAACAAAAAAAHAAAAjQAAAAIAAAAAAAgAAACOAAAAAgAAAAAACQAAAI8AAAACAAAAAAAKAAAAkAAAAAIAAAAAAAsAAACRAAAAAgAAAAAADAAAAJIAAAACAAAAAAANAAAAkwAAAAIAAAAAAA4AAACUAAAAAgAAAAAADwAAAJUAAAACAAAAAAAQAAAAlgAAAAIAAAAAABEAAACXAAAAAgAAAAAAEgAAAAcAEQAAAAIAAAAAAAIAAAACAAAAAAADAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAABwAAAAAABwABAAAAAgAEAAAAAQAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcABAAAAAIAAAAAAAEAAAACAAQAAAABAAAAAgABAAAAUAAAAAIAAwAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABQAAAABgCnAAAABgCYAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFAAAAAGACQAAAAGAJkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUAAAAAYAJQAAAAYAmgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABQAAAABgAmAAAABgCbAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFAAAAAGAKgAAAAGAJwAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUAAAAAYAqQAAAAYAnQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABQAAAABgCqAAAABgCeAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFAAAAAGAKsAAAAGAJ8AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUAAAAAYArAAAAAYAoAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABQAAAABgCtAAAABgChAAAABwAAAAAAAQACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAADwAAAAcAAAAAAAoAAAAAAMoAAAAHAAAAAAAKAAAAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347081275.17332"
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081275.17332"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347081275.17332"
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347081275.17332"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 2
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 3
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1347081275.17332" 
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 18
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_19_1347081275.17332"
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_19_1347081275.17332"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_19_1347081275.17332"
    nqp_get_sc_object $P5002, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_19_1347081275.17332"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "A49A8439C0DD1981CD67D8E1F4C7BB05C8F16B5E-1347081275.21923", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_20_1347081275.17332") :anon :lex :outer("cuid_21_1347081275.17332")
.annotate 'file', "src/safire/Grammar.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1347081275.17332" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1347081275.17332" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_22_1347081275.17332") :load
.annotate 'file', "src/safire/Grammar.pm"
    .const 'Sub' $P5001 = "cuid_1_1347081275.17332" 
    $P5002 = $P5001()
    .return ($P5002) 
.end