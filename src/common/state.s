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
	.file	"state.c"
	.comm	date_str,16,4
	.comm	time_str,16,4
	.comm	stver_str,16,4
	.comm	state_version,4,4
	.comm	state_buffer,4,4
	.comm	current_state_version,4,4
	.comm	state_reload_bios,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"MVS_SV23\000"
	.data
	.align	2
	.type	current_version_str, %object
	.size	current_version_str, 4
current_version_str:
	.word	.LC0
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%sstate/%s.sv%d\000"
	.align	2
.LC2:
	.ascii	"STATE_SAVING %s.sv%d\000"
	.align	2
.LC3:
	.ascii	"wb\000"
	.align	2
.LC4:
	.ascii	"COULD_NOT_ALLOCATE_STATE_BUFFER\000"
	.text
	.align	2
	.global	state_save
	.type	state_save, %function
state_save:
	.fnstart
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #288
	sub	sp, sp, #288
	str	r0, [fp, #-280]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r2, .L7
	ldr	r3, [fp, #-280]
	str	r3, [sp, #0]
	sub	r3, fp, #272
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L7+4
	ldr	r3, .L7+8
	bl	sprintf
	sub	r3, fp, #272
	mov	r0, r3
	bl	remove
	ldr	r3, .L7+12
	mov	r0, r3
	ldr	r1, .L7+8
	ldr	r2, [fp, #-280]
	bl	printf
	ldr	r2, .L7+16
	sub	r3, fp, #272
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	mov	r0, #327680
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, .L7+20
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	ldr	r3, .L7+20
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L2
	ldr	r0, .L7+24
	bl	puts
	mov	r0, r0	@ nop
.L3:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L5
	b	.L6
.L2:
	ldr	r3, .L7+20
	ldr	r3, [r3, #0]
	mov	r2, #327680
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L7+20
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L7+28
	ldr	r3, [r3, #0]
	mov	ip, #8
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L7+20
	ldr	r3, [r3, #0]
	add	r2, r3, #8
	ldr	r3, .L7+20
	str	r2, [r3, #0]
	bl	state_save_memory
	bl	state_save_m68000
	bl	state_save_z80
	bl	state_save_input
	bl	state_save_timer
	bl	state_save_driver
	bl	state_save_video
	bl	state_save_ym2610
	bl	state_save_pd4990a
	ldr	r3, .L7+20
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	bl	fwrite
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r0, [fp, #-12]
	bl	free
	mov	r3, #1
	b	.L4
.L6:
	ldr	r0, [fp, #-8]
	bl	fclose
	sub	r3, fp, #272
	mov	r0, r3
	bl	remove
.L5:
	mov	r3, #0
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC1
	.word	launchDir
	.word	game_name
	.word	.LC2
	.word	.LC3
	.word	state_buffer
	.word	.LC4
	.word	current_version_str
	.fnend
	.size	state_save, .-state_save
	.section	.rodata
	.align	2
.LC5:
	.ascii	"STATE_LOADING %s.sv%d\012\000"
	.align	2
.LC6:
	.ascii	"rb\000"
	.align	2
.LC7:
	.ascii	"COULD_NOT_RELOAD_BIOS\000"
	.align	2
.LC8:
	.ascii	"COULD_NOT_OPEN_STATE_FILE %s.sv%d\012\000"
	.text
	.align	2
	.global	state_load
	.type	state_load, %function
state_load:
	.fnstart
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #280
	sub	sp, sp, #280
	str	r0, [fp, #-272]
	ldr	r2, .L13
	ldr	r3, [fp, #-272]
	str	r3, [sp, #0]
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L13+4
	ldr	r3, .L13+8
	bl	sprintf
	ldr	r3, .L13+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L13+16
	mov	r0, r3
	ldr	r1, .L13+8
	ldr	r2, [fp, #-272]
	bl	printf
	ldr	r2, .L13+20
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L10
	ldr	r0, [fp, #-8]
	mov	r1, #8
	mov	r2, #1
	bl	fseek
	ldr	r0, [fp, #-8]
	bl	state_load_memory
	ldr	r0, [fp, #-8]
	bl	state_load_m68000
	ldr	r0, [fp, #-8]
	bl	state_load_z80
	ldr	r0, [fp, #-8]
	bl	state_load_input
	ldr	r0, [fp, #-8]
	bl	state_load_timer
	ldr	r0, [fp, #-8]
	bl	state_load_driver
	ldr	r0, [fp, #-8]
	bl	state_load_video
	ldr	r0, [fp, #-8]
	bl	state_load_ym2610
	ldr	r0, [fp, #-8]
	bl	state_load_pd4990a
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r3, .L13+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L11
	ldr	r3, .L13+12
	mov	r2, #0
	str	r2, [r3, #0]
	bl	reload_bios
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	ldr	r0, .L13+24
	bl	puts
	ldr	r3, .L13+28
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L12
.L11:
	mov	r3, #1
	b	.L12
.L10:
	ldr	r3, .L13+32
	mov	r0, r3
	ldr	r1, .L13+8
	ldr	r2, [fp, #-272]
	bl	printf
	mov	r3, #0
.L12:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC1
	.word	launchDir
	.word	game_name
	.word	state_reload_bios
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	Loop
	.word	.LC8
	.fnend
	.size	state_load, .-state_load
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
