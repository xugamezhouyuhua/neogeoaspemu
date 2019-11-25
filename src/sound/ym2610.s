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
	.file	"ym2610.c"
	.local	tl_tab
	.comm	tl_tab,26624,4
	.local	sin_tab
	.comm	sin_tab,4096,4
	.section	.rodata
	.align	2
	.type	sl_table, %object
	.size	sl_table, 64
sl_table:
	.word	0
	.word	32
	.word	64
	.word	96
	.word	128
	.word	160
	.word	192
	.word	224
	.word	256
	.word	288
	.word	320
	.word	352
	.word	384
	.word	416
	.word	448
	.word	992
	.align	2
	.type	eg_inc, %object
	.size	eg_inc, 152
eg_inc:
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	8
	.byte	4
	.byte	4
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	8
	.byte	8
	.byte	4
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align	2
	.type	eg_rate_select, %object
	.size	eg_rate_select, 128
eg_rate_select:
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align	2
	.type	eg_rate_shift, %object
	.size	eg_rate_shift, 128
eg_rate_shift:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align	2
	.type	dt_tab, %object
	.size	dt_tab, 128
dt_tab:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	16
	.byte	17
	.byte	19
	.byte	20
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.align	2
	.type	opn_fktable, %object
	.size	opn_fktable, 16
opn_fktable:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.align	2
	.type	lfo_samples_per_step, %object
	.size	lfo_samples_per_step, 32
lfo_samples_per_step:
	.word	108
	.word	77
	.word	71
	.word	67
	.word	62
	.word	44
	.word	8
	.word	5
	.align	2
	.type	lfo_ams_depth_shift, %object
	.size	lfo_ams_depth_shift, 4
lfo_ams_depth_shift:
	.byte	8
	.byte	3
	.byte	1
	.byte	0
	.align	2
	.type	lfo_pm_output, %object
	.size	lfo_pm_output, 448
lfo_pm_output:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	6
	.byte	0
	.byte	0
	.byte	4
	.byte	6
	.byte	8
	.byte	8
	.byte	10
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	6
	.byte	0
	.byte	0
	.byte	4
	.byte	6
	.byte	8
	.byte	8
	.byte	10
	.byte	12
	.byte	0
	.byte	0
	.byte	8
	.byte	12
	.byte	16
	.byte	16
	.byte	20
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	4
	.byte	4
	.byte	6
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	6
	.byte	8
	.byte	0
	.byte	0
	.byte	4
	.byte	6
	.byte	8
	.byte	8
	.byte	10
	.byte	12
	.byte	0
	.byte	0
	.byte	8
	.byte	12
	.byte	16
	.byte	16
	.byte	20
	.byte	24
	.byte	0
	.byte	0
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	0
	.byte	0
	.byte	4
	.byte	8
	.byte	8
	.byte	8
	.byte	12
	.byte	16
	.byte	0
	.byte	0
	.byte	8
	.byte	12
	.byte	16
	.byte	16
	.byte	20
	.byte	24
	.byte	0
	.byte	0
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	0
	.byte	0
	.byte	32
	.byte	48
	.byte	64
	.byte	64
	.byte	80
	.byte	96
	.local	lfo_pm_table
	.comm	lfo_pm_table,131072,4
	.local	SSG
	.comm	SSG,208,4
	.local	YM2610
	.comm	YM2610,20732,4
	.local	m2
	.comm	m2,4,4
	.local	c1
	.comm	c1,4,4
	.local	c2
	.comm	c2,4,4
	.local	mem
	.comm	mem,4,4
	.local	out_fm
	.comm	out_fm,32,4
	.local	out_ssg
	.comm	out_ssg,4,4
	.local	out_adpcma
	.comm	out_adpcma,16,4
	.local	out_delta
	.comm	out_delta,16,4
	.local	LFO_AM
	.comm	LFO_AM,4,4
	.local	LFO_PM
	.comm	LFO_PM,4,4
	.text
	.align	2
	.type	FM_STATUS_SET, %function
FM_STATUS_SET:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	and	r2, r3, #255
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #23]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #23]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	and	r3, r2, r3
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L1
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3, #21]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #1076]
	mov	r0, #1
	blx	r3
.L1:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	FM_STATUS_SET, .-FM_STATUS_SET
	.align	2
	.type	FM_STATUS_RESET, %function
FM_STATUS_RESET:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	and	r3, r3, #255
	mvn	r3, r3
	and	r3, r3, #255
	and	r3, r2, r3
	and	r3, r3, #255
	and	r2, r3, #255
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #23]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #23]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	and	r3, r2, r3
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L3
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #21]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #1076]
	mov	r0, #0
	blx	r3
.L3:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	FM_STATUS_RESET, .-FM_STATUS_RESET
	.align	2
	.type	FM_IRQMASK_SET, %function
FM_IRQMASK_SET:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	and	r2, r3, #255
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #22]
	ldr	r0, [fp, #-8]
	mov	r1, #0
	bl	FM_STATUS_SET
	ldr	r0, [fp, #-8]
	mov	r1, #0
	bl	FM_STATUS_RESET
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	FM_IRQMASK_SET, .-FM_IRQMASK_SET
	.global	__aeabi_f2d
	.align	2
	.type	set_timers, %function
set_timers:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L7
	ldr	r0, [fp, #-16]
	mov	r1, #2
	bl	FM_STATUS_RESET
.L7:
	ldr	r3, [fp, #-20]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L8
	ldr	r0, [fp, #-16]
	mov	r1, #1
	bl	FM_STATUS_RESET
.L8:
	ldr	r3, [fp, #-20]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L9
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L10
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	rsb	r3, r3, #256
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-16]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #1072]
	ldr	r3, [fp, #-16]
	ldr	r5, [r3, #44]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #1
	mov	r1, r5
	blx	r4
	b	.L10
.L9:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L10
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #1072]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #1
	mov	r1, #0
	blx	r4
.L10:
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L11
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	bne	.L6
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	rsb	r2, r3, #1024
	ldr	r3, [fp, #-16]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #1072]
	ldr	r3, [fp, #-16]
	ldr	r5, [r3, #36]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, r5
	blx	r4
	b	.L6
.L11:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #1072]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	blx	r4
.L6:
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	set_timers, .-set_timers
	.align	2
	.type	TimerAOver, %function
TimerAOver:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L14
	ldr	r0, [fp, #-16]
	mov	r1, #1
	bl	FM_STATUS_SET
.L14:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	rsb	r2, r3, #1024
	ldr	r3, [fp, #-16]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #1072]
	ldr	r3, [fp, #-16]
	ldr	r5, [r3, #36]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, r5
	blx	r4
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	TimerAOver, .-TimerAOver
	.align	2
	.type	TimerBOver, %function
TimerBOver:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L16
	ldr	r0, [fp, #-16]
	mov	r1, #2
	bl	FM_STATUS_SET
.L16:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	rsb	r3, r3, #256
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-16]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #1072]
	ldr	r3, [fp, #-16]
	ldr	r5, [r3, #44]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #1
	mov	r1, r5
	blx	r4
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	TimerBOver, .-TimerBOver
	.global	__aeabi_fcmpeq
	.global	__aeabi_fsub
	.global	__aeabi_fcmpgt
	.align	2
	.type	FM_STATUS_FLAG, %function
FM_STATUS_FLAG:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]	@ float
	mov	r0, r3
	ldr	r1, .L24	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	bne	.L18
.L23:
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #16]	@ float
	bl	timer_get_time
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fsub
	mov	r3, r0
	mov	r2, #1
	mov	r4, r2
	mov	r0, r3
	ldr	r1, .L24	@ float
	bl	__aeabi_fcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L20
	mov	r3, #0
	mov	r4, r3
.L20:
	and	r3, r4, #255
	cmp	r3, #0
	beq	.L21
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
	mvn	r3, r3, asl #25
	mvn	r3, r3, lsr #25
	and	r3, r3, #255
	b	.L22
.L21:
	ldr	r3, [fp, #-16]
	ldr	r2, .L24	@ float
	str	r2, [r3, #16]	@ float
.L18:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
.L22:
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L25:
	.align	2
.L24:
	.word	0
	.fnend
	.size	FM_STATUS_FLAG, .-FM_STATUS_FLAG
	.align	2
	.type	FM_KEYON, %function
FM_KEYON:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r1, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L26
	ldr	r3, [fp, #-8]
	mov	r2, #1
	str	r2, [r3, #72]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	mov	r2, #4
	strb	r2, [r3, #40]
.L26:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	FM_KEYON, .-FM_KEYON
	.align	2
	.type	FM_KEYOFF, %function
FM_KEYOFF:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r1, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L28
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3, #40]
.L28:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	FM_KEYOFF, .-FM_KEYOFF
	.align	2
	.type	setup_connection, %function
setup_connection:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #36
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, .L41
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-32]
	add	r3, r3, #332
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r3, r3, #336
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	add	r3, r3, #340
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r3, r3, #348
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #320]	@ zero_extendqisi2
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L31
.L40:
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
.L32:
	ldr	r3, [fp, #-12]
	ldr	r2, .L41+4
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+16
	str	r2, [r3, #0]
	b	.L31
.L33:
	ldr	r3, [fp, #-12]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+16
	str	r2, [r3, #0]
	b	.L31
.L34:
	ldr	r3, [fp, #-12]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+16
	str	r2, [r3, #0]
	b	.L31
.L35:
	ldr	r3, [fp, #-12]
	ldr	r2, .L41+4
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	b	.L31
.L36:
	ldr	r3, [fp, #-12]
	ldr	r2, .L41+4
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, .L41+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	b	.L31
.L37:
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+16
	str	r2, [r3, #0]
	b	.L31
.L38:
	ldr	r3, [fp, #-12]
	ldr	r2, .L41+4
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	b	.L31
.L39:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, .L41+8
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
.L31:
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #344]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L42:
	.align	2
.L41:
	.word	out_fm
	.word	c1
	.word	mem
	.word	c2
	.word	m2
	.fnend
	.size	setup_connection, .-setup_connection
	.align	2
	.type	set_det_mul, %function
set_det_mul:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L44
	ldr	r3, [fp, #-20]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	b	.L45
.L44:
	mov	r3, #1
.L45:
	ldr	r2, [fp, #-16]
	str	r3, [r2, #28]
	ldr	r3, [fp, #-8]
	add	r2, r3, #48
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #4
	and	r3, r3, #7
	mov	r3, r3, asl #7
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	mvn	r2, #0
	str	r2, [r3, #36]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	set_det_mul, .-set_det_mul
	.align	2
	.type	set_tl, %function
set_tl:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	and	r3, r3, #127
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3, #44]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	set_tl, .-set_tl
	.align	2
	.type	set_ar_ksr, %function
set_ar_ksr:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #4]
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-24]
	and	r3, r3, #31
	cmp	r3, #0
	beq	.L48
	ldr	r3, [fp, #-24]
	and	r3, r3, #31
	mov	r3, r3, asl #1
	add	r3, r3, #32
	b	.L49
.L48:
	mov	r3, #0
.L49:
	ldr	r2, [fp, #-20]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #6
	and	r3, r3, #255
	rsb	r3, r3, #3
	and	r2, r3, #255
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L50
	ldr	r3, [fp, #-16]
	mvn	r2, #0
	str	r2, [r3, #36]
	b	.L47
.L50:
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	cmp	r3, #93
	bhi	.L52
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L53
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #60]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L53+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #61]
	b	.L47
.L52:
	ldr	r3, [fp, #-20]
	mov	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [fp, #-20]
	mvn	r2, #119
	strb	r2, [r3, #61]
.L47:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L54:
	.align	2
.L53:
	.word	eg_rate_shift
	.word	eg_rate_select
	.fnend
	.size	set_ar_ksr, .-set_ar_ksr
	.align	2
	.type	set_dr, %function
set_dr:
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
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	and	r3, r3, #31
	cmp	r3, #0
	beq	.L56
	ldr	r3, [fp, #-12]
	and	r3, r3, #31
	mov	r3, r3, asl #1
	add	r3, r3, #32
	b	.L57
.L56:
	mov	r3, #0
.L57:
	ldr	r2, [fp, #-8]
	str	r3, [r2, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L58
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L58+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #63]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L59:
	.align	2
.L58:
	.word	eg_rate_shift
	.word	eg_rate_select
	.fnend
	.size	set_dr, .-set_dr
	.align	2
	.type	set_sr, %function
set_sr:
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
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	and	r3, r3, #31
	cmp	r3, #0
	beq	.L61
	ldr	r3, [fp, #-12]
	and	r3, r3, #31
	mov	r3, r3, asl #1
	add	r3, r3, #32
	b	.L62
.L61:
	mov	r3, #0
.L62:
	ldr	r2, [fp, #-8]
	str	r3, [r2, #16]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L63
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #64]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L63+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #65]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L64:
	.align	2
.L63:
	.word	eg_rate_shift
	.word	eg_rate_select
	.fnend
	.size	set_sr, .-set_sr
	.align	2
	.type	set_sl_rr, %function
set_sl_rr:
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
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r2, r3, asr #4
	ldr	r3, .L66
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #52]
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #2
	add	r3, r3, #34
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L66+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #66]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L66+8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #67]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L67:
	.align	2
.L66:
	.word	sl_table
	.word	eg_rate_shift
	.word	eg_rate_select
	.fnend
	.size	set_sl_rr, .-set_sl_rr
	.align	2
	.type	advance_lfo, %function
advance_lfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, .L73
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L69
	ldr	r2, [fp, #-16]
	ldr	r3, .L73+4
	ldr	r3, [r2, r3]
	mov	r3, r3, lsr #24
	and	r3, r3, #255
	and	r3, r3, #127
	strb	r3, [fp, #-5]
	ldr	r2, [fp, #-16]
	ldr	r3, .L73+4
	ldr	r2, [r2, r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L73
	ldr	r3, [r1, r3]
	add	r1, r2, r3
	ldr	r2, [fp, #-16]
	ldr	r3, .L73+4
	str	r1, [r2, r3]
	ldr	r2, [fp, #-16]
	ldr	r3, .L73+4
	ldr	r3, [r2, r3]
	mov	r3, r3, lsr #24
	and	r3, r3, #255
	and	r3, r3, #127
	strb	r3, [fp, #-6]
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #63
	bhi	.L70
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	and	r3, r3, #63
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, .L73+8
	str	r2, [r3, #0]
	b	.L71
.L70:
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	mvn	r3, r3
	and	r3, r3, #63
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, .L73+8
	str	r2, [r3, #0]
.L71:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r3, r3, lsr #2
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	mov	r3, r3, lsr #2
	strb	r3, [fp, #-6]
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	ldr	r3, .L73+12
	str	r2, [r3, #0]
	b	.L68
.L69:
	ldr	r3, .L73+8
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L73+12
	mov	r2, #0
	str	r2, [r3, #0]
.L68:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L74:
	.align	2
.L73:
	.word	17564
	.word	17560
	.word	LFO_AM
	.word	LFO_PM
	.fnend
	.size	advance_lfo, .-advance_lfo
	.align	2
	.type	advance_eg_channel, %function
advance_eg_channel:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #4
	str	r3, [fp, #-16]
.L90:
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L76
.L81:
	.word	.L77
	.word	.L78
	.word	.L79
	.word	.L80
.L80:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	mov	r1, #1
	mov	r3, r1, asl r3
	sub	r3, r3, #1
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L91
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #48]
	mvn	r3, r3
	ldr	r1, [fp, #-28]
	ldrb	r1, [r1, #61]	@ zero_extendqisi2
	mov	r0, r1
	ldr	r1, [fp, #-24]
	ldr	ip, [r1, #1160]
	ldr	r1, [fp, #-28]
	ldrb	r1, [r1, #60]	@ zero_extendqisi2
	mov	r1, ip, lsr r1
	and	r1, r1, #7
	add	r1, r0, r1
	ldr	r0, .L95
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	mul	r3, r1, r3
	mov	r3, r3, asr #4
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bgt	.L91
	ldr	r3, [fp, #-28]
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	mov	r2, #3
	strb	r2, [r3, #40]
	b	.L91
.L79:
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L83
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	mov	r1, #1
	mov	r3, r1, asl r3
	sub	r3, r3, #1
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L92
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #63]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	mov	r3, r0, lsr r3
	and	r3, r3, #7
	add	r3, r1, r3
	ldr	r1, .L95
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #48]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #52]
	cmp	r2, r3
	bcc	.L92
	ldr	r3, [fp, #-28]
	mov	r2, #2
	strb	r2, [r3, #40]
	b	.L92
.L83:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	mov	r1, #1
	mov	r3, r1, asl r3
	sub	r3, r3, #1
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L92
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #63]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	mov	r3, r0, lsr r3
	and	r3, r3, #7
	add	r3, r1, r3
	ldr	r1, .L95
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #48]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #52]
	cmp	r2, r3
	bcc	.L92
	ldr	r3, [fp, #-28]
	mov	r2, #2
	strb	r2, [r3, #40]
	b	.L92
.L78:
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L85
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	mov	r1, #1
	mov	r3, r1, asl r3
	sub	r3, r3, #1
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L93
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #65]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	mov	r3, r0, lsr r3
	and	r3, r3, #7
	add	r3, r1, r3
	ldr	r1, .L95
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, .L95+4
	cmp	r2, r3
	ble	.L93
	ldr	r3, [fp, #-28]
	ldr	r2, .L95+8
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L87
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #69]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L93
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	and	r3, r3, #2
	orr	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L93
.L87:
	ldr	r3, [fp, #-28]
	mov	r2, #4
	strb	r2, [r3, #40]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	and	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L93
.L85:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	mov	r1, #1
	mov	r3, r1, asl r3
	sub	r3, r3, #1
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L93
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #65]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	mov	r3, r0, lsr r3
	and	r3, r3, #7
	add	r3, r1, r3
	ldr	r1, .L95
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, .L95+4
	cmp	r2, r3
	ble	.L93
	ldr	r3, [fp, #-28]
	ldr	r2, .L95+8
	str	r2, [r3, #48]
	b	.L93
.L77:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #66]	@ zero_extendqisi2
	mov	r1, #1
	mov	r3, r1, asl r3
	sub	r3, r3, #1
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L94
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #67]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #1160]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #66]	@ zero_extendqisi2
	mov	r3, r0, lsr r3
	and	r3, r3, #7
	add	r3, r1, r3
	ldr	r1, .L95
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #48]
	ldr	r3, .L95+4
	cmp	r2, r3
	ble	.L94
	ldr	r3, [fp, #-28]
	ldr	r2, .L95+8
	str	r2, [r3, #48]
	ldr	r3, [fp, #-28]
	mov	r2, #0
	strb	r2, [r3, #40]
	b	.L94
.L91:
	mov	r0, r0	@ nop
	b	.L76
.L92:
	mov	r0, r0	@ nop
	b	.L76
.L93:
	mov	r0, r0	@ nop
	b	.L76
.L94:
	mov	r0, r0	@ nop
.L76:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #48]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L89
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #69]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L89
	ldr	r3, [fp, #-8]
	eor	r3, r3, #1020
	eor	r3, r3, #3
	str	r3, [fp, #-8]
.L89:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #56]
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #69]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	and	r3, r3, #255
	eor	r3, r2, r3
	and	r2, r3, #255
	ldr	r3, [fp, #-28]
	strb	r2, [r3, #69]
	ldr	r3, [fp, #-28]
	add	r3, r3, #80
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L90
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L96:
	.align	2
.L95:
	.word	eg_inc
	.word	1022
	.word	1023
	.fnend
	.size	advance_eg_channel, .-advance_eg_channel
	.align	2
	.type	op_calc, %function
op_calc:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	mov	r3, r3, asr #16
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	ldr	r1, .L100
	ldr	r3, [r1, r3, asl #2]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, .L100+4
	cmp	r2, r3
	bhi	.L98
	ldr	r3, .L100+8
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, asl #2]
	b	.L99
.L98:
	mov	r3, #0
.L99:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L101:
	.align	2
.L100:
	.word	sin_tab
	.word	6655
	.word	tl_tab
	.fnend
	.size	op_calc, .-op_calc
	.align	2
	.type	chan_calc, %function
chan_calc:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #48
	sub	sp, sp, #48
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	ldr	r3, .L115
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	ldrb	r3, [r3, #360]	@ zero_extendqisi2
	mov	r3, r2, lsr r3
	str	r3, [fp, #-16]
	ldr	r3, .L115+4
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L115+4
	ldr	r2, [r3, #0]
	ldr	r3, .L115+8
	str	r2, [r3, #0]
	ldr	r3, .L115+8
	ldr	r2, [r3, #0]
	ldr	r3, .L115+12
	str	r2, [r3, #0]
	ldr	r3, .L115+12
	ldr	r2, [r3, #0]
	ldr	r3, .L115+16
	str	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #348]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #352]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #332]
	cmp	r3, #0
	bne	.L103
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #324]
	ldr	r3, .L115+8
	str	r2, [r3, #0]
	ldr	r3, .L115+8
	ldr	r2, [r3, #0]
	ldr	r3, .L115+12
	str	r2, [r3, #0]
	ldr	r3, .L115+12
	ldr	r2, [r3, #0]
	ldr	r3, .L115+4
	str	r2, [r3, #0]
	b	.L104
.L103:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #332]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #332]
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #324]
	add	r2, r1, r2
	str	r2, [r3, #0]
.L104:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #56]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #76]
	ldr	r3, [fp, #-16]
	and	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, .L115+20
	cmp	r2, r3
	bhi	.L105
	ldr	r3, [fp, #-60]
	ldrb	r3, [r3, #321]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L106
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #324]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #328]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	ldrb	r3, [r3, #321]	@ zero_extendqisi2
	mov	r3, r2, asl r3
	b	.L107
.L106:
	mov	r3, #0
.L107:
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #328]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #324]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	bl	op_calc
	mov	r2, r0
	ldr	r3, [fp, #-60]
	str	r2, [r3, #328]
	b	.L108
.L105:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #328]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #324]
	ldr	r3, [fp, #-60]
	mov	r2, #0
	str	r2, [r3, #328]
.L108:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #136]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #156]
	ldr	r3, [fp, #-16]
	and	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, .L115+20
	cmp	r2, r3
	bhi	.L109
	ldr	r3, [fp, #-60]
	ldr	r4, [r3, #336]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #336]
	ldr	r5, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #112]
	ldr	r3, .L115+16
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #15
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
	bl	op_calc
	mov	r3, r0
	add	r3, r5, r3
	str	r3, [r4, #0]
.L109:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #216]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #236]
	ldr	r3, [fp, #-16]
	and	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, .L115+20
	cmp	r2, r3
	bhi	.L110
	ldr	r3, [fp, #-60]
	ldr	r4, [r3, #340]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #340]
	ldr	r5, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #192]
	ldr	r3, .L115+12
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #15
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
	bl	op_calc
	mov	r3, r0
	add	r3, r5, r3
	str	r3, [r4, #0]
.L110:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #296]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #316]
	ldr	r3, [fp, #-16]
	and	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, .L115+20
	cmp	r2, r3
	bhi	.L111
	ldr	r3, [fp, #-60]
	ldr	r4, [r3, #344]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #344]
	ldr	r5, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #272]
	ldr	r3, .L115+8
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #15
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
	bl	op_calc
	mov	r3, r0
	add	r3, r5, r3
	str	r3, [r4, #0]
.L111:
	ldr	r3, .L115+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #352]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #356]
	cmp	r3, #0
	beq	.L112
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #372]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	and	r3, r3, #2032
	mov	r3, r3, lsr #4
	mov	r3, r3, asl #8
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #356]
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L115+24
	ldr	r3, [r3, #0]
	add	r2, r2, r3
	ldr	r3, .L115+28
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L113
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	and	r3, r3, #28672
	mov	r3, r3, lsr #12
	strb	r3, [fp, #-37]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	str	r3, [fp, #-44]
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-44]
	mov	r3, r3, lsr #8
	ldr	r1, .L115+32
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	orr	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-44]
	add	r3, r3, #292
	add	r3, r3, #2
	ldr	r2, [r2, r3, asl #2]
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	rsb	r3, r3, #7
	mov	r3, r2, lsr r3
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #2
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	ldr	r1, [fp, #-60]
	ldr	r1, [r1, #28]
	mul	r3, r1, r3
	mov	r3, r3, lsr #1
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #192]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #160]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #2
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	ldr	r1, [fp, #-60]
	ldr	r1, [r1, #188]
	mul	r3, r1, r3
	mov	r3, r3, lsr #1
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #192]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #112]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #80]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #2
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	ldr	r1, [fp, #-60]
	ldr	r1, [r1, #108]
	mul	r3, r1, r3
	mov	r3, r3, lsr #1
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #112]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #272]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #240]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #2
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	ldr	r1, [fp, #-60]
	ldr	r1, [r1, #268]
	mul	r3, r1, r3
	mov	r3, r3, lsr #1
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #272]
	b	.L102
.L113:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #36]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #192]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #196]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #192]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #112]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #116]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #112]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #272]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #276]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #272]
	b	.L102
.L112:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #36]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #192]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #196]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #192]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #112]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #116]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #112]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #272]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #276]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #272]
.L102:
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
.L116:
	.align	2
.L115:
	.word	LFO_AM
	.word	mem
	.word	c2
	.word	c1
	.word	m2
	.word	831
	.word	LFO_PM
	.word	lfo_pm_table
	.word	opn_fktable
	.fnend
	.size	chan_calc, .-chan_calc
	.align	2
	.type	refresh_fc_eg_slot, %function
refresh_fc_eg_slot:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #28]
	mul	r3, r2, r3
	mov	r2, r3, lsr #1
	ldr	r3, [fp, #-16]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	beq	.L117
	ldr	r3, [fp, #-8]
	and	r2, r3, #255
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #24]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	cmp	r3, #93
	bhi	.L119
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #60]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #61]
	b	.L120
.L119:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [fp, #-16]
	mvn	r2, #119
	strb	r2, [r3, #61]
.L120:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #63]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #64]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #65]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #66]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L121+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #67]
.L117:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L122:
	.align	2
.L121:
	.word	eg_rate_shift
	.word	eg_rate_select
	.fnend
	.size	refresh_fc_eg_slot, .-refresh_fc_eg_slot
	.align	2
	.type	refresh_fc_eg_chan, %function
refresh_fc_eg_chan:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	cmn	r3, #1
	bne	.L123
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #364]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	refresh_fc_eg_slot
	ldr	r3, [fp, #-16]
	add	r3, r3, #160
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	refresh_fc_eg_slot
	ldr	r3, [fp, #-16]
	add	r3, r3, #80
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	refresh_fc_eg_slot
	ldr	r3, [fp, #-16]
	add	r3, r3, #240
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	refresh_fc_eg_slot
.L123:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	refresh_fc_eg_chan, .-refresh_fc_eg_chan
	.global	__aeabi_ui2f
	.global	__aeabi_fmul
	.global	__aeabi_fdiv
	.global	__aeabi_f2iz
	.align	2
	.type	init_timetables, %function
init_timetables:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L126
.L129:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L127
.L128:
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #5
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2f
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L130	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L130+4	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L130+8	@ float
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-16]	@ float
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_f2iz
	mov	r1, r0
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	mov	r0, r2, asl #5
	ldr	r2, [fp, #-8]
	add	r2, r0, r2
	add	r2, r2, #12
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-12]
	add	r2, r3, #4
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-12]
	mov	r0, r1, asl #5
	ldr	r1, [fp, #-8]
	add	r1, r0, r1
	add	r1, r1, #12
	ldr	r3, [r3, r1, asl #2]
	rsb	r1, r3, #0
	ldr	r3, [fp, #-24]
	mov	r0, r2, asl #5
	ldr	r2, [fp, #-8]
	add	r2, r0, r2
	add	r2, r2, #12
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L127:
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	ble	.L128
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L126:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L129
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L131:
	.align	2
.L130:
	.word	1149239296
	.word	1199570944
	.word	1233125376
	.fnend
	.size	init_timetables, .-init_timetables
	.align	2
	.type	reset_channels, %function
reset_channels:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #40]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #44]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L133
.L136:
	ldr	r3, [fp, #-8]
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #364]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L134
.L135:
	ldr	r3, [fp, #-8]
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r0, #64
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r2, r1, r3
	mov	r3, r0
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r0, #64
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r2, r1, r3
	mov	r3, r0
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [fp, #-8]
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r0, #40
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r2, r1, r3
	mov	r3, r0
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r0, #48
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r2, r1, r3
	mov	r3, r0
	add	r3, r2, r3
	ldr	r2, .L137
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r0, #56
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r2, r1, r3
	mov	r3, r0
	add	r3, r2, r3
	ldr	r2, .L137
	str	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L134:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L135
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L133:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L136
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L138:
	.align	2
.L137:
	.word	1023
	.fnend
	.size	reset_channels, .-reset_channels
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2f
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.global	__aeabi_fcmpge
	.align	2
	.type	OPNInitTable, %function
OPNInitTable:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #40
	sub	sp, sp, #40
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L140
.L145:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1065353216
	add	r3, r3, #2097152
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #2097152
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #1073741824
	bl	pow
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #1073741824
	add	r1, r1, #15728640
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	floor
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2iz
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #4
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L141
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L142
.L141:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #1
	str	r3, [fp, #-24]
.L142:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #1
	ldr	r3, .L163+16
	ldr	r1, [fp, #-24]
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r2, r3, #1
	ldr	r3, [fp, #-20]
	mov	r1, r3, asl #1
	ldr	r3, .L163+16
	ldr	r3, [r3, r1, asl #2]
	rsb	r1, r3, #0
	ldr	r3, .L163+16
	str	r1, [r3, r2, asl #2]
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L143
.L144:
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #8
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-20]
	mov	r1, r3, asl #1
	ldr	r3, .L163+16
	ldr	r1, [r3, r1, asl #2]
	ldr	r3, [fp, #-16]
	mov	r1, r1, asr r3
	ldr	r3, .L163+16
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #8
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #1
	add	r2, r3, #1
	ldr	r3, [fp, #-16]
	mov	r1, r3, asl #8
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	mov	r1, r3, asl #1
	ldr	r3, .L163+16
	ldr	r3, [r3, r1, asl #2]
	rsb	r1, r3, #0
	ldr	r3, .L163+16
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L143:
	ldr	r3, [fp, #-16]
	cmp	r3, #12
	ble	.L144
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L140:
	ldr	r3, [fp, #-20]
	cmp	r3, #255
	ble	.L145
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L146
.L153:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	add	r3, r3, #1
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L163
	ldrd	r2, [r3]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #9437184
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sin
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	mov	r3, #1
	mov	r4, r3
	ldr	r0, [fp, #-40]	@ float
	ldr	r1, .L163+20	@ float
	bl	__aeabi_fcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L147
	mov	r3, #0
	mov	r4, r3
.L147:
	and	r3, r4, #255
	cmp	r3, #0
	beq	.L148
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #1069547520
	add	r1, r1, #3145728
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	log
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #2097152
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L163+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
	b	.L149
.L148:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #-1090519040
	add	r1, r1, #15728640
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	log
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #2097152
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L163+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
.L149:
	ldr	r0, [fp, #-28]	@ float
	ldr	r1, .L163+24	@ float
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
	ldr	r0, [fp, #-28]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L150
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L151
.L150:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #1
	str	r3, [fp, #-24]
.L151:
	ldr	r3, [fp, #-24]
	mov	r5, r3, asl #1
	mov	r3, #1
	mov	r4, r3
	ldr	r0, [fp, #-40]	@ float
	ldr	r1, .L163+20	@ float
	bl	__aeabi_fcmpge
	mov	r3, r0
	cmp	r3, #0
	bne	.L152
	mov	r3, #0
	mov	r4, r3
.L152:
	and	r3, r4, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	add	r3, r5, r3
	mov	r1, r3
	ldr	r3, .L163+28
	ldr	r2, [fp, #-16]
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L146:
	ldr	r2, [fp, #-16]
	ldr	r3, .L163+32
	cmp	r2, r3
	ble	.L153
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L154
.L162:
	mov	r3, #0
	strb	r3, [fp, #-29]
	b	.L155
.L161:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-44]
	mov	r3, #0
	strb	r3, [fp, #-31]
	b	.L156
.L160:
	mov	r3, #0
	strb	r3, [fp, #-30]
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L157
.L164:
	.align	3
.L163:
	.word	1413754136
	.word	1074340347
	.word	-17155601
	.word	1072049730
	.word	tl_tab
	.word	0
	.word	1023410176
	.word	sin_tab
	.word	1023
	.word	lfo_pm_output
	.word	lfo_pm_table
.L159:
	ldrb	r2, [fp, #-29]	@ zero_extendqisi2
	ldr	r3, [fp, #-36]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L158
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #3
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2
	ldr	r1, .L163+36
	mov	r2, r2, asl #3
	add	r3, r2, r3
	mov	r2, r1
	add	r3, r2, r3
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-30]
	add	r3, r2, r3
	strb	r3, [fp, #-30]
.L158:
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L157:
	ldr	r3, [fp, #-36]
	cmp	r3, #6
	bls	.L159
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r3, asl #5
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2
	add	r2, r2, r3
	ldrb	r1, [fp, #-30]	@ zero_extendqisi2
	ldr	r3, .L163+40
	str	r1, [r3, r2, asl #2]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r3, asl #5
	ldrb	r3, [fp, #-31]
	eor	r3, r3, #7
	and	r3, r3, #255
	add	r3, r2, r3
	add	r2, r3, #8
	ldrb	r1, [fp, #-30]	@ zero_extendqisi2
	ldr	r3, .L163+40
	str	r1, [r3, r2, asl #2]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r3, asl #5
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2
	add	r3, r2, r3
	add	r2, r3, #16
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	rsb	r1, r3, #0
	ldr	r3, .L163+40
	str	r1, [r3, r2, asl #2]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r3, asl #5
	ldrb	r3, [fp, #-31]
	eor	r3, r3, #7
	and	r3, r3, #255
	add	r3, r2, r3
	add	r2, r3, #24
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	rsb	r1, r3, #0
	ldr	r3, .L163+40
	str	r1, [r3, r2, asl #2]
	ldrb	r3, [fp, #-31]
	add	r3, r3, #1
	strb	r3, [fp, #-31]
.L156:
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L160
	ldrb	r3, [fp, #-29]
	add	r3, r3, #1
	strb	r3, [fp, #-29]
.L155:
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	cmp	r3, #0
	bge	.L161
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L154:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L162
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	OPNInitTable, .-OPNInitTable
	.align	2
	.type	CSMKeyControll, %function
CSMKeyControll:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	mov	r1, #0
	bl	FM_KEYON
	ldr	r0, [fp, #-8]
	mov	r1, #2
	bl	FM_KEYON
	ldr	r0, [fp, #-8]
	mov	r1, #1
	bl	FM_KEYON
	ldr	r0, [fp, #-8]
	mov	r1, #3
	bl	FM_KEYON
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	CSMKeyControll, .-CSMKeyControll
	.global	__aeabi_i2f
	.global	__aeabi_f2uiz
	.global	__aeabi_idiv
	.global	__aeabi_ui2d
	.global	__aeabi_d2uiz
	.align	2
	.type	OPNSetPres, %function
OPNSetPres:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L167
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r4, r0
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r4, r3
	ldr	r0, [fp, #-28]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	b	.L168
.L167:
	ldr	r3, .L174	@ float
.L168:
	ldr	r2, [fp, #-24]
	str	r3, [r2, #8]	@ float
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]	@ float
	mov	r0, r3
	ldr	r1, .L174+4	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r2, r0
	ldr	r3, [fp, #-24]
	str	r2, [r3, #1168]
	ldr	r3, [fp, #-24]
	mov	r2, #196608
	str	r2, [r3, #1172]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r4, r0
	ldr	r0, [fp, #-32]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	ldr	r0, .L174+8	@ float
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #12]	@ float
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L169
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L174+12	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L174+16	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #1
	mov	r0, r3
	ldr	r1, [fp, #-36]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r2, r0
	ldr	r3, .L174+20
	str	r2, [r3, #4]
.L169:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	ldr	r1, .L174+24
	bl	init_timetables
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L170
.L171:
	ldr	r0, [fp, #-16]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L174+28	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L174+32	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r1, r0
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	add	r3, r3, #292
	add	r3, r3, #2
	str	r1, [r2, r3, asl #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L170:
	ldr	r2, [fp, #-16]
	ldr	r3, .L174+36
	cmp	r2, r3
	ble	.L171
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L172
.L173:
	ldr	r3, .L174+40
	ldr	r2, [fp, #-16]
	ldr	r3, [r3, r2, asl #2]
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #1069547520
	add	r1, r1, #3145728
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1090519040
	add	r3, r3, #7340032
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
	mov	r1, r0
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4352
	add	r3, r3, #40
	str	r1, [r2, r3, asl #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L172:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L173
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
.L175:
	.align	2
.L174:
	.word	0
	.word	1199570944
	.word	1065353216
	.word	1191182336
	.word	1090519040
	.word	SSG
	.word	dt_tab
	.word	1107296256
	.word	1115684864
	.word	4095
	.word	lfo_samples_per_step
	.fnend
	.size	OPNSetPres, .-OPNSetPres
	.align	2
	.type	OPNWriteMode, %function
OPNWriteMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #33
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L176
.L185:
	.word	.L176
	.word	.L179
	.word	.L176
	.word	.L180
	.word	.L181
	.word	.L182
	.word	.L183
	.word	.L184
.L179:
	ldr	r3, [fp, #-24]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L186
	ldr	r3, [fp, #-24]
	and	r3, r3, #7
	ldr	r2, [fp, #-16]
	add	r3, r3, #4352
	add	r3, r3, #40
	ldr	r1, [r2, r3, asl #2]
	ldr	r2, [fp, #-16]
	ldr	r3, .L199
	str	r1, [r2, r3]
	b	.L176
.L186:
	ldr	r2, [fp, #-16]
	ldr	r3, .L199
	mov	r1, #0
	str	r1, [r2, r3]
	b	.L176
.L180:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	and	r2, r3, #3
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	orr	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #32]
	b	.L176
.L181:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	and	r2, r3, #1020
	ldr	r3, [fp, #-24]
	and	r3, r3, #3
	orr	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #32]
	b	.L176
.L182:
	ldr	r3, [fp, #-24]
	and	r2, r3, #255
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #40]
	b	.L176
.L183:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	set_timers
	b	.L176
.L184:
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	and	r3, r3, #3
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L198
.L188:
	ldr	r3, [fp, #-24]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L189
	ldrb	r3, [fp, #-5]
	add	r3, r3, #3
	strb	r3, [fp, #-5]
.L189:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #1108]
	str	r3, [fp, #-12]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L190
	ldr	r0, [fp, #-12]
	mov	r1, #0
	bl	FM_KEYON
	b	.L191
.L190:
	ldr	r0, [fp, #-12]
	mov	r1, #0
	bl	FM_KEYOFF
.L191:
	ldr	r3, [fp, #-24]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L192
	ldr	r0, [fp, #-12]
	mov	r1, #2
	bl	FM_KEYON
	b	.L193
.L192:
	ldr	r0, [fp, #-12]
	mov	r1, #2
	bl	FM_KEYOFF
.L193:
	ldr	r3, [fp, #-24]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L194
	ldr	r0, [fp, #-12]
	mov	r1, #1
	bl	FM_KEYON
	b	.L195
.L194:
	ldr	r0, [fp, #-12]
	mov	r1, #1
	bl	FM_KEYOFF
.L195:
	ldr	r3, [fp, #-24]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L196
	ldr	r0, [fp, #-12]
	mov	r1, #3
	bl	FM_KEYON
	b	.L176
.L196:
	ldr	r0, [fp, #-12]
	mov	r1, #3
	bl	FM_KEYOFF
	b	.L176
.L198:
	mov	r0, r0	@ nop
.L176:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L200:
	.align	2
.L199:
	.word	17564
	.fnend
	.size	OPNWriteMode, .-OPNWriteMode
	.align	2
	.type	OPNWriteReg, %function
OPNWriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	and	r3, r3, #255
	and	r3, r3, #3
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L236
.L202:
	ldr	r3, [fp, #-44]
	cmp	r3, #255
	ble	.L204
	ldrb	r3, [fp, #-5]
	add	r3, r3, #3
	strb	r3, [fp, #-5]
.L204:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #1108]
	str	r3, [fp, #-12]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r2, #376
	mul	r3, r2, r3
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-12]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asr #2
	and	r2, r3, #3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r1, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-44]
	and	r3, r3, #240
	cmp	r3, #112
	beq	.L209
	cmp	r3, #112
	bgt	.L214
	cmp	r3, #64
	beq	.L206
	cmp	r3, #64
	bgt	.L215
	cmp	r3, #48
	beq	.L205
	b	.L201
.L215:
	cmp	r3, #80
	beq	.L207
	cmp	r3, #96
	beq	.L208
	b	.L201
.L214:
	cmp	r3, #144
	beq	.L211
	cmp	r3, #144
	bgt	.L216
	cmp	r3, #128
	beq	.L210
	b	.L201
.L216:
	cmp	r3, #160
	beq	.L212
	cmp	r3, #176
	beq	.L213
	b	.L201
.L205:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-48]
	bl	set_det_mul
	b	.L201
.L206:
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-48]
	bl	set_tl
	b	.L201
.L207:
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-48]
	bl	set_ar_ksr
	b	.L201
.L208:
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-48]
	bl	set_dr
	ldr	r3, [fp, #-48]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L217
	mvn	r3, #0
	b	.L218
.L217:
	mov	r3, #0
.L218:
	ldr	r2, [fp, #-16]
	str	r3, [r2, #76]
	b	.L201
.L209:
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-48]
	bl	set_sr
	b	.L201
.L210:
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-48]
	bl	set_sl_rr
	b	.L201
.L211:
	ldr	r3, [fp, #-48]
	and	r3, r3, #255
	and	r3, r3, #15
	and	r2, r3, #255
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #68]
	ldr	r3, [fp, #-48]
	and	r3, r3, #4
	mov	r3, r3, asr #1
	and	r2, r3, #255
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #69]
	b	.L201
.L212:
	ldr	r3, [fp, #-44]
	mov	r3, r3, asr #2
	and	r3, r3, #3
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L237
.L224:
	.word	.L220
	.word	.L221
	.word	.L222
	.word	.L223
.L220:
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #29]	@ zero_extendqisi2
	and	r3, r3, #7
	mov	r2, r3, asl #8
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #29]	@ zero_extendqisi2
	mov	r3, r3, lsr #3
	strb	r3, [fp, #-21]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	mov	r3, r3, asl #2
	and	r2, r3, #255
	ldr	r3, [fp, #-20]
	mov	r3, r3, lsr #7
	ldr	r1, .L240
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #368]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-40]
	add	r3, r3, #292
	add	r3, r3, #2
	ldr	r2, [r2, r3, asl #2]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	rsb	r3, r3, #7
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-12]
	str	r2, [r3, #364]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	mov	r3, r3, asl #11
	mov	r2, r3
	ldr	r3, [fp, #-20]
	orr	r2, r2, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3, #372]
	ldr	r3, [fp, #-12]
	mvn	r2, #0
	str	r2, [r3, #36]
	b	.L219
.L221:
	ldr	r3, [fp, #-48]
	and	r3, r3, #255
	and	r3, r3, #63
	and	r2, r3, #255
	ldr	r3, [fp, #-40]
	strb	r2, [r3, #29]
	b	.L219
.L222:
	ldr	r3, [fp, #-44]
	cmp	r3, #255
	bgt	.L238
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #1092]	@ zero_extendqisi2
	and	r3, r3, #7
	mov	r2, r3, asl #8
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #1092]	@ zero_extendqisi2
	mov	r3, r3, lsr #3
	strb	r3, [fp, #-29]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldrb	r2, [fp, #-29]	@ zero_extendqisi2
	mov	r2, r2, asl #2
	and	r1, r2, #255
	ldr	r2, [fp, #-28]
	mov	r2, r2, lsr #7
	ldr	r0, .L240
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	and	r2, r2, #255
	orr	r2, r1, r2
	and	r2, r2, #255
	and	r2, r2, #255
	ldr	r1, [fp, #-40]
	mov	r0, #1088
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	strb	r2, [r3, #5]
	ldrb	r0, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-40]
	add	r3, r3, #292
	add	r3, r3, #2
	ldr	r2, [r2, r3, asl #2]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	rsb	r3, r3, #7
	mov	r1, r2, lsr r3
	ldr	r2, [fp, #-40]
	add	r3, r0, #268
	add	r3, r3, #2
	str	r1, [r2, r3, asl #2]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r2, [fp, #-40]
	add	r3, r3, #272
	add	r3, r3, #2
	ldr	r1, [fp, #-28]
	str	r1, [r2, r3, asl #2]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #1108]
	add	r3, r3, #752
	mvn	r2, #0
	str	r2, [r3, #36]
	b	.L238
.L223:
	ldr	r3, [fp, #-44]
	cmp	r3, #255
	bgt	.L239
	ldr	r3, [fp, #-48]
	and	r3, r3, #255
	and	r3, r3, #63
	and	r2, r3, #255
	ldr	r3, [fp, #-40]
	strb	r2, [r3, #1092]
	b	.L239
.L238:
	mov	r0, r0	@ nop
	b	.L219
.L239:
	mov	r0, r0	@ nop
.L219:
	b	.L237
.L213:
	ldr	r3, [fp, #-44]
	mov	r3, r3, asr #2
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L228
	cmp	r3, #1
	beq	.L229
	b	.L227
.L228:
	ldr	r3, [fp, #-48]
	mov	r3, r3, asr #3
	and	r3, r3, #7
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	and	r3, r3, #255
	and	r3, r3, #7
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #320]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L230
	ldr	r3, [fp, #-36]
	and	r3, r3, #255
	add	r3, r3, #6
	and	r3, r3, #255
	b	.L231
.L230:
	mov	r3, #0
.L231:
	ldr	r2, [fp, #-12]
	strb	r3, [r2, #321]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	setup_connection
	b	.L227
.L229:
	ldr	r3, [fp, #-48]
	and	r3, r3, #7
	mov	r2, r3, asl #5
	ldr	r3, [fp, #-12]
	str	r2, [r3, #356]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asr #4
	and	r3, r3, #3
	ldr	r2, .L240+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #360]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-48]
	and	r2, r2, #128
	cmp	r2, #0
	beq	.L232
	mvn	r2, #0
	b	.L233
.L232:
	mov	r2, #0
.L233:
	ldr	r1, [fp, #-40]
	add	r3, r3, #276
	add	r3, r3, #2
	str	r2, [r1, r3, asl #2]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #1
	ldr	r2, [fp, #-48]
	and	r2, r2, #64
	cmp	r2, #0
	beq	.L234
	mvn	r2, #0
	b	.L235
.L234:
	mov	r2, #0
.L235:
	ldr	r1, [fp, #-40]
	add	r3, r3, #276
	add	r3, r3, #2
	str	r2, [r1, r3, asl #2]
	mov	r0, r0	@ nop
.L227:
	mov	r0, r0	@ nop
	b	.L201
.L236:
	mov	r0, r0	@ nop
	b	.L201
.L237:
	mov	r0, r0	@ nop
.L201:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L241:
	.align	2
.L240:
	.word	opn_fktable
	.word	lfo_ams_depth_shift
	.fnend
	.size	OPNWriteReg, .-OPNWriteReg
	.align	2
	.type	SSG_write, %function
SSG_write:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-28]
	and	r2, r3, #255
	ldr	r1, .L273
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r3, #15
	ldrls	pc, [pc, r3, asl #2]
	b	.L242
.L251:
	.word	.L244
	.word	.L244
	.word	.L244
	.word	.L244
	.word	.L244
	.word	.L244
	.word	.L245
	.word	.L246
	.word	.L247
	.word	.L247
	.word	.L247
	.word	.L248
	.word	.L248
	.word	.L249
	.word	.L242
	.word	.L242
.L244:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	bic	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r2, r2, #1
	ldr	r1, .L273
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	and	r2, r2, #15
	and	r2, r2, #255
	ldr	r0, .L273
	mov	r1, r2
	mov	r2, r0
	strb	r1, [r2, r3]
	ldr	r1, .L273+4
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	mov	r3, r1
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-12]
	ldr	r2, .L273
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r1, .L273
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	add	r3, r2, r3
	ldr	r2, .L273+4
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L273+4
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	mov	r3, r0
	str	r1, [r3, r2, asl #2]
	ldr	r1, .L273+4
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	mov	r3, r1
	ldr	r3, [r3, r2, asl #2]
	cmp	r3, #0
	bne	.L252
	ldr	r3, .L273+4
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r0, .L273+4
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	mov	r3, r0
	str	r1, [r3, r2, asl #2]
.L252:
	ldr	r2, .L273+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L273+4
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r1, [r3, r1, asl #2]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r1
	add	r2, r2, r3
	ldr	r1, .L273+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, .L273+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bgt	.L269
	ldr	r2, .L273+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L269
.L245:
	ldr	r3, .L273
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	and	r3, r3, #31
	and	r3, r3, #255
	ldr	r1, .L273
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #6]
	ldr	r3, .L273+4
	ldr	r3, [r3, #20]
	str	r3, [fp, #-12]
	ldr	r3, .L273
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	ldr	r2, .L273+4
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #20]
	ldr	r3, .L273+4
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L254
	ldr	r3, .L273+4
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #20]
.L254:
	ldr	r3, .L273+4
	ldr	r2, [r3, #40]
	ldr	r3, .L273+4
	ldr	r1, [r3, #20]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #40]
	ldr	r3, .L273+4
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bgt	.L270
	ldr	r3, .L273+4
	mov	r2, #1
	str	r2, [r3, #40]
	b	.L270
.L246:
	ldr	r3, .L273
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #0]
	b	.L242
.L247:
	ldr	r3, [fp, #-24]
	and	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, .L273
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #31
	and	r2, r3, #255
	ldr	r1, .L273
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	strb	r2, [r3, #0]
	ldr	r2, .L273
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #16
	and	r2, r3, #255
	ldr	r1, .L273+4
	mov	r0, #64
	ldr	r3, [fp, #-16]
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	strb	r2, [r3, #0]
	ldr	r2, .L273+4
	mov	r1, #64
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	ldr	r3, .L273+4
	ldr	r3, [r3, #60]
	b	.L257
.L256:
	ldr	r2, .L273
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L258
	ldr	r2, .L273
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #1
	b	.L259
.L258:
	mov	r3, #0
.L259:
	ldr	r1, .L273+4
	add	r2, r3, #20
	mov	r3, r1
	ldr	r3, [r3, r2, asl #2]
.L257:
	ldr	r0, .L273+4
	ldr	r2, [fp, #-16]
	add	r1, r2, #12
	mov	r2, r0
	str	r3, [r2, r1, asl #2]
	b	.L242
.L248:
	ldr	r3, .L273+4
	ldr	r3, [r3, #24]
	str	r3, [fp, #-12]
	ldr	r3, .L273
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L273
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	add	r3, r2, r3
	ldr	r2, .L273+4
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #24]
	ldr	r3, .L273+4
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L260
	ldr	r3, .L273+4
	ldr	r3, [r3, #4]
	mov	r3, r3, lsr #1
	mov	r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #24]
.L260:
	ldr	r3, .L273+4
	ldr	r2, [r3, #44]
	ldr	r3, .L273+4
	ldr	r1, [r3, #24]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, .L273+4
	str	r2, [r3, #44]
	ldr	r3, .L273+4
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bgt	.L271
	ldr	r3, .L273+4
	mov	r2, #1
	str	r2, [r3, #44]
	b	.L271
.L249:
	ldr	r3, .L273
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	and	r3, r3, #15
	and	r3, r3, #255
	ldr	r1, .L273
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #13]
	ldr	r3, .L273
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L262
	mov	r3, #31
	b	.L263
.L262:
	mov	r3, #0
.L263:
	ldr	r1, .L273+4
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #74]
	ldr	r3, .L273
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L264
	ldr	r1, .L273+4
	mov	r3, #1
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #72]
	ldr	r3, .L273+4
	ldrb	r3, [r3, #74]	@ zero_extendqisi2
	ldr	r1, .L273+4
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #73]
	b	.L265
.L264:
	ldr	r3, .L273
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	and	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L273+4
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #72]
	ldr	r3, .L273
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	and	r3, r3, #2
	and	r3, r3, #255
	ldr	r1, .L273+4
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #73]
.L265:
	ldr	r3, .L273+4
	ldr	r2, [r3, #24]
	ldr	r3, .L273+4
	str	r2, [r3, #44]
	ldr	r1, .L273+4
	mov	r3, #31
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #71]
	ldr	r1, .L273+4
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #75]
	ldr	r3, .L273+4
	ldrb	r2, [r3, #71]	@ zero_extendqisi2
	ldr	r3, .L273+4
	ldrb	r3, [r3, #74]	@ zero_extendqisi2
	eor	r3, r2, r3
	and	r3, r3, #255
	ldr	r1, .L273+4
	add	r2, r3, #20
	mov	r3, r1
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, .L273+4
	str	r2, [r3, #60]
	ldr	r3, .L273+4
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L266
	ldr	r3, .L273+4
	ldr	r2, [r3, #60]
	ldr	r3, .L273+4
	str	r2, [r3, #48]
.L266:
	ldr	r3, .L273+4
	ldrb	r3, [r3, #65]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L267
	ldr	r3, .L273+4
	ldr	r2, [r3, #60]
	ldr	r3, .L273+4
	str	r2, [r3, #52]
.L267:
	ldr	r3, .L273+4
	ldrb	r3, [r3, #66]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L272
	ldr	r3, .L273+4
	ldr	r2, [r3, #60]
	ldr	r3, .L273+4
	str	r2, [r3, #56]
	b	.L272
.L269:
	mov	r0, r0	@ nop
	b	.L242
.L270:
	mov	r0, r0	@ nop
	b	.L242
.L271:
	mov	r0, r0	@ nop
	b	.L242
.L272:
	mov	r0, r0	@ nop
.L242:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L274:
	.align	2
.L273:
	.word	YM2610
	.word	SSG
	.fnend
	.size	SSG_write, .-SSG_write
	.align	2
	.type	SSG_calc_count, %function
SSG_calc_count:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L276
.L280:
	ldr	r3, .L282
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L277
	ldr	r2, .L282+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #15
	cmp	r2, r3
	bgt	.L278
	ldr	r2, .L282+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #15
	add	r2, r2, r3
	ldr	r1, .L282+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
.L278:
	ldr	r2, .L282+4
	mov	r1, #64
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #1
	strb	r2, [r3, #3]
	b	.L279
.L277:
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r2, .L282
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L279
	ldr	r2, .L282+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #15
	cmp	r2, r3
	bgt	.L279
	ldr	r2, .L282+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #15
	add	r2, r2, r3
	ldr	r1, .L282+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
.L279:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L276:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L280
	ldr	r3, .L282
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	and	r3, r3, #56
	cmp	r3, #56
	bne	.L281
	ldr	r3, .L282+4
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #15
	cmp	r2, r3
	bgt	.L281
	ldr	r3, .L282+4
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #15
	add	r2, r2, r3
	ldr	r3, .L282+4
	str	r2, [r3, #40]
.L281:
	ldr	r3, .L282+4
	ldrb	r2, [r3, #70]	@ zero_extendqisi2
	ldr	r3, .L282
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L283:
	.align	2
.L282:
	.word	YM2610
	.word	SSG
	.fnend
	.size	SSG_calc_count, .-SSG_calc_count
	.align	2
	.type	SSG_CALC, %function
SSG_CALC:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #36
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, #32768
	str	r3, [fp, #-12]
.L301:
	ldr	r3, .L307
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	movlt	r3, r2
	movge	r3, r3
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L285
.L297:
	mov	r2, #8
	ldr	r3, [fp, #-8]
	mov	r2, r2, asl r3
	ldr	r3, [fp, #-32]
	and	r3, r2, r3
	cmp	r3, #0
	beq	.L286
	ldr	r2, .L307
	mov	r1, #64
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L287
	ldr	r3, [fp, #-8]
	mvn	r1, #23
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	mvn	r0, #23
	mov	r3, r3, asl #2
	sub	ip, fp, #4
	add	r1, ip, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
.L287:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	rsb	r2, r3, r2
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L288
.L292:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L307
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L289
	ldr	r2, .L307
	mov	r1, #64
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	eor	r3, r3, #1
	and	r2, r3, #255
	ldr	r1, .L307
	mov	r0, #64
	ldr	r3, [fp, #-8]
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	strb	r2, [r3, #3]
	ldr	r2, .L307
	mov	r1, #64
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L306
	ldr	r3, [fp, #-8]
	mvn	r1, #23
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L307
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	mvn	r0, #23
	mov	r3, r3, asl #2
	sub	ip, fp, #4
	add	r1, ip, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L306
.L289:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L307
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mvn	r1, #23
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L307
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	mvn	r0, #23
	mov	r3, r3, asl #2
	sub	ip, fp, #4
	add	r1, ip, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
.L288:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L292
	b	.L291
.L306:
	mov	r0, r0	@ nop
.L291:
	ldr	r2, .L307
	mov	r1, #64
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L293
	ldr	r3, [fp, #-8]
	mvn	r1, #23
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	rsb	r2, r3, r2
	ldr	r3, [fp, #-8]
	mvn	r0, #23
	mov	r3, r3, asl #2
	sub	ip, fp, #4
	add	r1, ip, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L293
.L286:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	rsb	r2, r3, r2
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L294
.L296:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L307
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L295
	ldr	r2, .L307
	mov	r1, #64
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	eor	r3, r3, #1
	and	r2, r3, #255
	ldr	r1, .L307
	mov	r0, #64
	ldr	r3, [fp, #-8]
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	strb	r2, [r3, #3]
	b	.L293
.L295:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r0, .L307
	ldr	r3, [fp, #-8]
	add	r1, r3, #2
	mov	r3, r0
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r1, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r0, #4
	mov	r3, r3, asl #2
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
.L294:
	ldr	r2, .L307
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mov	r1, #4
	mov	r3, r3, asl #2
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L296
.L293:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L285:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L297
	ldr	r3, .L307
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-16]
	rsb	r2, r3, r2
	ldr	r3, .L307
	str	r2, [r3, #40]
	ldr	r3, .L307
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bgt	.L298
	ldr	r3, .L307
	ldr	r3, [r3, #76]
	add	r3, r3, #1
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L299
	ldr	r3, .L307
	ldrb	r3, [r3, #70]	@ zero_extendqisi2
	mvn	r3, r3
	and	r3, r3, #255
	ldr	r1, .L307
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #70]
	ldr	r3, .L307
	ldrb	r2, [r3, #70]	@ zero_extendqisi2
	ldr	r3, .L307+4
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	str	r3, [fp, #-32]
.L299:
	ldr	r3, .L307
	ldr	r3, [r3, #76]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L300
	ldr	r3, .L307
	ldr	r3, [r3, #76]
	eor	r2, r3, #147456
	ldr	r3, .L307
	str	r2, [r3, #76]
.L300:
	ldr	r3, .L307
	ldr	r3, [r3, #76]
	mov	r2, r3, asr #1
	ldr	r3, .L307
	str	r2, [r3, #76]
	ldr	r3, .L307
	ldr	r2, [r3, #40]
	ldr	r3, .L307
	ldr	r3, [r3, #20]
	add	r2, r2, r3
	ldr	r3, .L307
	str	r2, [r3, #40]
.L298:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bgt	.L301
	ldr	r3, .L307
	ldrb	r3, [r3, #75]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L302
	ldr	r3, .L307
	ldr	r3, [r3, #44]
	sub	r2, r3, #32768
	ldr	r3, .L307
	str	r2, [r3, #44]
	ldr	r3, .L307
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bgt	.L302
.L303:
	ldr	r3, .L307
	ldrb	r3, [r3, #71]	@ zero_extendqisi2
	sub	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L307
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #71]
	ldr	r3, .L307
	ldr	r2, [r3, #44]
	ldr	r3, .L307
	ldr	r3, [r3, #24]
	add	r2, r2, r3
	ldr	r3, .L307
	str	r2, [r3, #44]
	ldr	r3, .L307
	ldr	r3, [r3, #44]
	cmp	r3, #0
	ble	.L303
	ldr	r3, .L307
	ldrb	r2, [r3, #71]	@ zero_extendqisi2
	ldr	r3, .L307
	ldrb	r3, [r3, #74]	@ zero_extendqisi2
	eor	r3, r2, r3
	and	r3, r3, #255
	ldr	r1, .L307
	add	r2, r3, #20
	mov	r3, r1
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, .L307
	str	r2, [r3, #60]
	ldr	r3, .L307
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L304
	ldr	r3, .L307
	ldr	r2, [r3, #60]
	ldr	r3, .L307
	str	r2, [r3, #48]
.L304:
	ldr	r3, .L307
	ldrb	r3, [r3, #65]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L305
	ldr	r3, .L307
	ldr	r2, [r3, #60]
	ldr	r3, .L307
	str	r2, [r3, #52]
.L305:
	ldr	r3, .L307
	ldrb	r3, [r3, #66]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L302
	ldr	r3, .L307
	ldr	r2, [r3, #60]
	ldr	r3, .L307
	str	r2, [r3, #56]
.L302:
	ldr	r3, [fp, #-28]
	ldr	r2, .L307
	ldr	r2, [r2, #48]
	mul	r2, r3, r2
	ldr	r3, [fp, #-24]
	ldr	r1, .L307
	ldr	r1, [r1, #52]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	ldr	r1, .L307
	ldr	r1, [r1, #56]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, .L307+8
	umull	r0, r3, r2, r3
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldr	r3, .L307+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L308:
	.align	2
.L307:
	.word	SSG
	.word	YM2610
	.word	-1431655765
	.word	out_ssg
	.fnend
	.size	SSG_CALC, .-SSG_CALC
	.align	2
	.type	SSG_init_table, %function
SSG_init_table:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L312+8	@ float
	str	r3, [fp, #-12]	@ float
	mov	r3, #31
	str	r3, [fp, #-8]
	b	.L310
.L311:
	ldr	r0, [fp, #-12]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1069547520
	add	r3, r3, #2097152
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
	mov	r1, r0
	ldr	r0, .L312+12
	ldr	r3, [fp, #-8]
	add	r2, r3, #20
	mov	r3, r0
	str	r1, [r3, r2, asl #2]
	ldr	r0, [fp, #-12]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L312
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-12]	@ float
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L310:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bgt	.L311
	ldr	r3, .L312+12
	mov	r2, #0
	str	r2, [r3, #80]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L313:
	.align	3
.L312:
	.word	-381484355
	.word	1072890906
	.word	1191181824
	.word	SSG
	.fnend
	.size	SSG_init_table, .-SSG_init_table
	.align	2
	.type	SSG_reset, %function
SSG_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L317
	mov	r2, #1
	str	r2, [r3, #76]
	ldr	r1, .L317
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #67]
	ldr	r1, .L317
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #68]
	ldr	r1, .L317
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #69]
	ldr	r1, .L317
	mvn	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #70]
	ldr	r3, .L317
	mvn	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L315
.L316:
	ldr	r2, .L317+4
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r0, [fp, #-8]
	mov	r1, #0
	bl	SSG_write
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L315:
	ldr	r3, [fp, #-8]
	cmp	r3, #13
	ble	.L316
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L318:
	.align	2
.L317:
	.word	SSG
	.word	YM2610
	.fnend
	.size	SSG_reset, .-SSG_reset
	.local	pcmbufA
	.comm	pcmbufA,4,4
	.local	pcmsizeA
	.comm	pcmsizeA,4,4
	.data
	.align	2
	.type	steps, %object
	.size	steps, 196
steps:
	.word	16
	.word	17
	.word	19
	.word	21
	.word	23
	.word	25
	.word	28
	.word	31
	.word	34
	.word	37
	.word	41
	.word	45
	.word	50
	.word	55
	.word	60
	.word	66
	.word	73
	.word	80
	.word	88
	.word	97
	.word	107
	.word	118
	.word	130
	.word	143
	.word	157
	.word	173
	.word	190
	.word	209
	.word	230
	.word	253
	.word	279
	.word	307
	.word	337
	.word	371
	.word	408
	.word	449
	.word	494
	.word	544
	.word	598
	.word	658
	.word	724
	.word	796
	.word	876
	.word	963
	.word	1060
	.word	1166
	.word	1282
	.word	1411
	.word	1552
	.align	2
	.type	step_inc, %object
	.size	step_inc, 32
step_inc:
	.word	-16
	.word	-16
	.word	-16
	.word	-16
	.word	32
	.word	80
	.word	112
	.word	144
	.local	jedi_table
	.comm	jedi_table,3136,4
	.text
	.align	2
	.type	OPNB_ADPCMA_init_table, %function
OPNB_ADPCMA_init_table:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L320
.L325:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L321
.L324:
	ldr	r3, [fp, #-12]
	and	r3, r3, #7
	mov	r3, r3, asl #1
	add	r3, r3, #1
	ldr	r2, .L326
	ldr	r1, [fp, #-8]
	ldr	r2, [r2, r1, asl #2]
	mul	r3, r2, r3
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-12]
	add	r1, r2, r3
	ldr	r3, [fp, #-12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L322
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	b	.L323
.L322:
	ldr	r3, [fp, #-16]
.L323:
	ldr	r2, .L326+4
	str	r3, [r2, r1, asl #2]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L321:
	ldr	r3, [fp, #-12]
	cmp	r3, #15
	ble	.L324
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L320:
	ldr	r3, [fp, #-8]
	cmp	r3, #48
	ble	.L325
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L327:
	.align	2
.L326:
	.word	steps
	.word	jedi_table
	.fnend
	.size	OPNB_ADPCMA_init_table, .-OPNB_ADPCMA_init_table
	.align	2
	.type	OPNB_ADPCMA_calc_chan, %function
OPNB_ADPCMA_calc_chan:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	ldr	r3, .L339
	cmp	r2, r3
	bls	.L329
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, [fp, #-20]
	str	r3, [r2, #8]
.L338:
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	mov	r3, r3, asl #1
	eor	r3, r2, r3
	bic	r3, r3, #-16777216
	bic	r3, r3, #14680064
	cmp	r3, #0
	bne	.L330
	ldr	r3, [fp, #-20]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r2, .L339+4
	ldr	r3, .L339+8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	ldr	r2, .L339+4
	ldr	r0, .L339+8
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	b	.L328
.L330:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L332
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	and	r3, r3, #15
	strb	r3, [fp, #-9]
	b	.L333
.L332:
	ldr	r3, .L339+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r3, r3, lsr #1
	add	r3, r2, r3
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	strb	r3, [fp, #-9]
.L333:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	add	r2, r3, #1
	ldr	r3, [fp, #-20]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	ldr	r1, [r3, #32]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	add	r1, r1, r3
	ldr	r3, .L339+16
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #28]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L334
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #28]
	mvn	r3, r3, asl #20
	mvn	r3, r3, lsr #20
	ldr	r2, [fp, #-20]
	str	r3, [r2, #28]
	b	.L335
.L334:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #28]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	ldr	r2, [fp, #-20]
	str	r3, [r2, #28]
.L335:
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #32]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	and	r1, r3, #7
	ldr	r3, .L339+20
	ldr	r3, [r3, r1, asl #2]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #32]
	cmp	r3, #768
	ble	.L336
	ldr	r3, [fp, #-20]
	mov	r2, #768
	str	r2, [r3, #32]
	b	.L337
.L336:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bge	.L337
	ldr	r3, [fp, #-20]
	mov	r2, #0
	str	r2, [r3, #32]
.L337:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L338
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-20]
	ldrb	r2, [r2, #40]	@ zero_extendqisi2
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #41]	@ zero_extendqisi2
	mov	r3, r2, asr r3
	bic	r2, r3, #3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #36]
.L329:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #44]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #44]
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #36]
	add	r2, r1, r2
	str	r2, [r3, #0]
.L328:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L340:
	.align	2
.L339:
	.word	65535
	.word	YM2610
	.word	20660
	.word	pcmbufA
	.word	jedi_table
	.word	step_inc
	.fnend
	.size	OPNB_ADPCMA_calc_chan, .-OPNB_ADPCMA_calc_chan
	.align	2
	.type	OPNB_ADPCMA_write, %function
OPNB_ADPCMA_write:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, .L373
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	and	r3, r3, #7
	strb	r3, [fp, #-13]
	ldr	r3, [fp, #-36]
	and	r2, r3, #255
	ldr	r1, .L373+4
	ldr	r3, [fp, #-32]
	add	r3, r1, r3
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r3, #256
	beq	.L343
	ldr	r2, .L373+8
	cmp	r3, r2
	beq	.L344
	b	.L368
.L343:
	ldr	r3, [fp, #-36]
	and	r3, r3, #128
	cmp	r3, #0
	bne	.L345
	mov	r3, #0
	strb	r3, [fp, #-13]
	b	.L346
.L349:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, [fp, #-36]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L347
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r4, r2, r3
	ldr	r3, .L373+4
	ldr	r3, [r3, #520]	@ float
	mov	r0, r3
	ldr	r1, .L373+12	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #524288
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
	mov	r3, r0
	str	r3, [r4, #12]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #16]
	mov	r3, r3, asl #1
	str	r3, [r1, #4]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #8]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #28]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #32]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #36]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #1
	strb	r2, [r3, #0]
	ldr	r3, .L373+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L348
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [r3, #16]
	ldr	r3, .L373+20
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bcc	.L347
.L348:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
.L347:
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L346:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #5
	bls	.L349
	b	.L369
.L345:
	mov	r3, #0
	strb	r3, [fp, #-13]
	b	.L351
.L353:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, [fp, #-36]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L352
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
.L352:
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L351:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #5
	bls	.L353
	b	.L341
.L369:
	b	.L341
.L344:
	ldr	r3, [fp, #-36]
	and	r3, r3, #255
	mvn	r3, r3
	and	r3, r3, #255
	and	r3, r3, #63
	and	r3, r3, #255
	ldr	r2, .L373+4
	ldr	r0, .L373+24
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	mov	r3, #0
	strb	r3, [fp, #-13]
	b	.L355
.L358:
	ldr	r2, .L373+4
	ldr	r3, .L373+24
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r1, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #62
	ble	.L356
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #40]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #41]
	b	.L357
.L356:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	and	r2, r2, #255
	and	r2, r2, #7
	and	r2, r2, #255
	rsb	r2, r2, #15
	and	r2, r2, #255
	strb	r2, [r3, #40]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	mov	r2, r2, asr #3
	and	r2, r2, #255
	add	r2, r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #41]
.L357:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r0, [r3, #28]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	mul	r0, r3, r0
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #41]	@ zero_extendqisi2
	mov	r3, r0, asr r3
	bic	r3, r3, #3
	str	r3, [r1, #36]
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L355:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #5
	bls	.L358
	b	.L341
.L368:
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	and	r3, r3, #7
	strb	r3, [fp, #-13]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L370
.L359:
	ldr	r3, [fp, #-32]
	and	r3, r3, #312
	sub	r3, r3, #264
	cmp	r3, #32
	ldrls	pc, [pc, r3, asl #2]
	b	.L341
.L363:
	.word	.L360
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L361
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L361
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L362
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L341
	.word	.L362
.L360:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	and	r2, r2, #255
	mvn	r2, r2
	and	r2, r2, #255
	and	r2, r2, #31
	and	r2, r2, #255
	strb	r2, [r3, #24]
	ldr	r2, .L373+4
	ldr	r3, .L373+24
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r1, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r3, r1, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #62
	ble	.L364
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #40]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #41]
	b	.L365
.L364:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	and	r2, r2, #255
	and	r2, r2, #7
	and	r2, r2, #255
	rsb	r2, r2, #15
	and	r2, r2, #255
	strb	r2, [r3, #40]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	mov	r2, r2, asr #3
	and	r2, r2, #255
	add	r2, r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #41]
.L365:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	mov	r2, r2, asr #6
	and	r2, r2, #3
	mov	r1, r2, asl #2
	ldr	r2, .L373+28
	add	r2, r1, r2
	str	r2, [r3, #44]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r0, [r3, #28]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	mul	r0, r3, r0
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #41]	@ zero_extendqisi2
	mov	r3, r0, asr r3
	bic	r3, r3, #3
	str	r3, [r1, #36]
	b	.L341
.L361:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	add	r2, r2, #280
	ldr	r1, .L373+4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	mov	r1, r2, asl #8
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	add	r2, r2, #272
	ldr	r0, .L373+4
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	orr	r2, r1, r2
	mov	r2, r2, asl #8
	str	r2, [r3, #16]
	ldr	r3, .L373+20
	ldr	r3, [r3, #0]
	cmp	r3, #16777216
	bls	.L371
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	add	r3, r3, #264
	ldr	r2, .L373+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #239
	bls	.L371
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #16]
	add	r3, r3, #16777216
	str	r3, [r1, #16]
	b	.L371
.L362:
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	add	r2, r2, #296
	ldr	r1, .L373+4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	mov	r1, r2, asl #8
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	add	r2, r2, #288
	ldr	r0, .L373+4
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	orr	r2, r1, r2
	mov	r2, r2, asl #8
	str	r2, [r3, #20]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #20]
	add	r3, r3, #255
	str	r3, [r1, #20]
	ldr	r3, .L373+20
	ldr	r3, [r3, #0]
	cmp	r3, #16777216
	bls	.L372
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	add	r3, r3, #264
	ldr	r2, .L373+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #239
	bls	.L372
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r1, r2, r3
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #20]
	add	r3, r3, #16777216
	str	r3, [r1, #20]
	b	.L372
.L370:
	mov	r0, r0	@ nop
	b	.L341
.L371:
	mov	r0, r0	@ nop
	b	.L341
.L372:
	mov	r0, r0	@ nop
.L341:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L374:
	.align	2
.L373:
	.word	YM2610+20372
	.word	YM2610
	.word	257
	.word	1199570944
	.word	pcmbufA
	.word	pcmsizeA
	.word	20369
	.word	out_adpcma
	.fnend
	.size	OPNB_ADPCMA_write, .-OPNB_ADPCMA_write
	.local	pcmbufB
	.comm	pcmbufB,4,4
	.local	pcmsizeB
	.comm	pcmsizeB,4,4
	.section	.rodata
	.align	2
	.type	adpcmb_decode_table1, %object
	.size	adpcmb_decode_table1, 64
adpcmb_decode_table1:
	.word	1
	.word	3
	.word	5
	.word	7
	.word	9
	.word	11
	.word	13
	.word	15
	.word	-1
	.word	-3
	.word	-5
	.word	-7
	.word	-9
	.word	-11
	.word	-13
	.word	-15
	.align	2
	.type	adpcmb_decode_table2, %object
	.size	adpcmb_decode_table2, 64
adpcmb_decode_table2:
	.word	57
	.word	57
	.word	57
	.word	57
	.word	77
	.word	102
	.word	128
	.word	153
	.word	57
	.word	57
	.word	57
	.word	57
	.word	77
	.word	102
	.word	128
	.word	153
	.text
	.align	2
	.type	OPNB_ADPCMB_calc, %function
OPNB_ADPCMB_calc:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, .L389
	cmp	r2, r3
	bls	.L376
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, [fp, #-16]
	str	r3, [r2, #16]
.L388:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #28]
	mov	r3, r3, asl #1
	cmp	r2, r3
	bne	.L377
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #12]
.L377:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	mov	r3, r3, asl #1
	cmp	r2, r3
	bne	.L378
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L379
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [fp, #-16]
	mov	r2, #127
	str	r2, [r3, #48]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #56]
	b	.L378
.L379:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L380
	ldr	r2, .L389+4
	ldr	r3, .L389+8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #63]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	ldr	r2, .L389+4
	ldr	r0, .L389+8
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
.L380:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #65]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #56]
	b	.L375
.L378:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L382
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	and	r3, r3, #15
	str	r3, [fp, #-12]
	b	.L383
.L382:
	ldr	r3, .L389+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r3, r3, lsr #1
	add	r3, r2, r3
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #60]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	str	r3, [fp, #-12]
.L383:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	add	r2, r3, #1
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	bic	r2, r3, #-33554432
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #56]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #44]
	ldr	r3, .L389+16
	ldr	r1, [fp, #-12]
	ldr	r3, [r3, r1, asl #2]
	ldr	r1, [fp, #-16]
	ldr	r1, [r1, #48]
	mul	r3, r1, r3
	add	r1, r3, #7
	cmp	r3, #0
	movlt	r3, r1
	mov	r3, r3, asr #3
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #44]
	ldr	r3, .L389+20
	cmp	r2, r3
	ble	.L384
	ldr	r3, [fp, #-16]
	ldr	r2, .L389+20
	str	r2, [r3, #44]
	b	.L385
.L384:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #44]
	cmn	r3, #32768
	bge	.L385
	ldr	r3, [fp, #-16]
	ldr	r2, .L389+24
	str	r2, [r3, #44]
.L385:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #48]
	ldr	r2, .L389+28
	ldr	r1, [fp, #-12]
	ldr	r2, [r2, r1, asl #2]
	mul	r3, r2, r3
	add	r2, r3, #63
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #6
	mov	r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #48]
	cmp	r3, #24576
	ble	.L386
	ldr	r3, [fp, #-16]
	mov	r2, #24576
	str	r2, [r3, #48]
	b	.L387
.L386:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #48]
	cmp	r3, #126
	bgt	.L387
	ldr	r3, [fp, #-16]
	mov	r2, #127
	str	r2, [r3, #48]
.L387:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L388
.L376:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #16]
	rsb	r2, r2, #65536
	mul	r2, r3, r2
	ldr	r3, [fp, #-16]
	str	r2, [r3, #52]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #52]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #44]
	ldr	r1, [fp, #-16]
	ldr	r1, [r1, #16]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #52]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #52]
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #40]
	mul	r2, r3, r2
	ldr	r3, [fp, #-16]
	str	r2, [r3, #52]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #0]
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #52]
	add	r2, r1, r2
	str	r2, [r3, #0]
.L375:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L390:
	.align	2
.L389:
	.word	65535
	.word	YM2610
	.word	20660
	.word	pcmbufB
	.word	adpcmb_decode_table1
	.word	32767
	.word	-32768
	.word	adpcmb_decode_table2
	.fnend
	.size	OPNB_ADPCMB_calc, .-OPNB_ADPCMB_calc
	.align	2
	.type	OPNB_ADPCMB_write, %function
OPNB_ADPCMB_write:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-32]
	and	r2, r3, #255
	ldr	r1, .L408
	ldr	r3, [fp, #-28]
	add	r3, r1, r3
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #16
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L391
.L399:
	.word	.L393
	.word	.L394
	.word	.L395
	.word	.L395
	.word	.L396
	.word	.L396
	.word	.L391
	.word	.L391
	.word	.L391
	.word	.L397
	.word	.L397
	.word	.L398
.L393:
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	bic	r3, r3, #110
	and	r2, r3, #255
	ldr	r3, [fp, #-24]
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	and	r3, r3, #255
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	cmp	r3, #0
	bge	.L400
	ldr	r3, [fp, #-24]
	mov	r2, #1
	strb	r2, [r3, #65]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [fp, #-24]
	mov	r2, #127
	str	r2, [r3, #48]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #60]
.L400:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #24]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-24]
	str	r2, [r3, #12]
	ldr	r3, .L408+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L401
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #65]
	b	.L402
.L401:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #32]
	ldr	r3, .L408+8
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bcc	.L403
	ldr	r3, .L408+8
	ldr	r3, [r3, #0]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	str	r2, [r3, #32]
.L403:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #24]
	ldr	r3, .L408+8
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bcc	.L402
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #65]
.L402:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #62]	@ zero_extendqisi2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L406
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	strb	r2, [r3, #65]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L406
	ldr	r2, .L408
	ldr	r3, .L408+12
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	ldr	r2, .L408
	ldr	r0, .L408+12
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	b	.L406
.L394:
	ldr	r3, [fp, #-32]
	mov	r3, r3, asr #6
	and	r3, r3, #3
	mov	r2, r3, asl #2
	ldr	r3, .L408+16
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	b	.L391
.L395:
	ldr	r3, .L408
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	mov	r2, r3, asl #8
	ldr	r3, .L408
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	orr	r3, r2, r3
	mov	r3, r3, asl #8
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #24]
	b	.L391
.L396:
	ldr	r3, .L408
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	mov	r2, r3, asl #8
	ldr	r3, .L408
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	orr	r3, r2, r3
	mov	r3, r3, asl #8
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #32]
	add	r2, r3, #255
	ldr	r3, [fp, #-24]
	str	r2, [r3, #32]
	b	.L391
.L397:
	ldr	r3, .L408
	ldrb	r3, [r3, #26]	@ zero_extendqisi2
	mov	r2, r3, asl #8
	ldr	r3, .L408
	ldrb	r3, [r3, #25]	@ zero_extendqisi2
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #36]
	mov	r0, r3
	bl	__aeabi_ui2f
	mov	r2, r0
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r2, r0
	ldr	r3, [fp, #-24]
	str	r2, [r3, #20]
	b	.L391
.L398:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	ldr	r2, [fp, #-24]
	ldr	r2, [r2, #8]
	mov	r2, r2, asr #8
	mul	r3, r2, r3
	add	r2, r3, #32512
	add	r2, r2, #255
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #15
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L407
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r4, r0
	ldr	r0, [fp, #-16]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2iz
	mov	r2, r0
	ldr	r3, [fp, #-24]
	str	r2, [r3, #52]
	b	.L407
.L406:
	mov	r0, r0	@ nop
	b	.L391
.L407:
	mov	r0, r0	@ nop
.L391:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L409:
	.align	2
.L408:
	.word	YM2610
	.word	pcmbufB
	.word	pcmsizeB
	.word	20660
	.word	out_delta
	.fnend
	.size	OPNB_ADPCMB_write, .-OPNB_ADPCMB_write
	.align	2
	.type	YM2610Update, %function
YM2610Update:
	.fnstart
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #64
	sub	sp, sp, #64
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	ldr	r3, .L421
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-24]
	ldr	r3, .L421+4
	str	r3, [fp, #-60]
	ldr	r3, .L421+8
	str	r3, [fp, #-56]
	ldr	r3, .L421+12
	str	r3, [fp, #-52]
	ldr	r3, .L421+16
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-60]
	mov	r0, r3
	bl	refresh_fc_eg_chan
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #24]
	and	r3, r3, #192
	cmp	r3, #0
	beq	.L411
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #36]
	cmn	r3, #1
	bne	.L412
	ldr	r3, [fp, #-56]
	mov	r1, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1084]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #1094]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	refresh_fc_eg_slot
	ldr	r3, [fp, #-56]
	add	r1, r3, #160
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1088]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #1095]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	refresh_fc_eg_slot
	ldr	r3, [fp, #-56]
	add	r1, r3, #80
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1080]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #1093]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	refresh_fc_eg_slot
	ldr	r3, [fp, #-56]
	add	r1, r3, #240
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #364]
	mov	r2, r3
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	refresh_fc_eg_slot
	b	.L412
.L411:
	ldr	r3, [fp, #-56]
	mov	r0, r3
	bl	refresh_fc_eg_chan
.L412:
	ldr	r3, [fp, #-52]
	mov	r0, r3
	bl	refresh_fc_eg_chan
	ldr	r3, [fp, #-48]
	mov	r0, r3
	bl	refresh_fc_eg_chan
	ldr	r0, [fp, #-68]
	bl	SSG_calc_count
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L413
.L420:
	ldr	r0, [fp, #-28]
	bl	advance_lfo
	ldr	r3, .L421+20
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L421+20
	ldr	r2, [r3, #12]
	ldr	r3, .L421+20
	str	r2, [r3, #4]
	ldr	r3, .L421+20
	ldr	r2, [r3, #4]
	ldr	r3, .L421+20
	str	r2, [r3, #8]
	ldr	r3, .L421+24
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L421+24
	ldr	r2, [r3, #12]
	ldr	r3, .L421+24
	str	r2, [r3, #4]
	ldr	r3, .L421+24
	ldr	r2, [r3, #4]
	ldr	r3, .L421+24
	str	r2, [r3, #8]
	ldr	r3, .L421+28
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L421+28
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L421+28
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L421+28
	mov	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L421+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #1164]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1168]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #1164]
	b	.L414
.L415:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #1164]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1172]
	rsb	r2, r3, r2
	ldr	r3, [fp, #-28]
	str	r2, [r3, #1164]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1160]
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #1160]
	ldr	r3, [fp, #-60]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	advance_eg_channel
	ldr	r3, [fp, #-56]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	advance_eg_channel
	ldr	r3, [fp, #-52]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	advance_eg_channel
	ldr	r3, [fp, #-48]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	advance_eg_channel
.L414:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #1164]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1172]
	cmp	r2, r3
	bcs	.L415
	ldr	r3, [fp, #-60]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	chan_calc
	ldr	r3, [fp, #-56]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	chan_calc
	ldr	r3, [fp, #-52]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	chan_calc
	ldr	r3, [fp, #-48]
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	chan_calc
	ldr	r0, [fp, #-16]
	bl	SSG_CALC
	str	r0, [fp, #-16]
	ldr	r2, .L421+36
	ldr	r3, .L421+40
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	and	r3, r3, #255
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	cmp	r3, #0
	bge	.L416
	ldr	r0, .L421+44
	bl	OPNB_ADPCMB_calc
.L416:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L417
.L419:
	ldr	r0, .L421+36
	ldr	r2, [fp, #-12]
	ldr	r1, .L421+48
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L418
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, .L421+52
	add	r3, r2, r3
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	OPNB_ADPCMA_calc_chan
.L418:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L417:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L419
	ldr	r3, .L421+20
	ldr	r2, [r3, #8]
	ldr	r3, .L421+20
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+20
	ldr	r2, [r3, #4]
	ldr	r3, .L421+20
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L421+24
	ldr	r2, [r3, #8]
	ldr	r3, .L421+24
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	mov	r3, r3, asr #9
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+24
	ldr	r2, [r3, #4]
	ldr	r3, .L421+24
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	mov	r3, r3, asr #9
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L421+32
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+32
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L421+28
	ldr	r3, [r3, #4]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1120]
	and	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+28
	ldr	r3, [r3, #4]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1124]
	and	r2, r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L421+28
	ldr	r3, [r3, #8]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1128]
	and	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+28
	ldr	r3, [r3, #8]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1132]
	and	r2, r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L421+28
	ldr	r3, [r3, #16]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1144]
	and	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+28
	ldr	r3, [r3, #16]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1148]
	and	r2, r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L421+28
	ldr	r3, [r3, #20]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1152]
	and	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, .L421+28
	ldr	r3, [r3, #20]
	mov	r3, r3, asr #1
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #1156]
	and	r2, r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-36]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L413:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	blt	.L420
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L422:
	.align	2
.L421:
	.word	YM2610+512
	.word	YM2610+18488
	.word	YM2610+18864
	.word	YM2610+19616
	.word	YM2610+19992
	.word	out_adpcma
	.word	out_delta
	.word	out_fm
	.word	out_ssg
	.word	YM2610
	.word	20726
	.word	YM2610+20664
	.word	20368
	.word	YM2610+20372
	.fnend
	.size	YM2610Update, .-YM2610Update
	.align	2
	.global	YM2610Init
	.type	YM2610Init, %function
YM2610Init:
	.fnstart
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, .L424
	ldr	r3, [r3, #0]
	mov	r2, #65536
	str	r2, [r3, #0]
	ldr	r3, .L424
	ldr	r3, [r3, #0]
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, .L424
	ldr	r3, [r3, #0]
	ldr	r2, .L424+4
	str	r2, [r3, #8]
	ldr	r3, .L424
	ldr	r3, [r3, #0]
	mov	r2, #1472
	str	r2, [r3, #12]
	ldr	r3, .L424
	ldr	r3, [r3, #0]
	ldr	r2, .L424+8
	str	r2, [r3, #20]
	ldr	r3, .L424+12
	ldr	r2, .L424+16
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L424+20
	mov	r2, #208
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	bl	OPNInitTable
	bl	SSG_init_table
	bl	OPNB_ADPCMA_init_table
	ldr	r3, .L424+12
	ldr	r2, .L424+24
	str	r2, [r3, #1620]
	ldr	r3, .L424+12
	ldr	r2, [fp, #-8]
	str	r2, [r3, #512]
	ldr	r3, .L424
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #8]
	ldr	r3, .L424+12
	str	r2, [r3, #516]
	ldr	r3, .L424+12
	ldr	r2, [fp, #8]
	str	r2, [r3, #1584]
	ldr	r3, .L424+12
	ldr	r2, [fp, #12]
	str	r2, [r3, #1588]
	ldr	r3, .L424+28
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, .L424+32
	str	r2, [r3, #0]
	ldr	r3, .L424+36
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r2, [fp, #4]
	ldr	r3, .L424+40
	str	r2, [r3, #0]
	ldr	r2, .L424+12
	ldr	r0, .L424+44
	mvn	r3, #127
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	bl	YM2610Reset
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L425:
	.align	2
.L424:
	.word	sound
	.word	44100
	.word	YM2610Update
	.word	YM2610
	.word	20732
	.word	SSG
	.word	YM2610+18112
	.word	pcmbufA
	.word	pcmsizeA
	.word	pcmbufB
	.word	pcmsizeB
	.word	20727
	.fnend
	.size	YM2610Init, .-YM2610Init
	.align	2
	.global	YM2610Reset
	.type	YM2610Reset, %function
YM2610Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L436
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-12]
	mov	r1, #144
	mov	r2, #144
	mov	r3, #8
	bl	OPNSetPres
	bl	SSG_reset
	ldr	r3, [fp, #-12]
	mov	r0, r3
	mov	r1, #3
	bl	FM_IRQMASK_SET
	ldr	r3, [fp, #-12]
	ldr	r2, .L436+4	@ float
	str	r2, [r3, #16]	@ float
	ldr	r0, [fp, #-12]
	mov	r1, #39
	mov	r2, #48
	bl	OPNWriteMode
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3, #1164]
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3, #1160]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	mov	r1, #255
	bl	FM_STATUS_RESET
	ldr	r3, [fp, #-12]
	mov	r0, r3
	ldr	r1, .L436+8
	mov	r2, #6
	bl	reset_channels
	mov	r3, #182
	str	r3, [fp, #-8]
	b	.L427
.L428:
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-8]
	mov	r2, #192
	bl	OPNWriteReg
	ldr	r3, [fp, #-8]
	orr	r3, r3, #256
	ldr	r0, [fp, #-12]
	mov	r1, r3
	mov	r2, #192
	bl	OPNWriteReg
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L427:
	ldr	r3, [fp, #-8]
	cmp	r3, #179
	bgt	.L428
	mov	r3, #178
	str	r3, [fp, #-8]
	b	.L429
.L430:
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-8]
	mov	r2, #0
	bl	OPNWriteReg
	ldr	r3, [fp, #-8]
	orr	r3, r3, #256
	ldr	r0, [fp, #-12]
	mov	r1, r3
	mov	r2, #0
	bl	OPNWriteReg
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L429:
	ldr	r3, [fp, #-8]
	cmp	r3, #47
	bgt	.L430
	mov	r3, #38
	str	r3, [fp, #-8]
	b	.L431
.L432:
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-8]
	mov	r2, #0
	bl	OPNWriteReg
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L431:
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bgt	.L432
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L433
.L434:
	ldr	r3, .L436+12
	ldr	r3, [r3, #520]	@ float
	mov	r0, r3
	ldr	r1, .L436+16	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #524288
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
	mov	r1, r0
	ldr	ip, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r0, .L436+20
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+24
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+28
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+32
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+36
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+40
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #4]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+44
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, .L436+48
	str	r2, [r3, #0]
	mov	r2, #1
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	and	r1, r3, #255
	ldr	ip, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r0, .L436+52
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #5]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+52
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #4]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+56
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+60
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L436+12
	ldr	r2, [fp, #-8]
	ldr	r1, .L436+40
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L433:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L434
	ldr	r2, .L436+12
	ldr	r0, .L436+64
	mov	r3, #63
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r0, .L436+68
	mov	r3, #0
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-12]
	ldr	r1, [r3, #8]	@ float
	ldr	r2, .L436+12
	ldr	r3, .L436+72
	str	r1, [r2, r3]	@ float
	ldr	r2, .L436+12
	ldr	r3, .L436+76
	mov	r1, #8388608
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+80
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+84
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+88
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+92
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+96
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+100
	mvn	r1, #-16777216
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+104
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+108
	ldr	r1, .L436+112
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+116
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+120
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+124
	mov	r1, #127
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+128
	mov	r1, #0
	str	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r0, .L436+132
	mov	r3, #32
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	ldr	r2, .L436+12
	ldr	r3, .L436+136
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L426
	ldr	r2, .L436+12
	ldr	r3, .L436+68
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r1, .L436+12
	ldr	r3, .L436+136
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	orr	r3, r2, r3
	and	r3, r3, #255
	ldr	r2, .L436+12
	ldr	r0, .L436+68
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
.L426:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L437:
	.align	2
.L436:
	.word	YM2610+512
	.word	0
	.word	YM2610+18112
	.word	YM2610
	.word	1199570944
	.word	20384
	.word	20376
	.word	20380
	.word	20388
	.word	20392
	.word	20408
	.word	20416
	.word	out_adpcma+12
	.word	20368
	.word	20400
	.word	20404
	.word	20369
	.word	20660
	.word	20668
	.word	20672
	.word	20676
	.word	20680
	.word	20684
	.word	20688
	.word	20696
	.word	20692
	.word	20704
	.word	20664
	.word	out_delta+12
	.word	20708
	.word	20720
	.word	20712
	.word	20716
	.word	20726
	.word	20728
	.fnend
	.size	YM2610Reset, .-YM2610Reset
	.align	2
	.global	YM2610_set_samplerate
	.type	YM2610_set_samplerate, %function
YM2610_set_samplerate:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L441
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #8]
	ldr	r3, .L441+4
	str	r2, [r3, #516]
	ldr	r0, .L441+8
	mov	r1, #144
	mov	r2, #144
	mov	r3, #8
	bl	OPNSetPres
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L439
.L440:
	ldr	r3, .L441+4
	ldr	r3, [r3, #520]	@ float
	mov	r0, r3
	ldr	r1, .L441+12	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #524288
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
	mov	r1, r0
	ldr	ip, .L441+4
	ldr	r2, [fp, #-8]
	ldr	r0, .L441+16
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L439:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L440
	ldr	r3, .L441+4
	ldr	r1, [r3, #520]	@ float
	ldr	r2, .L441+4
	ldr	r3, .L441+20
	str	r1, [r2, r3]	@ float
	ldr	r2, .L441+4
	ldr	r3, .L441+24
	ldr	r3, [r2, r3]
	mov	r0, r3
	bl	__aeabi_ui2f
	mov	r2, r0
	ldr	r1, .L441+4
	ldr	r3, .L441+20
	ldr	r3, [r1, r3]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r1, r0
	ldr	r2, .L441+4
	ldr	r3, .L441+28
	str	r1, [r2, r3]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L442:
	.align	2
.L441:
	.word	sound
	.word	YM2610
	.word	YM2610+512
	.word	1199570944
	.word	20384
	.word	20668
	.word	20700
	.word	20684
	.fnend
	.size	YM2610_set_samplerate, .-YM2610_set_samplerate
	.align	2
	.global	YM2610Write
	.type	YM2610Write, %function
YM2610Write:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, r1
	strb	r3, [fp, #-25]
	ldr	r3, .L468
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	and	r3, r3, #3
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L444
.L449:
	.word	.L445
	.word	.L446
	.word	.L447
	.word	.L448
.L445:
	ldr	r3, [fp, #-12]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #20]
	ldr	r2, .L468+4
	ldr	r0, .L468+8
	mov	r3, #0
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	b	.L444
.L446:
	ldr	r2, .L468+4
	ldr	r3, .L468+8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L465
.L450:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	str	r3, [fp, #-16]
	ldr	r2, .L468+4
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	and	r3, r3, #240
	cmp	r3, #16
	beq	.L453
	cmp	r3, #32
	beq	.L454
	cmp	r3, #0
	bne	.L464
.L452:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	SSG_write
	b	.L455
.L453:
	ldr	r3, [fp, #-16]
	cmp	r3, #28
	bhi	.L466
	ldr	r2, .L468+12
	ldr	r3, [fp, #-16]
	mov	r3, r2, asl r3
	cmp	r3, #0
	blt	.L457
	mov	r2, #8
	ldr	r3, [fp, #-16]
	mov	r3, r2, asl r3
	cmp	r3, #0
	blt	.L458
	b	.L456
.L457:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r0, .L468+16
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	OPNB_ADPCMB_write
	b	.L456
.L458:
	ldrb	r3, [fp, #-25]
	mvn	r3, r3
	strb	r3, [fp, #-17]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L459
.L460:
	mov	r2, #1
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	and	r2, r3, #255
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	and	r3, r2, r3
	and	r3, r3, #255
	and	r1, r3, #255
	ldr	ip, .L468+4
	ldr	r2, [fp, #-8]
	ldr	r0, .L468+8
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #5]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L459:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L460
	ldrb	r3, [fp, #-17]
	bic	r3, r3, #127
	and	r3, r3, #255
	ldr	r2, .L468+4
	ldr	r0, .L468+20
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	ldr	r2, .L468+4
	ldr	r3, .L468+24
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [fp, #-17]
	and	r3, r2, r3
	and	r3, r3, #255
	ldr	r2, .L468+4
	ldr	r0, .L468+24
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	mov	r0, r0	@ nop
.L456:
	b	.L466
.L454:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	OPNWriteMode
	b	.L455
.L464:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	OPNWriteReg
	b	.L455
.L466:
	mov	r0, r0	@ nop
.L455:
	b	.L444
.L447:
	ldr	r3, [fp, #-12]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #20]
	ldr	r2, .L468+4
	ldr	r0, .L468+8
	mov	r3, #1
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	b	.L444
.L448:
	ldr	r2, .L468+4
	ldr	r3, .L468+8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L467
.L461:
	ldr	r3, .L468+4
	ldrb	r3, [r3, #532]	@ zero_extendqisi2
	orr	r3, r3, #256
	str	r3, [fp, #-16]
	ldr	r2, .L468+4
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, .L468+28
	cmp	r2, r3
	bgt	.L462
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	b	.L444
.L462:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	OPNWriteReg
	b	.L444
.L465:
	mov	r0, r0	@ nop
	b	.L444
.L467:
	mov	r0, r0	@ nop
.L444:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L469:
	.align	2
.L468:
	.word	YM2610+512
	.word	YM2610
	.word	20368
	.word	64624
	.word	YM2610+20664
	.word	20727
	.word	20660
	.word	303
	.fnend
	.size	YM2610Write, .-YM2610Write
	.align	2
	.global	YM2610Read
	.type	YM2610Read, %function
YM2610Read:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, .L479
	ldrb	r3, [r3, #532]	@ zero_extendqisi2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L473
	cmp	r3, #2
	beq	.L474
	cmp	r3, #0
	bne	.L471
.L472:
	ldr	r0, .L479+4
	bl	FM_STATUS_FLAG
	mov	r3, r0
	bic	r3, r3, #124
	and	r3, r3, #255
	b	.L475
.L473:
	ldr	r3, [fp, #-8]
	cmp	r3, #13
	bgt	.L476
	ldr	r2, .L479
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	b	.L475
.L476:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	bne	.L478
	mov	r3, #1
	b	.L475
.L474:
	ldr	r2, .L479
	ldr	r3, .L479+8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L475
.L478:
	mov	r0, r0	@ nop
.L471:
	mov	r3, #0
.L475:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L480:
	.align	2
.L479:
	.word	YM2610
	.word	YM2610+512
	.word	20660
	.fnend
	.size	YM2610Read, .-YM2610Read
	.align	2
	.global	YM2610TimerOver
	.type	YM2610TimerOver, %function
YM2610TimerOver:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, .L484
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L482
	ldr	r0, [fp, #-8]
	bl	TimerBOver
	b	.L483
.L482:
	ldr	r0, [fp, #-8]
	bl	TimerAOver
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #24]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L483
	ldr	r0, .L484+4
	bl	CSMKeyControll
.L483:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L485:
	.align	2
.L484:
	.word	YM2610+512
	.word	YM2610+18864
	.fnend
	.size	YM2610TimerOver, .-YM2610TimerOver
	.align	2
	.global	state_save_ym2610
	.type	state_save_ym2610, %function
state_save_ym2610:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #512
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #512
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #532]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #533]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #534]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #535]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #540]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #541]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+20
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #552]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+24
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L487
.L490:
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	mov	r1, #376
	mul	r3, r1, r3
	add	r1, r3, #18432
	ldr	r3, .L493+4
	add	r3, r1, r3
	add	r3, r3, #4
	mov	ip, #8
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #8
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	mov	r1, #376
	mul	r3, r1, r3
	add	r3, r3, #18432
	add	r3, r3, #40
	ldr	r1, .L493+4
	add	r3, r3, r1
	add	r3, r3, #4
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L488
.L489:
	ldr	r3, [fp, #-12]
	mov	r2, #376
	mul	r3, r2, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r2, .L493+4
	add	r1, r3, r2
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r1, r3
	str	r3, [fp, #-16]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-16]
	add	r2, r2, #40
	ldrb	r2, [r2, #0]
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L488:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L489
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L487:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L490
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+28
	mov	r2, r3
	mov	r3, r1
	mov	ip, #12
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #12
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r2, .L493+4
	ldrb	r2, [r2, #1604]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r2, [r3, #0]
	ldr	r3, .L493+4
	add	r3, r3, #1600
	add	r3, r3, #5
	mov	ip, #3
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #3
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+4
	ldr	r2, .L493+32
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+4
	ldr	r2, .L493+36
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L491
.L492:
	ldr	r3, .L493
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #144
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strb	r3, [r1, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #144
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #6
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strb	r3, [r1, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #144
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #8
	mov	r2, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #152
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r2, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #168
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #8
	mov	r2, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #176
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r2, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #176
	ldr	r2, .L493+4
	add	r3, r3, r2
	add	r3, r3, #8
	mov	r2, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L491:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L492
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+4
	ldr	r2, .L493+40
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+44
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+48
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+52
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+56
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+60
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	ldr	r1, .L493+64
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L493
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L493
	str	r2, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L494:
	.align	2
.L493:
	.word	state_buffer
	.word	YM2610
	.word	YM2610+528
	.word	YM2610+536
	.word	YM2610+544
	.word	YM2610+548
	.word	YM2610+556
	.word	YM2610+1592
	.word	20368
	.word	20660
	.word	20726
	.word	YM2610+20676
	.word	YM2610+20680
	.word	YM2610+20708
	.word	YM2610+20720
	.word	YM2610+20712
	.word	YM2610+20716
	.fnend
	.size	state_save_ym2610, .-state_save_ym2610
	.align	2
	.global	state_load_ym2610
	.type	state_load_ym2610, %function
state_load_ym2610:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r3, .L514
	mov	r0, r3
	mov	r1, #1
	mov	r2, #512
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+16
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+24
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+28
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+32
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+36
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+40
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+44
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+48
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L496
.L499:
	ldr	r3, [fp, #-12]
	mov	r2, #376
	mul	r3, r2, r3
	add	r2, r3, #18432
	ldr	r3, .L514
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, [fp, #-12]
	mov	r2, #376
	mul	r3, r2, r3
	add	r3, r3, #18432
	add	r3, r3, #40
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L497
.L498:
	ldr	r3, [fp, #-12]
	mov	r2, #376
	mul	r3, r2, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r2, .L514
	add	r1, r3, r2
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r1, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #32
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, [fp, #-20]
	add	r3, r3, #40
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, [fp, #-20]
	add	r3, r3, #48
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L497:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L498
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L496:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L499
	ldr	r3, .L514+52
	mov	r0, r3
	mov	r1, #1
	mov	r2, #12
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+56
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+60
	mov	r0, r3
	mov	r1, #1
	mov	r2, #3
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+64
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+68
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L500
.L501:
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #144
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #144
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #6
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #144
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #152
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #168
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #176
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, #20224
	add	r3, r3, #176
	ldr	r2, .L514
	add	r3, r3, r2
	add	r3, r3, #8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L500:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L501
	ldr	r3, .L514+72
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+76
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+80
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+84
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+88
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+92
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L514+96
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L502
.L503:
	mov	r0, #0
	ldr	r1, [fp, #-16]
	bl	SSG_write
	ldr	r2, .L514
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, #1
	mov	r1, r3
	bl	SSG_write
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L502:
	ldr	r3, [fp, #-16]
	cmp	r3, #15
	ble	.L503
	mov	r3, #48
	str	r3, [fp, #-16]
	b	.L504
.L506:
	ldr	r3, [fp, #-16]
	and	r3, r3, #3
	cmp	r3, #3
	beq	.L505
	ldr	r2, .L514
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r0, .L514+100
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	OPNWriteReg
	ldr	r3, [fp, #-16]
	orr	r2, r3, #256
	ldr	r3, [fp, #-16]
	orr	r3, r3, #256
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	ldr	r0, .L514+100
	mov	r1, r2
	mov	r2, r3
	bl	OPNWriteReg
.L505:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L504:
	ldr	r3, [fp, #-16]
	cmp	r3, #157
	ble	.L506
	mov	r3, #176
	str	r3, [fp, #-16]
	b	.L507
.L509:
	ldr	r3, [fp, #-16]
	and	r3, r3, #3
	cmp	r3, #3
	beq	.L508
	ldr	r2, .L514
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r0, .L514+100
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	OPNWriteReg
	ldr	r3, [fp, #-16]
	orr	r2, r3, #256
	ldr	r3, [fp, #-16]
	orr	r3, r3, #256
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	ldr	r0, .L514+100
	mov	r1, r2
	mov	r2, r3
	bl	OPNWriteReg
.L508:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L507:
	ldr	r3, [fp, #-16]
	cmp	r3, #181
	ble	.L509
	ldr	r3, .L514
	ldrb	r3, [r3, #257]	@ zero_extendqisi2
	ldr	r0, .L514+104
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L510
.L511:
	ldr	r3, [fp, #-16]
	add	r2, r3, #264
	ldr	r3, [fp, #-16]
	add	r3, r3, #264
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	ldr	r3, [fp, #-16]
	add	r2, r3, #272
	ldr	r3, [fp, #-16]
	add	r3, r3, #272
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	ldr	r3, [fp, #-16]
	add	r2, r3, #280
	ldr	r3, [fp, #-16]
	add	r3, r3, #280
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	ldr	r3, [fp, #-16]
	add	r2, r3, #288
	ldr	r3, [fp, #-16]
	add	r3, r3, #288
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	ldr	r3, [fp, #-16]
	add	r2, r3, #296
	ldr	r3, [fp, #-16]
	add	r3, r3, #296
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	OPNB_ADPCMA_write
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L510:
	ldr	r3, [fp, #-16]
	cmp	r3, #5
	ble	.L511
	ldr	r2, .L514
	ldr	r3, .L514+108
	mov	r1, #0
	str	r1, [r2, r3]
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L512
.L513:
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, .L514
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	ldr	r0, .L514+112
	mov	r1, r2
	mov	r2, r3
	bl	OPNB_ADPCMB_write
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L512:
	ldr	r3, [fp, #-16]
	cmp	r3, #15
	ble	.L513
	ldr	r3, .L514+116
	ldr	r2, [r3, #0]
	ldr	r1, .L514
	ldr	r3, .L514+120
	ldr	r3, [r1, r3]
	mov	r3, r3, lsr #1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r2, .L514
	ldr	r0, .L514+124
	mov	r1, r3
	mov	r3, r0
	strb	r1, [r2, r3]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L515:
	.align	2
.L514:
	.word	YM2610
	.word	YM2610+528
	.word	YM2610+532
	.word	YM2610+533
	.word	YM2610+534
	.word	YM2610+535
	.word	YM2610+536
	.word	YM2610+540
	.word	YM2610+541
	.word	YM2610+544
	.word	YM2610+548
	.word	YM2610+552
	.word	YM2610+556
	.word	YM2610+1592
	.word	YM2610+1604
	.word	YM2610+1605
	.word	YM2610+20368
	.word	YM2610+20660
	.word	YM2610+20726
	.word	YM2610+20676
	.word	YM2610+20680
	.word	YM2610+20708
	.word	YM2610+20720
	.word	YM2610+20712
	.word	YM2610+20716
	.word	YM2610+512
	.word	257
	.word	20704
	.word	YM2610+20664
	.word	pcmbufB
	.word	20676
	.word	20724
	.fnend
	.size	state_load_ym2610, .-state_load_ym2610
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
