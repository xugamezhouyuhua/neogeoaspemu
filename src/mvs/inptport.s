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
	.file	"inptport.c"
	.comm	option_controller,4,4
	.comm	neogeo_port_value,6,4
	.comm	analog_sensitivity,4,4
	.comm	neogeo_dipswitch,4,4
	.comm	neogeo_input_mode,4,4
	.comm	input_analog_value,8,4
	.local	service_switch
	.comm	service_switch,4,4
	.local	poll_pad
	.comm	poll_pad,4,4
	.text
	.align	2
	.global	check_input_mode
	.type	check_input_mode, %function
check_input_mode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L12
	ldr	r3, [r3, #0]
	cmp	r3, #31
	beq	.L2
	ldr	r3, .L12
	ldr	r3, [r3, #0]
	cmp	r3, #32
	beq	.L2
	ldr	r3, .L12
	ldr	r3, [r3, #0]
	cmp	r3, #33
	beq	.L2
	ldr	r3, .L12
	ldr	r3, [r3, #0]
	cmp	r3, #34
	beq	.L2
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	cmp	r3, #10
	bne	.L3
.L2:
	ldr	r3, .L12+8
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L1
.L3:
	ldr	r3, .L12+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L5
	ldr	r3, .L12+16
	ldr	r3, [r3, #0]
	add	r3, r3, #512
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L6
	ldr	r3, .L12+8
	mov	r2, #0
	str	r2, [r3, #0]
	b	.L7
.L6:
	ldr	r3, .L12+8
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L7
.L5:
	ldr	r3, .L12+12
	ldr	r3, [r3, #0]
	sub	r2, r3, #1
	ldr	r3, .L12+8
	str	r2, [r3, #0]
.L7:
	ldr	r3, .L12+20
	ldrh	r2, [r3, #0]
	ldr	r3, .L12+24
	cmp	r2, r3
	beq	.L11
.L8:
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	cmp	r3, #24
	bhi	.L1
	ldr	r2, .L12+28
	mov	r2, r2, asl r3
	cmp	r2, #0
	blt	.L9
	ldr	r2, .L12+32
	mov	r3, r2, asl r3
	cmp	r3, #0
	bge	.L1
.L10:
	ldr	r3, .L12+36
	ldrh	r3, [r3, #2]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r3, lsr #31
	ldr	r3, .L12+8
	str	r2, [r3, #0]
	b	.L1
.L9:
	ldr	r3, .L12+8
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
	b	.L1
.L11:
	mov	r0, r0	@ nop
.L1:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L13:
	.align	2
.L12:
	.word	machine_init_type
	.word	neogeo_bios
	.word	neogeo_input_mode
	.word	neogeo_machine_mode
	.word	memory_region_user1
	.word	neogeo_ngh
	.word	566
	.word	1572992
	.word	524032
	.word	neogeo_sram16
	.fnend
	.size	check_input_mode, .-check_input_mode
	.align	2
	.type	update_inputport0, %function
update_inputport0:
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
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mvn	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, .L35
	ldrh	r3, [r3, #0]
	ldr	r2, .L35+4
	cmp	r3, r2
	beq	.L16
	ldr	r2, .L35+8
	cmp	r3, r2
	beq	.L17
	b	.L32
.L16:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L18
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #1
	strb	r3, [fp, #-5]
.L18:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L19
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #2
	strb	r3, [fp, #-5]
.L19:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L20
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #4
	strb	r3, [fp, #-5]
.L20:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L21
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
.L21:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L22
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #16
	strb	r3, [fp, #-5]
.L22:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L33
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #32
	strb	r3, [fp, #-5]
	b	.L33
.L17:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L25
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #1
	strb	r3, [fp, #-5]
.L25:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L26
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #2
	strb	r3, [fp, #-5]
.L26:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L27
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #4
	strb	r3, [fp, #-5]
.L27:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L28
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
.L28:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L29
	ldrb	r3, [fp, #-5]
	and	r3, r3, #111
	strb	r3, [fp, #-5]
.L29:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L30
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #32
	strb	r3, [fp, #-5]
.L30:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L34
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #64
	strb	r3, [fp, #-5]
	b	.L34
.L32:
	ldrh	r3, [fp, #-14]	@ movhi
	and	r3, r3, #255
	mvn	r3, r3
	and	r2, r3, #255
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	and	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	b	.L24
.L33:
	mov	r0, r0	@ nop
	b	.L24
.L34:
	mov	r0, r0	@ nop
.L24:
	ldr	r3, .L35+12
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L36:
	.align	2
.L35:
	.word	neogeo_ngh
	.word	566
	.word	567
	.word	neogeo_port_value
	.fnend
	.size	update_inputport0, .-update_inputport0
	.align	2
	.type	update_inputport1, %function
update_inputport1:
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
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mvn	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, .L58
	ldrh	r3, [r3, #0]
	ldr	r2, .L58+4
	cmp	r3, r2
	beq	.L39
	ldr	r2, .L58+8
	cmp	r3, r2
	beq	.L40
	b	.L55
.L39:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L41
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #1
	strb	r3, [fp, #-5]
.L41:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L42
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #2
	strb	r3, [fp, #-5]
.L42:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L43
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #4
	strb	r3, [fp, #-5]
.L43:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L44
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
.L44:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L45
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #16
	strb	r3, [fp, #-5]
.L45:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L56
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #32
	strb	r3, [fp, #-5]
	b	.L56
.L40:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L48
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #1
	strb	r3, [fp, #-5]
.L48:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L49
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #2
	strb	r3, [fp, #-5]
.L49:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L50
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #4
	strb	r3, [fp, #-5]
.L50:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L51
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
.L51:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L52
	ldrb	r3, [fp, #-5]
	and	r3, r3, #111
	strb	r3, [fp, #-5]
.L52:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L53
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #32
	strb	r3, [fp, #-5]
.L53:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L57
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #64
	strb	r3, [fp, #-5]
	b	.L57
.L55:
	ldrh	r3, [fp, #-14]	@ movhi
	and	r3, r3, #255
	mvn	r3, r3
	and	r2, r3, #255
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	and	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	b	.L47
.L56:
	mov	r0, r0	@ nop
	b	.L47
.L57:
	mov	r0, r0	@ nop
.L47:
	ldr	r3, .L58+12
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #1]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L59:
	.align	2
.L58:
	.word	neogeo_ngh
	.word	566
	.word	567
	.word	neogeo_port_value
	.fnend
	.size	update_inputport1, .-update_inputport1
	.align	2
	.type	update_inputport2, %function
update_inputport2:
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
	mov	r2, r0
	mov	r3, r1
	strh	r2, [fp, #-14]	@ movhi
	strh	r3, [fp, #-16]	@ movhi
	mvn	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, .L75
	ldrh	r3, [r3, #0]
	cmp	r3, #4096
	beq	.L62
	ldr	r2, .L75+4
	cmp	r3, r2
	beq	.L72
	b	.L71
.L62:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L64
	ldrh	r3, [fp, #-16]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L73
.L64:
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #1
	strb	r3, [fp, #-5]
	b	.L73
.L71:
	ldrh	r3, [fp, #-16]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L67
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #4
	strb	r3, [fp, #-5]
.L67:
	ldr	r3, .L75+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L68
	ldrh	r3, [fp, #-16]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L68
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
.L68:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L69
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #1
	strb	r3, [fp, #-5]
.L69:
	ldr	r3, .L75+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L74
	ldrh	r3, [fp, #-14]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L74
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #2
	strb	r3, [fp, #-5]
	b	.L74
.L72:
	mov	r0, r0	@ nop
	b	.L66
.L73:
	mov	r0, r0	@ nop
	b	.L66
.L74:
	mov	r0, r0	@ nop
.L66:
	ldr	r3, .L75+12
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #2]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L76:
	.align	2
.L75:
	.word	neogeo_ngh
	.word	4097
	.word	neogeo_input_mode
	.word	neogeo_port_value
	.fnend
	.size	update_inputport2, .-update_inputport2
	.align	2
	.type	update_inputport4, %function
update_inputport4:
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
	mov	r2, r0
	mov	r3, r1
	strh	r2, [fp, #-14]	@ movhi
	strh	r3, [fp, #-16]	@ movhi
	mvn	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, .L85
	ldrh	r3, [r3, #0]
	cmp	r3, #4096
	beq	.L83
	mov	r3, #63
	strb	r3, [fp, #-5]
	ldr	r3, .L85+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L84
	ldrh	r3, [fp, #-16]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L82
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
.L82:
	ldrh	r3, [fp, #-14]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L84
	ldrb	r3, [fp, #-5]
	bic	r3, r3, #8
	strb	r3, [fp, #-5]
	b	.L84
.L83:
	mov	r0, r0	@ nop
	b	.L80
.L84:
	mov	r0, r0	@ nop
.L80:
	ldr	r3, .L85+8
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #4]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L86:
	.align	2
.L85:
	.word	neogeo_ngh
	.word	neogeo_input_mode
	.word	neogeo_port_value
	.fnend
	.size	update_inputport4, .-update_inputport4
	.align	2
	.type	update_inputport5, %function
update_inputport5:
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
	mvn	r3, #63
	strb	r3, [fp, #-5]
	ldr	r3, .L88
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #5]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L89:
	.align	2
.L88:
	.word	neogeo_port_value
	.fnend
	.size	update_inputport5, .-update_inputport5
	.align	2
	.type	irrmaze_update_analog_port, %function
irrmaze_update_analog_port:
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
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	irrmaze_update_analog_port, .-irrmaze_update_analog_port
	.align	2
	.type	popbounc_update_analog_port, %function
popbounc_update_analog_port:
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
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	popbounc_update_analog_port, .-popbounc_update_analog_port
	.align	2
	.global	input_init
	.type	input_init, %function
input_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L93
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r0, .L93+4
	mov	r1, #255
	mov	r2, #6
	bl	memset
	ldr	r3, .L93+8
	mov	r2, #127
	str	r2, [r3, #0]
	ldr	r3, .L93+8
	mov	r2, #127
	str	r2, [r3, #4]
	ldr	r3, .L93+12
	mov	r2, #255
	str	r2, [r3, #0]
	ldr	r3, .L93+16
	ldr	r2, .L93+20
	str	r2, [r3, #0]
	mov	r3, #1
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L94:
	.align	2
.L93:
	.word	service_switch
	.word	neogeo_port_value
	.word	input_analog_value
	.word	neogeo_dipswitch
	.word	poll_pad
	.word	poll_gamepad
	.fnend
	.size	input_init, .-input_init
	.align	2
	.global	input_shutdown
	.type	input_shutdown, %function
input_shutdown:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	input_shutdown, .-input_shutdown
	.align	2
	.global	input_reset
	.type	input_reset, %function
input_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r0, .L98
	mov	r1, #255
	mov	r2, #6
	bl	memset
	ldr	r3, .L98+4
	mov	r2, #127
	str	r2, [r3, #0]
	ldr	r3, .L98+4
	mov	r2, #127
	str	r2, [r3, #4]
	ldr	r3, .L98+8
	mov	r2, #0
	str	r2, [r3, #0]
	bl	check_input_mode
	ldr	r3, .L98+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L96
	ldr	r3, .L98+16
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r1, .L98
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #3]
.L96:
	ldmfd	sp!, {fp, pc}
.L99:
	.align	2
.L98:
	.word	neogeo_port_value
	.word	input_analog_value
	.word	service_switch
	.word	neogeo_input_mode
	.word	neogeo_dipswitch
	.fnend
	.size	input_reset, .-input_reset
	.align	2
	.global	update_inputport
	.type	update_inputport, %function
update_inputport:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldr	r3, .L102
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L102+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L101
	ldr	r3, .L102+4
	ldr	r3, [r3, #0]
	blx	r3
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L101:
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	bl	update_inputport0
	ldrh	r3, [fp, #-8]
	mov	r0, r3
	bl	update_inputport1
	ldrh	r2, [fp, #-6]
	ldrh	r3, [fp, #-8]
	mov	r0, r2
	mov	r1, r3
	bl	update_inputport2
	ldrh	r2, [fp, #-6]
	ldrh	r3, [fp, #-8]
	mov	r0, r2
	mov	r1, r3
	bl	update_inputport4
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L103:
	.align	2
.L102:
	.word	service_switch
	.word	poll_pad
	.fnend
	.size	update_inputport, .-update_inputport
	.align	2
	.global	state_save_input
	.type	state_save_input, %function
state_save_input:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	ldr	r1, .L105+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L105
	str	r2, [r3, #0]
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	ldr	r1, .L105+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L105
	str	r2, [r3, #0]
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	ldr	r1, .L105+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L105
	str	r2, [r3, #0]
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	ldr	r1, .L105+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L105
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L105
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L106:
	.align	2
.L105:
	.word	state_buffer
	.word	option_controller
	.word	neogeo_dipswitch
	.word	input_analog_value
	.word	input_analog_value+4
	.fnend
	.size	state_save_input, .-state_save_input
	.align	2
	.global	state_load_input
	.type	state_load_input, %function
state_load_input:
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
	ldr	r3, .L108
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L108+4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L108+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L108+12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	bl	check_input_mode
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L109:
	.align	2
.L108:
	.word	option_controller
	.word	neogeo_dipswitch
	.word	input_analog_value
	.word	input_analog_value+4
	.fnend
	.size	state_load_input, .-state_load_input
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
