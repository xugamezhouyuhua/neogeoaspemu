	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"dipsw.c"
	.comm	neogeo_hard_dipsw,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Test Switch\000"
	.align	2
.LC1:
	.ascii	"Off\000"
	.align	2
.LC2:
	.ascii	"On\000"
	.align	2
.LC3:
	.ascii	"Coin Chutes\000"
	.align	2
.LC4:
	.ascii	"1\000"
	.align	2
.LC5:
	.ascii	"2\000"
	.align	2
.LC6:
	.ascii	"Autofire (in some games)\000"
	.align	2
.LC7:
	.ascii	"COMM Settings\000"
	.align	2
.LC8:
	.ascii	"3\000"
	.align	2
.LC9:
	.ascii	"4\000"
	.align	2
.LC10:
	.ascii	"Free Play\000"
	.align	2
.LC11:
	.ascii	"Freeze\000"
	.align	2
.LC12:
	.ascii	"\012\000"
	.align	2
.LC13:
	.ascii	"Return to main menu\000"
	.align	2
.LC14:
	.ascii	"\000\000"
	.data
	.align	2
	.type	dipswitch_default, %object
	.size	dipswitch_default, 396
dipswitch_default:
	.word	.LC0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC3
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.word	.LC4
	.word	.LC5
	.space	28
	.word	.LC6
	.byte	1
	.byte	4
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC7
	.byte	1
	.byte	56
	.byte	0
	.byte	4
	.word	.LC1
	.word	.LC4
	.word	.LC5
	.word	.LC8
	.word	.LC9
	.space	16
	.word	.LC10
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC11
	.byte	1
	.byte	-128
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	.LC13
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	.LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.section	.rodata
	.align	2
.LC15:
	.ascii	"Hard Dip 3 (Region)\000"
	.align	2
.LC16:
	.ascii	"Asia\000"
	.align	2
.LC17:
	.ascii	"Japan\000"
	.data
	.align	2
	.type	dipswitch_pcb, %object
	.size	dipswitch_pcb, 440
dipswitch_pcb:
	.word	.LC0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC3
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.word	.LC4
	.word	.LC5
	.space	28
	.word	.LC6
	.byte	1
	.byte	4
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC7
	.byte	1
	.byte	56
	.byte	0
	.byte	4
	.word	.LC1
	.word	.LC4
	.word	.LC5
	.word	.LC8
	.word	.LC9
	.space	16
	.word	.LC10
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC11
	.byte	1
	.byte	-128
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC15
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	.LC16
	.word	.LC17
	.space	28
	.word	.LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	.LC13
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	.LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.section	.rodata
	.align	2
.LC18:
	.ascii	"Mahjong Control Panel\000"
	.data
	.align	2
	.type	dipswitch_mjneogeo, %object
	.size	dipswitch_mjneogeo, 396
dipswitch_mjneogeo:
	.word	.LC0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC3
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.word	.LC4
	.word	.LC5
	.space	28
	.word	.LC18
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC7
	.byte	1
	.byte	56
	.byte	0
	.byte	4
	.word	.LC1
	.word	.LC4
	.word	.LC5
	.word	.LC8
	.word	.LC9
	.space	16
	.word	.LC10
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC11
	.byte	1
	.byte	-128
	.byte	0
	.byte	1
	.word	.LC1
	.word	.LC2
	.space	28
	.word	.LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	.LC13
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	.LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.text
	.align	2
	.global	load_dipswitch
	.type	load_dipswitch, %function
load_dipswitch:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #12
	sub	sp, sp, #12
	ldr	r3, .L15
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	mvn	r3, r3
	strb	r3, [fp, #-9]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L15+4
	ldrh	r3, [r3, #0]
	cmp	r3, #54
	beq	.L3
	cmp	r3, #54
	bgt	.L4
	cmp	r3, #4
	beq	.L3
	cmp	r3, #39
	beq	.L3
	b	.L2
.L4:
	cmp	r3, #72
	beq	.L3
	cmp	r3, #152
	bne	.L2
.L3:
	ldr	r3, .L15+8
	str	r3, [fp, #-8]
	b	.L5
.L2:
	ldr	r3, .L15+12
	str	r3, [fp, #-8]
	mov	r0, r0	@ nop
.L5:
	ldr	r3, .L15+16
	ldr	r3, [r3, #0]
	cmp	r3, #31
	beq	.L6
	ldr	r3, .L15+16
	ldr	r3, [r3, #0]
	cmp	r3, #32
	bne	.L7
.L6:
	ldr	r3, .L15+20
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #264
	ldr	r2, .L15+24
	ldr	r2, [r2, #0]
	and	r2, r2, #255
	strb	r2, [r3, #6]
.L7:
	ldrb	r3, [fp, #-9]
	and	r3, r3, #1
	and	r2, r3, #255
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-8]
	add	r3, r3, #44
	ldrb	r2, [fp, #-9]	@ zero_extendqisi2
	and	r2, r2, #2
	cmp	r2, #0
	moveq	r2, #0
	movne	r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-8]
	add	r3, r3, #88
	ldrb	r2, [fp, #-9]	@ zero_extendqisi2
	and	r2, r2, #4
	cmp	r2, #0
	moveq	r2, #0
	movne	r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-8]
	add	r3, r3, #176
	ldrb	r2, [fp, #-9]	@ zero_extendqisi2
	and	r2, r2, #64
	cmp	r2, #0
	moveq	r2, #0
	movne	r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-8]
	add	r3, r3, #220
	ldrb	r2, [fp, #-9]	@ zero_extendqisi2
	mov	r2, r2, lsr #7
	and	r2, r2, #255
	strb	r2, [r3, #6]
	ldr	r3, .L15
	ldr	r3, [r3, #0]
	and	r3, r3, #56
	cmp	r3, #32
	beq	.L11
	cmp	r3, #32
	bgt	.L14
	cmp	r3, #0
	beq	.L9
	cmp	r3, #16
	beq	.L10
	b	.L8
.L14:
	cmp	r3, #48
	beq	.L12
	cmp	r3, #56
	beq	.L13
	b	.L8
.L9:
	ldr	r3, [fp, #-8]
	add	r3, r3, #132
	mov	r2, #4
	strb	r2, [r3, #6]
	b	.L8
.L10:
	ldr	r3, [fp, #-8]
	add	r3, r3, #132
	mov	r2, #3
	strb	r2, [r3, #6]
	b	.L8
.L11:
	ldr	r3, [fp, #-8]
	add	r3, r3, #132
	mov	r2, #2
	strb	r2, [r3, #6]
	b	.L8
.L12:
	ldr	r3, [fp, #-8]
	add	r3, r3, #132
	mov	r2, #1
	strb	r2, [r3, #6]
	b	.L8
.L13:
	ldr	r3, [fp, #-8]
	add	r3, r3, #132
	mov	r2, #0
	strb	r2, [r3, #6]
	mov	r0, r0	@ nop
.L8:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L16:
	.align	2
.L15:
	.word	neogeo_dipswitch
	.word	neogeo_ngh
	.word	dipswitch_mjneogeo
	.word	dipswitch_default
	.word	machine_init_type
	.word	dipswitch_pcb
	.word	neogeo_hard_dipsw
	.fnend
	.size	load_dipswitch, .-load_dipswitch
	.align	2
	.global	save_dipswitch
	.type	save_dipswitch, %function
save_dipswitch:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #12
	sub	sp, sp, #12
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, .L39
	ldrh	r3, [r3, #0]
	cmp	r3, #54
	beq	.L19
	cmp	r3, #54
	bgt	.L20
	cmp	r3, #4
	beq	.L19
	cmp	r3, #39
	beq	.L19
	b	.L18
.L20:
	cmp	r3, #72
	beq	.L19
	cmp	r3, #152
	bne	.L18
.L19:
	ldr	r3, .L39+4
	str	r3, [fp, #-12]
	b	.L21
.L18:
	ldr	r3, .L39+8
	str	r3, [fp, #-12]
	mov	r0, r0	@ nop
.L21:
	ldr	r3, .L39+12
	ldr	r3, [r3, #0]
	cmp	r3, #31
	beq	.L22
	ldr	r3, .L39+12
	ldr	r3, [r3, #0]
	cmp	r3, #32
	bne	.L23
.L22:
	ldr	r3, .L39+16
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #264
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L39+20
	str	r2, [r3, #0]
.L23:
	mov	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	and	r2, r3, #255
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	add	r3, r3, #44
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L24
	mov	r3, #0
	b	.L25
.L24:
	mov	r3, #2
.L25:
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r1
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	add	r3, r3, #88
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L26
	mov	r3, #0
	b	.L27
.L26:
	mov	r3, #4
.L27:
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r1
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	add	r3, r3, #176
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L28
	mov	r3, #0
	b	.L29
.L28:
	mov	r3, #64
.L29:
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r1
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	add	r3, r3, #220
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L30
	mov	r3, #0
	b	.L31
.L30:
	mov	r3, #128
.L31:
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r1
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	add	r3, r3, #132
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L32
.L38:
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L32
.L33:
	ldrb	r3, [fp, #-5]
	orr	r3, r3, #56
	strb	r3, [fp, #-5]
	b	.L32
.L34:
	ldrb	r3, [fp, #-5]
	orr	r3, r3, #48
	strb	r3, [fp, #-5]
	b	.L32
.L35:
	ldrb	r3, [fp, #-5]
	orr	r3, r3, #32
	strb	r3, [fp, #-5]
	b	.L32
.L36:
	ldrb	r3, [fp, #-5]
	orr	r3, r3, #16
	strb	r3, [fp, #-5]
	mov	r0, r0	@ nop
.L32:
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, .L39+24
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L40:
	.align	2
.L39:
	.word	neogeo_ngh
	.word	dipswitch_mjneogeo
	.word	dipswitch_default
	.word	machine_init_type
	.word	dipswitch_pcb
	.word	neogeo_hard_dipsw
	.word	neogeo_dipswitch
	.fnend
	.size	save_dipswitch, .-save_dipswitch
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
