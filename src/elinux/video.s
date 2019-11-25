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
	.file	"video.c"
	.global	COLOR555TO565
	.bss
	.align	2
	.type	COLOR555TO565, %object
	.size	COLOR555TO565, 131072
COLOR555TO565:
	.space	131072
	.comm	screen,4,4
	.global	gGameW
	.data
	.align	2
	.type	gGameW, %object
	.size	gGameW, 4
gGameW:
	.word	320
	.global	gGameH
	.align	2
	.type	gGameH, %object
	.size	gGameH, 4
gGameH:
	.word	240
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SDL_Init error: %s\012\000"
	.align	2
.LC1:
	.ascii	"couldn't set %dx%d 16 bits color model, error is %s"
	.ascii	"\012\000"
	.text
	.align	2
	.global	init_screen
	.type	init_screen, %function
init_screen:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r0, #32
	bl	SDL_Init
	mov	r3, r0
	cmp	r3, #0
	bge	.L2
	ldr	r3, .L4
	ldr	r3, [r3, #0]
	mov	r4, r3
	ldr	r5, .L4+4
	bl	SDL_GetError
	mov	r3, r0
	mov	r0, r4
	mov	r2, r5
	mov	r1, r2
	mov	r2, r3
	bl	fprintf
	mov	r0, #1
	bl	exit
.L2:
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r2, #16
	mov	r3, #0
	bl	SDL_SetVideoMode
	mov	r2, r0
	ldr	r3, .L4+8
	str	r2, [r3, #0]
	ldr	r3, .L4+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L4
	ldr	r3, [r3, #0]
	mov	r4, r3
	ldr	r5, .L4+12
	bl	SDL_GetError
	mov	r3, r0
	str	r3, [sp, #0]
	mov	r0, r4
	mov	r3, r5
	mov	r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	bl	fprintf
	mov	r0, #1
	bl	exit
.L3:
	ldr	r0, .L4+16
	bl	atexit
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
.L5:
	.align	2
.L4:
	.word	stderr
	.word	.LC0
	.word	screen
	.word	.LC1
	.word	SDL_Quit
	.fnend
	.size	init_screen, .-init_screen
	.align	2
	.global	update_screen
	.type	update_screen, %function
update_screen:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #32
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L6
	ldr	r3, .L14
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, .L14+4
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-12]
	mov	r3, #0
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	cmp	r3, #304
	bne	.L8
	ldr	r3, .L14+12
	b	.L9
.L8:
	ldr	r3, .L14+16
.L9:
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L10
.L13:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L11
.L12:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrh	r2, [fp, #-22]
	ldr	r1, .L14+20
	mov	r2, r2, asl #1
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L11:
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L12
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1024
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L10:
	ldr	r3, .L14+24
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	blt	.L13
	ldr	r3, .L14+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	SDL_Flip
.L6:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L15:
	.align	2
.L14:
	.word	gVideoBuff16
	.word	screen
	.word	gGameW
	.word	16432
	.word	16416
	.word	COLOR555TO565
	.word	gGameH
	.fnend
	.size	update_screen, .-update_screen
	.section	.rodata
	.align	2
.LC2:
	.ascii	"+++ gamew = %d gameh = %d +++\012\000"
	.text
	.align	2
	.global	neo_game_w_h_cb
	.type	neo_game_w_h_cb, %function
neo_game_w_h_cb:
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
	ldr	r3, .L17
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, .L17+4
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	bl	neo_init_color_table
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	init_screen
	ldr	r1, .L17+8
	ldr	r3, .L17
	ldr	r2, [r3, #0]
	ldr	r3, .L17+4
	ldr	r3, [r3, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L18:
	.align	2
.L17:
	.word	gGameW
	.word	gGameH
	.word	.LC2
	.fnend
	.size	neo_game_w_h_cb, .-neo_game_w_h_cb
	.align	2
	.global	neo_init_color_table
	.type	neo_init_color_table, %function
neo_init_color_table:
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
	b	.L20
.L21:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asr #10
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #31
	strh	r3, [fp, #-14]	@ movhi
	ldr	r3, [fp, #-12]
	mov	r3, r3, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #31
	strh	r3, [fp, #-16]	@ movhi
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #31
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-16]
	mov	r3, r3, lsr #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	strh	r3, [fp, #-16]	@ movhi
	ldrh	r3, [fp, #-18]
	mov	r3, r3, asl #11
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-16]
	mov	r3, r3, asl #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L22
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L20:
	ldr	r2, [fp, #-8]
	ldr	r3, .L22+4
	cmp	r2, r3
	ble	.L21
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L23:
	.align	2
.L22:
	.word	COLOR555TO565
	.word	65534
	.fnend
	.size	neo_init_color_table, .-neo_init_color_table
	.align	2
	.global	poll_gamepad
	.type	poll_gamepad, %function
poll_gamepad:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L25
.L26:
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	cmp	r3, #12
	bne	.L25
	bl	neogeo_emulator_exit
.L25:
	sub	r3, fp, #28
	mov	r0, r3
	bl	SDL_PollEvent
	mov	r3, r0
	cmp	r3, #0
	bne	.L26
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	poll_gamepad, .-poll_gamepad
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
