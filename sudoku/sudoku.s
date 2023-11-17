	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sudoku.cpp"
	.text
	.align	2
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0, %function
_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0:
	.fnstart
.LFB3579:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	subs	r3, r0, #0
	str	r3, [sp, #4]
	beq	.L1
.L19:
	ldr	r3, [sp, #4]
	ldr	r9, [r3, #12]
	cmp	r9, #0
	beq	.L3
.L18:
	ldr	r10, [r9, #12]
	cmp	r10, #0
	beq	.L4
.L17:
	ldr	fp, [r10, #12]
	cmp	fp, #0
	beq	.L5
.L16:
	ldr	r4, [fp, #12]
	cmp	r4, #0
	beq	.L6
.L15:
	ldr	r5, [r4, #12]
	cmp	r5, #0
	beq	.L7
.L14:
	ldr	r7, [r5, #12]
	cmp	r7, #0
	beq	.L8
.L13:
	ldr	r6, [r7, #12]
	cmp	r6, #0
	beq	.L9
.L12:
	ldr	r8, [r6, #12]
	cmp	r8, #0
	beq	.L10
.L11:
	ldr	r0, [r8, #12]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
	mov	r0, r8
	ldr	r8, [r8, #8]
	mov	r1, #20
	bl	_ZdlPvj
	cmp	r8, #0
	bne	.L11
.L10:
	ldr	r8, [r6, #8]
	mov	r1, #20
	mov	r0, r6
	bl	_ZdlPvj
	cmp	r8, #0
	beq	.L9
	mov	r6, r8
	b	.L12
.L7:
	ldr	r5, [r4, #8]
	mov	r1, #20
	mov	r0, r4
	bl	_ZdlPvj
	cmp	r5, #0
	beq	.L6
	mov	r4, r5
	b	.L15
.L8:
	ldr	r6, [r5, #8]
	mov	r1, #20
	mov	r0, r5
	bl	_ZdlPvj
	cmp	r6, #0
	beq	.L7
	mov	r5, r6
	b	.L14
.L6:
	ldr	r4, [fp, #8]
	mov	r1, #20
	mov	r0, fp
	bl	_ZdlPvj
	cmp	r4, #0
	beq	.L5
	mov	fp, r4
	b	.L16
.L9:
	ldr	r6, [r7, #8]
	mov	r1, #20
	mov	r0, r7
	bl	_ZdlPvj
	cmp	r6, #0
	beq	.L8
	mov	r7, r6
	b	.L13
.L5:
	ldr	r4, [r10, #8]
	mov	r1, #20
	mov	r0, r10
	bl	_ZdlPvj
	cmp	r4, #0
	movne	r10, r4
	bne	.L17
.L4:
	ldr	r4, [r9, #8]
	mov	r1, #20
	mov	r0, r9
	bl	_ZdlPvj
	cmp	r4, #0
	movne	r9, r4
	bne	.L18
.L3:
	ldr	r0, [sp, #4]
	mov	r1, #20
	ldr	r4, [r0, #8]
	bl	_ZdlPvj
	cmp	r4, #0
	strne	r4, [sp, #4]
	bne	.L19
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0, .-_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	" \000"
	.align	2
.LC2:
	.ascii	"\012\000"
	.text
	.align	2
	.global	_Z16printSudokuBoardv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z16printSudokuBoardv, %function
_Z16printSudokuBoardv:
	.fnstart
.LFB2513:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L65
	ldr	r6, .L65+4
	ldr	r7, .L65+8
	ldr	r9, .L65+12
	add	r8, r5, #324
.L60:
	sub	r4, r5, #36
.L59:
	ldr	r1, [r4], #4
	mov	r0, r6
	bl	_ZNSolsEi
	mov	r2, #1
	mov	r1, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmp	r4, r5
	bne	.L59
	mov	r2, #1
	mov	r1, r9
	mov	r0, r6
	add	r5, r4, #36
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmp	r5, r8
	bne	.L60
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L66:
	.align	2
.L65:
	.word	.LANCHOR0+36
	.word	_ZSt4cout
	.word	.LC1
	.word	.LC2
	.fnend
	.size	_Z16printSudokuBoardv, .-_Z16printSudokuBoardv
	.align	2
	.global	_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE, %function
_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE:
	.fnstart
.LFB2531:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r2]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #0
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	.pad #84
	sub	sp, sp, #84
	add	r10, r2, r2, lsl #3
	mov	r8, r0
	add	r10, r1, r10, lsl #2
	sub	r10, r10, #4
	mov	r4, r9
	add	fp, sp, #24
	str	r3, [sp, #8]
	add	r3, r1, r3, lsl #2
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	str	r9, [sp, #40]
	str	r3, [sp]
	str	fp, [sp, #32]
	str	fp, [sp, #36]
.L91:
	ldr	r3, [sp]
	cmp	r4, #0
	ldr	r6, [r10, #4]!
	ldr	r7, [r3, r9, lsl #2]
	beq	.L144
	mov	r5, r4
.L72:
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #8]
	cmp	r7, r3
	ldr	r1, [r5, #12]
	blt	.L69
	cmp	r1, #0
	beq	.L70
	mov	r5, r1
	b	.L72
.L69:
	cmp	r2, #0
	beq	.L68
	mov	r5, r2
	b	.L72
.L144:
	mov	r5, fp
.L68:
	ldr	r3, [sp, #32]
	cmp	r3, r5
	beq	.L74
	mov	r0, r5
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	r3, [r0, #16]
.L70:
	cmp	r7, r3
	ble	.L78
	cmp	r5, #0
	beq	.L78
.L74:
	cmp	r5, fp
	moveq	r4, #1
	bne	.L224
.L77:
	mov	r0, #20
.LEHB0:
	bl	_Znwj
	mov	r1, r0
	mov	r3, fp
	str	r7, [r0, #16]
	mov	r2, r5
	mov	r0, r4
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r3, [sp, #40]
	ldr	r4, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #40]
.L78:
	cmp	r4, #0
	beq	.L146
.L83:
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #8]
	cmp	r6, r3
	ldr	r1, [r4, #12]
	blt	.L80
	cmp	r1, #0
	beq	.L81
	mov	r4, r1
	b	.L83
.L80:
	cmp	r2, #0
	beq	.L79
	mov	r4, r2
	b	.L83
.L146:
	mov	r4, fp
.L79:
	ldr	r3, [sp, #32]
	cmp	r3, r4
	beq	.L85
	mov	r0, r4
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	r3, [r0, #16]
.L81:
	cmp	r6, r3
	ble	.L89
	cmp	r4, #0
	beq	.L89
.L85:
	cmp	r4, fp
	moveq	r5, #1
	bne	.L225
.L88:
	mov	r0, #20
	bl	_Znwj
	mov	r1, r0
	mov	r3, fp
	mov	r2, r4
	mov	r0, r5
	str	r6, [r1, #16]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r3, [sp, #40]
	add	r3, r3, #1
	str	r3, [sp, #40]
.L89:
	add	r9, r9, #9
	cmp	r9, #81
	beq	.L90
	ldr	r4, [sp, #28]
	b	.L91
.L224:
	ldr	r4, [r5, #16]
	cmp	r7, r4
	movge	r4, #0
	movlt	r4, #1
	b	.L77
.L225:
	ldr	r5, [r4, #16]
	cmp	r6, r5
	movge	r5, #0
	movlt	r5, #1
	b	.L88
.L90:
	ldr	r2, [sp, #4]
	ldr	r3, .L234
	smull	r1, r10, r3, r2
	sub	r10, r10, r2, asr #31
	ldr	r2, [sp, #8]
	add	r10, r10, r10, lsl #1
	smull	r1, r3, r3, r2
	ldr	r1, [sp, #12]
	sub	r3, r3, r2, asr #31
	add	r2, r3, r3, lsl #1
	add	r3, r10, r10, lsl #3
	add	r3, r3, r2
	add	r9, r2, #3
	add	r3, r1, r3, lsl #2
	sub	r3, r3, #4
	str	r3, [sp]
	add	r3, r10, #3
	str	r2, [sp, #4]
	str	r3, [sp, #8]
.L105:
	ldr	r7, [sp]
	ldr	r6, [sp, #4]
	b	.L104
.L92:
	add	r6, r6, #1
	cmp	r6, r9
	bge	.L226
.L104:
	ldr	r5, [r7, #4]!
	cmp	r5, #0
	beq	.L92
	ldr	r4, [sp, #28]
	cmp	r4, #0
	beq	.L148
.L97:
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #8]
	cmp	r5, r3
	ldr	r1, [r4, #12]
	blt	.L94
	cmp	r1, #0
	beq	.L95
	mov	r4, r1
	b	.L97
.L94:
	cmp	r2, #0
	beq	.L93
	mov	r4, r2
	b	.L97
.L148:
	mov	r4, fp
.L93:
	ldr	r3, [sp, #32]
	cmp	r3, r4
	beq	.L99
	mov	r0, r4
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	r3, [r0, #16]
.L95:
	cmp	r5, r3
	ble	.L92
	cmp	r4, #0
	beq	.L92
.L99:
	cmp	r4, fp
	moveq	r5, #1
	bne	.L227
.L102:
	mov	r0, #20
	bl	_Znwj
.LEHE0:
	ldr	r3, [r7]
	mov	r1, r0
	mov	r2, r4
	str	r3, [r1, #16]
	mov	r0, r5
	mov	r3, fp
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r3, [sp, #40]
	add	r6, r6, #1
	add	r3, r3, #1
	cmp	r6, r9
	str	r3, [sp, #40]
	blt	.L104
.L226:
	ldr	r3, [sp, #8]
	add	r10, r10, #1
	cmp	r10, r3
	ldr	r3, [sp]
	add	r3, r3, #36
	str	r3, [sp]
	blt	.L105
	ldr	lr, .L234+4
	add	ip, sp, #44
	mov	r6, ip
	ldmia	lr!, {r0, r1, r2, r3}
	mov	r7, #0
	add	r5, r8, #4
	str	r7, [r8, #4]
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	str	r7, [r8, #8]
	str	r7, [r8, #20]
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r5, [r8, #12]
	str	r5, [r8, #16]
	str	r3, [ip]
.L118:
	cmp	r7, #0
	beq	.L106
	ldr	r4, [r8, #16]
	ldr	r3, [r6]
	ldr	r2, [r4, #16]
	cmp	r2, r3
	blt	.L107
.L106:
	ldr	r4, [r8, #8]
	cmp	r4, #0
	beq	.L150
	ldr	r0, [r6]
.L112:
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #8]
	cmp	r3, r0
	ldr	r1, [r4, #12]
	bgt	.L109
	cmp	r1, #0
	beq	.L110
	mov	r4, r1
	b	.L112
.L109:
	cmp	r2, #0
	beq	.L108
	mov	r4, r2
	b	.L112
.L150:
	mov	r4, r5
.L108:
	ldr	r3, [r8, #12]
	cmp	r3, r4
	beq	.L107
	mov	r0, r4
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	r3, [r0, #16]
	ldr	r0, [r6]
.L110:
	cmp	r3, r0
	bge	.L116
	cmp	r4, #0
	beq	.L116
.L107:
	cmp	r5, r4
	moveq	r7, #1
	bne	.L228
.L117:
	mov	r0, #20
.LEHB1:
	bl	_Znwj
.LEHE1:
	mov	r1, r0
	ldr	ip, [r6]
	mov	r0, r7
	mov	r3, r5
	mov	r2, r4
	str	ip, [r1, #16]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r7, [r8, #20]
	add	r7, r7, #1
	str	r7, [r8, #20]
.L116:
	add	r6, r6, #4
	add	r3, sp, #80
	cmp	r6, r3
	bne	.L118
	ldr	r6, [sp, #32]
	cmp	r6, fp
	beq	.L122
	mov	r7, #0
.L119:
	ldr	r0, [r8, #8]
	cmp	r0, #0
	beq	.L122
	ldr	r2, [r6, #16]
	mov	lr, r5
	mov	r3, r0
.L126:
	ldr	r1, [r3, #16]
	ldr	ip, [r3, #8]
	cmp	r2, r1
	ldr	r1, [r3, #12]
	ble	.L123
	cmp	r1, #0
	beq	.L124
	mov	r3, r1
	b	.L126
.L123:
	cmp	ip, #0
	mov	lr, r3
	movne	r3, ip
	bne	.L126
.L124:
	cmp	r5, lr
	beq	.L127
	ldr	r3, [lr, #16]
	cmp	r2, r3
	blt	.L127
	mov	r9, r5
	mov	r4, r0
	b	.L128
.L230:
	ldr	r4, [r4, #12]
	cmp	r4, #0
	beq	.L229
.L128:
	ldr	r3, [r4, #16]
	cmp	r2, r3
	bgt	.L230
	ldr	r3, [r4, #8]
	bge	.L231
	mov	r9, r4
	mov	r4, r3
	cmp	r4, #0
	bne	.L128
.L229:
	ldr	r3, [r8, #12]
	cmp	r3, r9
	cmpeq	r9, r5
	bne	.L127
.L129:
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
	str	r7, [r8, #8]
	str	r5, [r8, #12]
	str	r5, [r8, #16]
	str	r7, [r8, #20]
.L127:
	mov	r0, r6
	bl	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	cmp	r0, fp
	mov	r6, r0
	bne	.L119
.L122:
	ldr	r0, [sp, #28]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
	mov	r0, r8
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L227:
	ldr	r3, [r4, #16]
	cmp	r5, r3
	movge	r5, #0
	movlt	r5, #1
	b	.L102
.L231:
	cmp	r3, #0
	ldr	r1, [r4, #12]
	bne	.L136
	b	.L133
.L232:
	cmp	ip, #0
	beq	.L133
.L135:
	mov	r3, ip
.L136:
	add	r10, r3, #8
	ldm	r10, {r10, ip, lr}
	cmp	r2, lr
	bgt	.L232
	cmp	r10, #0
	mov	r4, r3
	movne	ip, r10
	bne	.L135
.L133:
	cmp	r1, #0
	bne	.L140
	b	.L137
.L233:
	cmp	r3, #0
	beq	.L137
.L139:
	mov	r1, r3
.L140:
	ldr	r3, [r1, #16]
	ldr	ip, [r1, #8]
	cmp	r2, r3
	ldr	r3, [r1, #12]
	bge	.L233
	cmp	ip, #0
	mov	r9, r1
	movne	r3, ip
	bne	.L139
.L137:
	ldr	r3, [r8, #12]
	cmp	r3, r4
	cmpeq	r5, r9
	beq	.L129
	cmp	r9, r4
	beq	.L127
.L143:
	mov	r0, r4
	bl	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	mov	r1, r5
	mov	r3, r0
	mov	r0, r4
	mov	r4, r3
	bl	_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
	mov	r1, #20
	bl	_ZdlPvj
	ldr	r3, [r8, #20]
	cmp	r9, r4
	sub	r3, r3, #1
	str	r3, [r8, #20]
	bne	.L143
	b	.L127
.L228:
	ldr	r7, [r6]
	ldr	r3, [r4, #16]
	cmp	r7, r3
	movge	r7, #0
	movlt	r7, #1
	b	.L117
.L158:
	ldr	r0, [r8, #8]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
.L121:
	ldr	r0, [sp, #28]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
.LEHB2:
	bl	__cxa_end_cleanup
.LEHE2:
.L157:
	b	.L121
.L235:
	.align	2
.L234:
	.word	1431655766
	.word	.LANCHOR1
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA2531:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2531-.LLSDACSB2531
.LLSDACSB2531:
	.uleb128 .LEHB0-.LFB2531
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L157-.LFB2531
	.uleb128 0
	.uleb128 .LEHB1-.LFB2531
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L158-.LFB2531
	.uleb128 0
	.uleb128 .LEHB2-.LFB2531
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2531:
	.text
	.fnend
	.size	_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE, .-_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,"axG",%progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:
	.fnstart
.LFB2842:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	ldrd	r4, [r0]
	cmp	r4, r5
	beq	.L237
.L241:
	ldr	r3, [r4]
	subs	r0, r3, #0
	beq	.L238
	ldr	r1, [r4, #8]
	add	r4, r4, #12
	sub	r1, r1, r3
	bl	_ZdlPvj
	cmp	r5, r4
	bne	.L241
.L239:
	ldr	r5, [r6]
.L237:
	cmp	r5, #0
	beq	.L242
	ldr	r1, [r6, #8]
	mov	r0, r5
	sub	r1, r1, r5
	bl	_ZdlPvj
.L242:
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L238:
	add	r4, r4, #12
	cmp	r5, r4
	bne	.L241
	b	.L239
	.cantunwind
	.fnend
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"vector::_M_realloc_insert\000"
	.text
	.align	2
	.global	_Z13getEmptyBoxesPA9_i
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z13getEmptyBoxesPA9_i, %function
_Z13getEmptyBoxesPA9_i:
	.fnstart
.LFB2514:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	.pad #28
	sub	sp, sp, #28
	mov	r3, #0
	sub	r2, r1, #4
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r3, [r0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
.L264:
	ldr	r5, [sp, #4]
	mov	r4, #0
	b	.L263
.L248:
	add	r4, r4, #1
	cmp	r4, #9
	beq	.L281
.L263:
	ldr	r3, [r5, #4]!
	cmp	r3, #0
	bne	.L248
	ldr	r3, [sp]
	mov	r0, #8
	str	r3, [sp, #16]
	str	r4, [sp, #20]
.LEHB3:
	bl	_Znwj
.LEHE3:
	add	r3, sp, #16
	mov	r7, r0
	ldr	r6, [r9, #4]
	ldmia	r3!, {r0, r1}
	ldr	r2, [r9, #8]
	mov	r8, r7
	cmp	r6, r2
	str	r0, [r8], #8	@ unaligned
	str	r1, [r7, #4]	@ unaligned
	beq	.L249
	add	r4, r4, #1
	add	r3, r6, #12
	cmp	r4, #9
	stm	r6, {r7, r8}
	str	r8, [r6, #8]
	str	r3, [r9, #4]
	bne	.L263
.L281:
	ldr	r3, [sp]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [sp]
	ldr	r3, [sp, #4]
	add	r3, r3, #36
	str	r3, [sp, #4]
	bne	.L264
	mov	r0, r9
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L249:
	ldr	fp, [r9]
	sub	r1, r6, fp
	bic	r3, r1, #3
	add	r3, r3, r1, asr #2
	str	r1, [sp, #12]
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	lsl	r3, r3, #1
	add	r3, r3, r1, asr #2
	ldr	r1, .L284
	cmp	r3, r1
	beq	.L282
	cmp	r3, #1
	movcs	r10, r3
	movcc	r10, #1
	adds	r10, r10, r3
	bcs	.L253
	cmp	r10, #0
	moveq	r3, r10
	streq	r3, [sp, #8]
	moveq	r10, #12
	bne	.L283
.L255:
	ldr	r1, [sp, #12]
	cmp	r6, fp
	str	r7, [r3, r1]
	add	r1, r3, r1
	str	r8, [r1, #4]
	str	r8, [r1, #8]
	beq	.L256
	sub	r8, r6, #12
	sub	r8, r8, fp
	bic	r1, r8, #3
	add	r1, r1, r8, lsr #2
	orr	ip, fp, r3
	add	r1, r1, r1, lsl #5
	and	ip, ip, #7
	lsl	r1, r1, #1
	add	r1, r1, r8, lsr #2
	add	r1, r1, r1, lsl #5
	rsb	r1, r1, r1, lsl #15
	lsl	r1, r1, #1
	add	r8, r1, r8, lsr #2
	add	r1, fp, #12
	sub	r0, r3, r1
	add	r0, r0, #8
	cmp	r0, #16
	movls	r0, #0
	movhi	r0, #1
	cmp	ip, #0
	movne	r0, #0
	bics	ip, r8, #-1073741821
	moveq	r0, #0
	andne	r0, r0, #1
	cmp	r0, #0
	beq	.L257
	bic	r8, r8, #-1073741824
	add	lr, r8, #1
	add	r1, r3, #24
	lsr	ip, lr, #1
	add	ip, ip, #1
	add	r0, fp, #24
	add	ip, ip, ip, lsl #1
	add	ip, r3, ip, lsl #3
.L258:
	vldr.64	d6, [r0, #-24]	@ int
	vldr.64	d7, [r0, #-16]	@ int
	ldrd	r6, [r0, #-8]
	add	r1, r1, #24
	cmp	r1, ip
	add	r0, r0, #24
	vstr.64	d6, [r1, #-48]	@ int
	vstr.64	d7, [r1, #-40]	@ int
	strd	r6, [r1, #-32]
	bne	.L258
	bic	r1, lr, #1
	cmp	lr, r1
	add	r1, r1, r1, lsl #1
	add	ip, fp, r1, lsl #2
	add	r0, r3, r1, lsl #2
	beq	.L260
	ldr	lr, [ip, #4]
	ldr	r6, [fp, r1, lsl #2]
	ldr	ip, [ip, #8]
	str	r6, [r3, r1, lsl #2]
	str	lr, [r0, #4]
	str	ip, [r0, #8]
.L260:
	add	r8, r8, #2
	add	r8, r8, r8, lsl #1
	add	r10, r3, r8, lsl #2
.L256:
	cmp	fp, #0
	beq	.L262
	sub	r1, r2, fp
	mov	r0, fp
	str	r3, [sp, #12]
	bl	_ZdlPvj
	ldr	r3, [sp, #12]
.L262:
	stm	r9, {r3, r10}
	ldr	r3, [sp, #8]
	str	r3, [r9, #8]
	b	.L248
.L283:
	ldr	r3, .L284
	cmp	r10, r3
	movcs	r10, r3
	add	r10, r10, r10, lsl #1
	lsl	r10, r10, #2
.L254:
	mov	r0, r10
.LEHB4:
	bl	_Znwj
	add	r2, r0, r10
	str	r2, [sp, #8]
	mov	r3, r0
	ldr	r2, [r9, #8]
	add	r10, r0, #12
	b	.L255
.L257:
	mov	r0, r3
	mov	ip, fp
.L261:
	ldmdb	r1, {r7, lr}
	ldr	r10, [r1, #-12]
	add	ip, ip, #12
	cmp	r6, ip
	str	r10, [r0]
	stmib	r0, {r7, lr}
	add	r1, r1, #12
	add	r0, r0, #12
	bne	.L261
	bic	r8, r8, #-1073741824
	b	.L260
.L282:
	ldr	r0, .L284+4
	bl	_ZSt20__throw_length_errorPKc
.LEHE4:
.L253:
	mvn	r10, #-2147483641
	b	.L254
.L269:
	b	.L266
.L270:
	mov	r1, #8
	mov	r0, r7
	bl	_ZdlPvj
.L266:
	mov	r0, r9
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
.LEHB5:
	bl	__cxa_end_cleanup
.LEHE5:
.L285:
	.align	2
.L284:
	.word	178956970
	.word	.LC3
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA2514:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2514-.LLSDACSB2514
.LLSDACSB2514:
	.uleb128 .LEHB3-.LFB2514
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L269-.LFB2514
	.uleb128 0
	.uleb128 .LEHB4-.LFB2514
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L270-.LFB2514
	.uleb128 0
	.uleb128 .LEHB5-.LFB2514
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2514:
	.text
	.fnend
	.size	_Z13getEmptyBoxesPA9_i, .-_Z13getEmptyBoxesPA9_i
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,"axG",%progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, %function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_:
	.fnstart
.LFB3345:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	popeq	{r4, r5, r6, pc}
.L290:
	ldr	r3, [r4]
	subs	r0, r3, #0
	beq	.L288
.L293:
	ldr	r1, [r4, #8]
	add	r4, r4, #12
	sub	r1, r1, r3
	bl	_ZdlPvj
	cmp	r5, r4
	popeq	{r4, r5, r6, pc}
	ldr	r3, [r4]
	subs	r0, r3, #0
	bne	.L293
.L288:
	add	r4, r4, #12
	cmp	r5, r4
	bne	.L290
	pop	{r4, r5, r6, pc}
	.cantunwind
	.fnend
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_,"axG",%progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC5ERKS3_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_:
	.fnstart
.LFB2926:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	ldm	r1, {r2, r4}
	.pad #12
	sub	sp, sp, #12
	mov	r5, r1
	subs	r4, r4, r2
	mov	r9, r0
	str	r3, [r0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	beq	.L307
	cmn	r4, #-2147483640
	bhi	.L317
	mov	r0, r4
.LEHB6:
	bl	_Znwj
.LEHE6:
	mov	r3, r0
	str	r0, [sp, #4]
.L295:
	add	r4, r3, r4
	str	r3, [r9]
	stmib	r9, {r3, r4}
	ldm	r5, {r6, r10}
	cmp	r10, r6
	beq	.L308
	add	r6, r6, #12
	add	r4, r3, #12
	mov	r7, #0
.L303:
	ldr	r5, [r6, #-8]
	ldr	r3, [r6, #-12]
	sub	r2, r4, #12
	subs	r5, r5, r3
	mov	r8, r6
	mov	fp, r4
	str	r2, [sp]
	str	r7, [r4, #-12]
	str	r7, [r4, #-8]
	str	r7, [r4, #-4]
	beq	.L309
	cmn	r5, #-2147483644
	bhi	.L318
	mov	r0, r5
.LEHB7:
	bl	_Znwj
	mov	r3, r0
.L298:
	add	r5, r3, r5
	str	r3, [r4, #-12]
	stmdb	r4, {r3, r5}
	ldr	r1, [r6, #-12]
	ldr	r2, [r6, #-8]
	cmp	r1, r2
	sub	r5, r2, r1
	beq	.L319
	mov	r0, r3
	mov	r2, r5
	bl	memmove
	cmp	r10, r8
	add	r6, r6, #12
	add	r4, r4, #12
	add	r3, r0, r5
	str	r3, [r4, #-20]
	bne	.L303
.L297:
	mov	r0, r9
	str	fp, [r9, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L319:
	add	r3, r3, r5
	cmp	r10, r8
	str	r3, [r4, #-8]
	add	r6, r6, #12
	add	r4, r4, #12
	bne	.L303
	b	.L297
.L309:
	mov	r3, r5
	b	.L298
.L307:
	mov	r3, r4
	str	r4, [sp, #4]
	b	.L295
.L308:
	mov	fp, r3
	mov	r0, r9
	str	fp, [r9, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L318:
	bl	_ZSt17__throw_bad_allocv
.LEHE7:
.L317:
.LEHB8:
	bl	_ZSt17__throw_bad_allocv
.LEHE8:
.L311:
	bl	__cxa_begin_catch
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
.LEHB9:
	bl	__cxa_rethrow
.LEHE9:
.L310:
	bl	__cxa_end_catch
	ldr	r0, [r9]
	ldr	r1, [r9, #8]
	cmp	r0, #0
	sub	r1, r1, r0
	beq	.L306
	bl	_ZdlPvj
.L306:
.LEHB10:
	bl	__cxa_end_cleanup
.LEHE10:
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA2926:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT2926-.LLSDATTD2926
.LLSDATTD2926:
	.byte	0x1
	.uleb128 .LLSDACSE2926-.LLSDACSB2926
.LLSDACSB2926:
	.uleb128 .LEHB6-.LFB2926
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2926
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L311-.LFB2926
	.uleb128 0x1
	.uleb128 .LEHB8-.LFB2926
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2926
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L310-.LFB2926
	.uleb128 0
	.uleb128 .LEHB10-.LFB2926
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2926:
	.byte	0x1
	.byte	0
	.align	2
	.word	0
.LLSDATT2926:
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_,"axG",%progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC5ERKS3_,comdat
	.fnend
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"cannot create std::vector larger than max_size()\000"
	.text
	.align	2
	.global	_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE, %function
_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE:
	.fnstart
.LFB2557:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9}
	.vsave {d8, d9}
	ldr	r6, [r1]
	ldr	r3, [r1, #4]
	cmp	r6, r3
	.pad #84
	sub	sp, sp, #84
	beq	.L380
	mov	r5, r1
	ldm	r6, {r1, r3}
	vmov	s18, r0	@ int
	sub	r2, r3, r1
	cmp	r2, #0
	mov	r4, r2
	str	r2, [sp, #20]
	beq	.L322
	cmn	r2, #-2147483644
	bhi	.L425
	mov	r0, r2
.LEHB11:
	bl	_Znwj
.LEHE11:
	ldm	r6, {r1, r4}
	cmp	r1, r4
	sub	r4, r4, r1
	mov	r6, r4
	str	r0, [sp, #16]
	beq	.L324
.L378:
	ldr	r0, [sp, #16]
	mov	r2, r6
	bl	memmove
.L324:
	mov	r3, #0
	str	r3, [sp, #48]
	ldr	r3, [sp, #16]
	cmp	r4, #0
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [sp, #40]
	beq	.L381
	cmn	r6, #-2147483644
	bhi	.L426
	mov	r0, r6
.LEHB12:
	bl	_Znwj
.LEHE12:
.L325:
	add	r4, r0, r6
	cmp	r6, #0
	str	r0, [sp, #40]
	str	r4, [sp, #48]
	beq	.L327
	ldr	r1, [sp, #16]
	mov	r2, r6
	bl	memcpy
.L327:
	vmov	r1, s18	@ int
	add	r2, sp, #40
	add	r0, sp, #56
	str	r4, [sp, #44]
.LEHB13:
	bl	_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE
.LEHE13:
	ldr	r0, [sp, #40]
	cmp	r0, #0
	beq	.L328
	ldr	r1, [sp, #48]
	sub	r1, r1, r0
	bl	_ZdlPvj
.L328:
	ldr	r4, [sp, #76]
	cmp	r4, #0
	beq	.L329
	ldr	r6, [r5]
	ldr	r3, [r5, #4]
	add	r7, r6, #12
	sub	r4, r3, r7
	str	r3, [sp]
	mov	r3, #0
	mov	r2, #0
	str	r3, [sp, #32]
	mov	r3, #0
	cmn	r4, #-2147483640
	strd	r2, [sp, #24]
	bhi	.L427
	cmp	r4, #0
	beq	.L383
	mov	r0, r4
.LEHB14:
	bl	_Znwj
.LEHE14:
	mov	r5, r0
.L331:
	ldr	r3, [sp]
	add	r4, r5, r4
	cmp	r3, r7
	str	r4, [sp, #32]
	str	r5, [sp, #24]
	beq	.L384
	add	r6, r6, #24
	add	r4, r5, #12
	mov	r9, #0
.L338:
	ldr	r2, [r6, #-8]
	ldr	r1, [r6, #-12]
	sub	fp, r4, #12
	subs	r7, r2, r1
	mov	r10, r6
	mov	r8, r4
	str	r9, [r4, #-12]
	str	r9, [r4, #-8]
	str	r9, [r4, #-4]
	beq	.L385
	cmn	r7, #-2147483644
	bhi	.L428
	mov	r0, r7
.LEHB15:
	bl	_Znwj
.LEHE15:
	ldr	r1, [r6, #-12]
	ldr	r2, [r6, #-8]
	mov	r3, r0
	sub	fp, r2, r1
.L333:
	add	r7, r3, r7
	cmp	r2, r1
	str	r7, [r4, #-4]
	str	r3, [r4, #-12]
	str	r3, [r4, #-8]
	beq	.L335
	mov	r2, fp
	mov	r0, r3
	bl	memmove
	ldr	r2, [sp]
	add	r6, r6, #12
	cmp	r2, r10
	add	r4, r4, #12
	add	r3, r0, fp
	str	r3, [r4, #-20]
	bne	.L338
.L337:
	ldr	r5, [sp, #24]
.L332:
	ldr	r3, [sp, #68]
	add	r2, sp, #60
	cmp	r3, r2
	moveq	r4, #0
	str	r8, [sp, #28]
	str	r3, [sp]
	beq	.L340
	ldr	r3, [sp, #8]
	vmov	r2, s18	@ int
	vldr.64	d8, .L433	@ int
	add	r3, r3, r3, lsl #3
	mov	r7, #0
	add	r3, r2, r3, lsl #2
	str	r3, [sp, #12]
.L367:
	ldr	r3, [sp]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #4]
	ldr	r3, [r3, #16]
	subs	r4, r8, r5
	vstr.64	d8, [sp, #40]	@ int
	str	r3, [r2, r1, lsl #2]
	str	r7, [sp, #48]
	beq	.L386
	cmn	r4, #-2147483640
	bhi	.L429
	mov	r0, r4
.LEHB16:
	bl	_Znwj
.LEHE16:
	ldr	r5, [sp, #24]
	ldr	r8, [sp, #28]
	mov	r3, r0
	str	r0, [sp, #8]
.L346:
	add	r4, r3, r4
	cmp	r5, r8
	str	r4, [sp, #48]
	str	r3, [sp, #40]
	str	r3, [sp, #44]
	beq	.L387
	add	r5, r5, #12
	add	r4, r3, #12
.L354:
	ldr	r6, [r5, #-8]
	ldr	r3, [r5, #-12]
	sub	fp, r4, #12
	subs	r6, r6, r3
	mov	r9, r5
	mov	r10, r4
	str	r7, [r4, #-12]
	str	r7, [r4, #-8]
	str	r7, [r4, #-4]
	beq	.L388
	cmn	r6, #-2147483644
	bhi	.L430
	mov	r0, r6
.LEHB17:
	bl	_Znwj
.LEHE17:
	mov	r3, r0
.L349:
	add	r6, r3, r6
	str	r6, [r4, #-4]
	str	r3, [r4, #-12]
	str	r3, [r4, #-8]
	ldr	r1, [r5, #-12]
	ldr	r6, [r5, #-8]
	cmp	r1, r6
	sub	r6, r6, r1
	beq	.L431
	mov	r0, r3
	mov	r2, r6
	bl	memmove
	cmp	r9, r8
	add	r5, r5, #12
	add	r4, r4, #12
	add	r3, r0, r6
	str	r3, [r4, #-20]
	bne	.L354
.L348:
	vmov	r0, s18	@ int
	add	r1, sp, #40
	str	r10, [sp, #44]
.LEHB18:
	bl	_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE
.LEHE18:
	ldr	r5, [sp, #40]
	ldr	r6, [sp, #44]
	mov	r4, r0
	cmp	r5, r6
	beq	.L360
.L364:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L361
	ldr	r1, [r5, #8]
	add	r5, r5, #12
	sub	r1, r1, r0
	bl	_ZdlPvj
	cmp	r5, r6
	bne	.L364
.L362:
	ldr	r6, [sp, #40]
.L360:
	cmp	r6, #0
	beq	.L365
	ldr	r1, [sp, #48]
	mov	r0, r6
	sub	r1, r1, r6
	bl	_ZdlPvj
.L365:
	cmp	r4, #0
	bne	.L432
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	ldr	r0, [sp]
	str	r4, [r3, r2, lsl #2]
	bl	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	add	r2, sp, #60
	ldr	r5, [sp, #24]
	ldr	r8, [sp, #28]
	cmp	r0, r2
	str	r0, [sp]
	bne	.L367
.L340:
	cmp	r5, r8
	beq	.L368
.L372:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L369
	ldr	r1, [r5, #8]
	add	r5, r5, #12
	sub	r1, r1, r0
	bl	_ZdlPvj
	cmp	r5, r8
	bne	.L372
.L370:
	ldr	r8, [sp, #24]
.L368:
	cmp	r8, #0
	beq	.L329
	ldr	r1, [sp, #32]
	mov	r0, r8
	sub	r1, r1, r8
	bl	_ZdlPvj
.L329:
	ldr	r0, [sp, #64]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
	ldrd	r0, [sp, #16]
	bl	_ZdlPvj
	mov	r0, r4
	add	sp, sp, #84
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L322:
	cmp	r3, r1
	movne	r6, r2
	strne	r6, [sp, #16]
	bne	.L378
	mov	r4, r2
	ldr	r2, [r2]
	str	r2, [sp, #8]
	ldr	r2, [r4, #4]
	str	r4, [sp, #40]
	str	r2, [sp, #4]
	str	r4, [sp, #48]
	str	r4, [sp, #16]
	b	.L327
.L361:
	add	r5, r5, #12
	cmp	r6, r5
	bne	.L364
	b	.L362
.L431:
	add	r3, r3, r6
	cmp	r9, r8
	str	r3, [r4, #-8]
	add	r5, r5, #12
	add	r4, r4, #12
	bne	.L354
	b	.L348
.L388:
	mov	r3, r6
	b	.L349
.L335:
	ldr	r2, [sp]
	add	r3, r3, fp
	cmp	r2, r10
	str	r3, [r4, #-8]
	add	r6, r6, #12
	add	r4, r4, #12
	bne	.L338
	b	.L337
.L369:
	add	r5, r5, #12
	cmp	r5, r8
	bne	.L372
	b	.L370
.L385:
	mov	fp, r7
	mov	r3, r7
	b	.L333
.L386:
	mov	r3, r4
	str	r4, [sp, #8]
	b	.L346
.L380:
	mov	r4, #1
	mov	r0, r4
	add	sp, sp, #84
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L432:
	ldr	r5, [sp, #24]
	ldr	r8, [sp, #28]
	b	.L340
.L387:
	mov	r10, r3
	b	.L348
.L381:
	mov	r0, r4
	b	.L325
.L383:
	mov	r5, r4
	b	.L331
.L384:
	mov	r8, r5
	b	.L332
.L430:
.LEHB19:
	bl	_ZSt17__throw_bad_allocv
.LEHE19:
.L428:
.LEHB20:
	bl	_ZSt17__throw_bad_allocv
.LEHE20:
.L425:
.LEHB21:
	bl	_ZSt17__throw_bad_allocv
.LEHE21:
.L429:
.LEHB22:
	bl	_ZSt17__throw_bad_allocv
.LEHE22:
.L426:
.LEHB23:
	bl	_ZSt17__throw_bad_allocv
.LEHE23:
.L427:
	ldr	r0, .L433+8
.LEHB24:
	bl	_ZSt20__throw_length_errorPKc
.LEHE24:
.L392:
	b	.L359
.L393:
	add	r0, sp, #40
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
.L359:
	add	r0, sp, #24
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
.L345:
	ldr	r0, [sp, #64]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
.L376:
	ldrd	r0, [sp, #16]
	bl	_ZdlPvj
.LEHB25:
	bl	__cxa_end_cleanup
.LEHE25:
.L390:
	b	.L376
.L396:
	bl	__cxa_begin_catch
	mov	r1, fp
	mov	r0, r5
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
.LEHB26:
	bl	__cxa_rethrow
.LEHE26:
.L391:
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #48]
	cmp	r0, #0
	sub	r1, r1, r0
	beq	.L376
	bl	_ZdlPvj
	b	.L376
.L395:
	bl	__cxa_end_catch
.L343:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #32]
	cmp	r0, #0
	sub	r1, r1, r0
	beq	.L345
	bl	_ZdlPvj
	b	.L345
.L394:
	b	.L343
.L398:
	bl	__cxa_begin_catch
	ldr	r0, [sp, #8]
	mov	r1, fp
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
.LEHB27:
	bl	__cxa_rethrow
.LEHE27:
.L397:
	bl	__cxa_end_catch
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #48]
	cmp	r0, #0
	sub	r1, r1, r0
	beq	.L359
	bl	_ZdlPvj
	b	.L359
.L434:
	.align	3
.L433:
	.word	0
	.word	0
	.word	.LC4
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA2557:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT2557-.LLSDATTD2557
.LLSDATTD2557:
	.byte	0x1
	.uleb128 .LLSDACSE2557-.LLSDACSB2557
.LLSDACSB2557:
	.uleb128 .LEHB11-.LFB2557
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2557
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L390-.LFB2557
	.uleb128 0
	.uleb128 .LEHB13-.LFB2557
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L391-.LFB2557
	.uleb128 0
	.uleb128 .LEHB14-.LFB2557
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L394-.LFB2557
	.uleb128 0
	.uleb128 .LEHB15-.LFB2557
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L396-.LFB2557
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB2557
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L392-.LFB2557
	.uleb128 0
	.uleb128 .LEHB17-.LFB2557
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L398-.LFB2557
	.uleb128 0x1
	.uleb128 .LEHB18-.LFB2557
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L393-.LFB2557
	.uleb128 0
	.uleb128 .LEHB19-.LFB2557
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L398-.LFB2557
	.uleb128 0x1
	.uleb128 .LEHB20-.LFB2557
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L396-.LFB2557
	.uleb128 0x1
	.uleb128 .LEHB21-.LFB2557
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB2557
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L392-.LFB2557
	.uleb128 0
	.uleb128 .LEHB23-.LFB2557
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L390-.LFB2557
	.uleb128 0
	.uleb128 .LEHB24-.LFB2557
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L394-.LFB2557
	.uleb128 0
	.uleb128 .LEHB25-.LFB2557
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB2557
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L395-.LFB2557
	.uleb128 0
	.uleb128 .LEHB27-.LFB2557
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L397-.LFB2557
	.uleb128 0
.LLSDACSE2557:
	.byte	0x1
	.byte	0
	.align	2
	.word	0
.LLSDATT2557:
	.text
	.fnend
	.size	_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE, .-_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"Unsolved Sudoku Board:\012\000"
	.align	2
.LC6:
	.ascii	"\012Solved Sudoku Board:\012\000"
	.global	__aeabi_ldivmod
	.align	2
.LC7:
	.ascii	"Time taken:  \000"
	.align	2
.LC8:
	.ascii	"ms\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB2558:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	mov	r2, #23
	.pad #68
	sub	sp, sp, #68
	ldr	r1, .L465
	ldr	r0, .L465+4
.LEHB28:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	bl	_Z16printSudokuBoardv
	mov	r0, sp
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	ldr	r1, .L465+8
	add	r0, sp, #12
	ldm	sp, {r5, r6}
	bl	_Z13getEmptyBoxesPA9_i
.LEHE28:
	ldr	r7, [sp, #12]
	mov	r2, #0
	ldm	r7, {r3, r4}
	str	r2, [sp, #32]
	mov	r2, #0
	subs	r4, r4, r3
	mov	r3, #0
	strd	r2, [sp, #24]
	beq	.L448
	cmn	r4, #-2147483644
	bhi	.L462
	mov	r0, r4
.LEHB29:
	bl	_Znwj
.LEHE29:
	mov	r3, r0
.L436:
	add	r4, r3, r4
	str	r4, [sp, #32]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	ldm	r7, {r1, r2}
	cmp	r1, r2
	sub	r4, r2, r1
	beq	.L438
	mov	r0, r3
	mov	r2, r4
	bl	memmove
	mov	r3, r0
.L438:
	add	r3, r3, r4
	ldr	r1, .L465+8
	add	r2, sp, #24
	add	r0, sp, #40
	str	r3, [sp, #28]
.LEHB30:
	bl	_Z17get_valid_numbersPA9_iSt6vectorIiSaIiEE
.LEHE30:
	ldr	r0, [sp, #24]
	cmp	r0, #0
	beq	.L439
	ldr	r1, [sp, #32]
	sub	r1, r1, r0
	bl	_ZdlPvj
.L439:
	add	r1, sp, #12
	add	r0, sp, #24
.LEHB31:
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_
.LEHE31:
	ldr	r0, .L465+8
	add	r1, sp, #24
.LEHB32:
	bl	_Z11solve_boardPA9_iSt6vectorIS1_IiSaIiEESaIS3_EE
.LEHE32:
	add	r0, sp, #24
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	mov	r0, sp
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	ldr	r1, .L465+12
	ldr	r0, .L465+4
	mov	r2, #22
	ldm	sp, {r4, r7}
.LEHB33:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	bl	_Z16printSudokuBoardv
	subs	r0, r4, r5
	ldr	r2, .L465+16
	sbc	r1, r7, r6
	mov	r3, #0
	bl	__aeabi_ldivmod
	mov	r2, #13
	mov	r4, r1
	mov	r5, r0
	ldr	r1, .L465+20
	ldr	r0, .L465+4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, .L465+4
	mov	r2, r5
	mov	r3, r4
	bl	_ZNSo9_M_insertIxEERSoT_
	ldr	r1, .L465+24
	mov	r2, #2
	mov	r4, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r3, [r4]
	ldr	r3, [r3, #-12]
	add	r3, r4, r3
	ldr	r5, [r3, #124]
	cmp	r5, #0
	beq	.L463
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #0
	ldrbne	r1, [r5, #39]	@ zero_extendqisi2
	beq	.L464
.L442:
	mov	r0, r4
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	ldr	r0, [sp, #48]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
	add	r0, sp, #12
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	mov	r0, #0
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L464:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r3, [r5]
	mov	r1, #10
	mov	r0, r5
	ldr	r3, [r3, #24]
	blx	r3
	mov	r1, r0
	b	.L442
.L448:
	mov	r3, r4
	b	.L436
.L463:
	bl	_ZSt16__throw_bad_castv
.LEHE33:
.L462:
.LEHB34:
	bl	_ZSt17__throw_bad_allocv
.LEHE34:
.L451:
.L447:
	ldr	r0, [sp, #48]
	bl	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE.isra.0
.L445:
	add	r0, sp, #12
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
.LEHB35:
	bl	__cxa_end_cleanup
.LEHE35:
.L449:
	b	.L445
.L450:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #32]
	cmp	r0, #0
	sub	r1, r1, r0
	beq	.L445
	bl	_ZdlPvj
	b	.L445
.L452:
	add	r0, sp, #24
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	b	.L447
.L466:
	.align	2
.L465:
	.word	.LC5
	.word	_ZSt4cout
	.word	.LANCHOR0
	.word	.LC6
	.word	1000000
	.word	.LC7
	.word	.LC8
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA2558:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2558-.LLSDACSB2558
.LLSDACSB2558:
	.uleb128 .LEHB28-.LFB2558
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB2558
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L449-.LFB2558
	.uleb128 0
	.uleb128 .LEHB30-.LFB2558
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L450-.LFB2558
	.uleb128 0
	.uleb128 .LEHB31-.LFB2558
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L451-.LFB2558
	.uleb128 0
	.uleb128 .LEHB32-.LFB2558
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L452-.LFB2558
	.uleb128 0
	.uleb128 .LEHB33-.LFB2558
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L451-.LFB2558
	.uleb128 0
	.uleb128 .LEHB34-.LFB2558
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L449-.LFB2558
	.uleb128 0
	.uleb128 .LEHB35-.LFB2558
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE2558:
	.section	.text.startup
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_sudoku_board, %function
_GLOBAL__sub_I_sudoku_board:
	.fnstart
.LFB3572:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L469
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L469+4
	pop	{r4, lr}
	ldr	r1, .L469+8
	b	__aeabi_atexit
.L470:
	.align	2
.L469:
	.word	.LANCHOR2
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_sudoku_board, .-_GLOBAL__sub_I_sudoku_board
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_sudoku_board
	.global	sudoku_board
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sudoku_board, %object
	.size	sudoku_board, 324
sudoku_board:
	.word	5
	.word	3
	.word	0
	.word	0
	.word	7
	.word	0
	.word	0
	.word	0
	.word	0
	.word	6
	.word	0
	.word	0
	.word	1
	.word	9
	.word	5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	9
	.word	8
	.word	0
	.word	0
	.word	0
	.word	0
	.word	6
	.word	0
	.word	8
	.word	0
	.word	0
	.word	0
	.word	6
	.word	0
	.word	0
	.word	0
	.word	3
	.word	4
	.word	0
	.word	0
	.word	8
	.word	0
	.word	3
	.word	0
	.word	0
	.word	1
	.word	7
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	6
	.word	0
	.word	6
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	8
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4
	.word	1
	.word	9
	.word	0
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	8
	.word	0
	.word	0
	.word	7
	.word	9
	.bss
	.align	2
	.set	.LANCHOR2,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
	.section	.note.GNU-stack,"",%progbits
