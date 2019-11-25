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
	.file	"sprite.c"
	.comm	gVideoBuff8,245760,4
	.global	gVideoBuff16
	.data
	.align	2
	.type	gVideoBuff16, %object
	.size	gVideoBuff16, 4
gVideoBuff16:
	.word	gVideoBuff8
	.global	gNeoPalColor
	.bss
	.align	1
	.type	gNeoPalColor, %object
	.size	gNeoPalColor, 2
gNeoPalColor:
	.space	2
	.global	gFramesEmulated
	.align	2
	.type	gFramesEmulated, %object
	.size	gFramesEmulated, 4
gFramesEmulated:
	.space	4
	.text
	.align	2
	.global	video_clear_buffer
	.type	video_clear_buffer, %function
video_clear_buffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L2
	mov	r2, #245760
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldmfd	sp!, {fp, pc}
.L3:
	.align	2
.L2:
	.word	gVideoBuff8
	.fnend
	.size	video_clear_buffer, .-video_clear_buffer
	.align	2
	.global	blit_reset
	.type	blit_reset, %function
blit_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L5
	ldr	r2, .L5+4
	str	r2, [r3, #0]
	ldr	r3, .L5+8
	mov	r2, #0
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L6:
	.align	2
.L5:
	.word	gVideoBuff16
	.word	gVideoBuff8
	.word	gFramesEmulated
	.fnend
	.size	blit_reset, .-blit_reset
	.align	2
	.global	blit_start
	.type	blit_start, %function
blit_start:
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
	ldr	r3, [fp, #-24]
	cmp	r3, #16
	bne	.L7
	ldr	r3, .L15
	str	r3, [fp, #-8]
	ldr	r3, .L15+4
	ldr	r3, [r3, #0]
	cmp	r3, #304
	bne	.L9
	ldr	r3, .L15+8
	b	.L10
.L9:
	ldr	r3, .L15+12
.L10:
	str	r3, [fp, #-12]
	ldr	r3, .L15+16
	ldr	r3, [r3, #0]
	add	r3, r3, #8128
	add	r3, r3, #62
	ldrh	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #16
	ldr	r2, [fp, #-20]
	orr	r3, r2, r3
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L11
.L12:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L11:
	ldr	r3, [fp, #-16]
	cmp	r3, #19
	ble	.L12
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L13
.L14:
	ldr	r2, [fp, #-12]
	ldr	r0, .L15
	ldr	r3, .L15+4
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #1
	mov	r1, r2
	mov	r2, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	ldr	r3, [fp, #-12]
	add	r3, r3, #1024
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L13:
	ldr	r3, [fp, #-16]
	cmp	r3, #223
	ble	.L14
.L7:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L16:
	.align	2
.L15:
	.word	gVideoBuff8
	.word	neo_game_w
	.word	gVideoBuff8+16432
	.word	gVideoBuff8+16416
	.word	video_palette
	.fnend
	.size	blit_start, .-blit_start
	.align	2
	.global	blit_finish
	.type	blit_finish, %function
blit_finish:
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
	.size	blit_finish, .-blit_finish
	.align	2
	.global	blit_draw_fix
	.type	blit_draw_fix, %function
blit_draw_fix:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #44
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	strh	r3, [fp, #-42]	@ movhi
	mov	r3, #8
	str	r3, [fp, #-8]
	ldr	r3, .L29
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #5
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, .L29+4
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-42]
	mov	r3, r3, asl #4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, .L29+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #9
	mov	r1, r3
	ldr	r3, [fp, #-32]
	add	r3, r1, r3
	mov	r3, r3, asl #1
	add	r3, r2, r3
	str	r3, [fp, #-16]
	b	.L19
.L28:
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L20
	ldr	r3, [fp, #-16]
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L20:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L21
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L21:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L22
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L22:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L23
	ldr	r3, [fp, #-16]
	add	r3, r3, #10
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L23:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L24
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L24:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L25
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L25:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L26
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L26:
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	blt	.L27
	ldr	r3, [fp, #-16]
	add	r3, r3, #14
	ldrh	r2, [fp, #-26]	@ movhi
	strh	r2, [r3, #0]	@ movhi
.L27:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1024
	str	r3, [fp, #-16]
.L19:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	ldr	r2, [fp, #-8]
	sub	r2, r2, #1
	str	r2, [fp, #-8]
	cmp	r3, #0
	bne	.L28
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L30:
	.align	2
.L29:
	.word	fix_memory
	.word	video_palette
	.word	gVideoBuff16
	.fnend
	.size	blit_draw_fix, .-blit_draw_fix
	.align	2
	.global	blit_draw_spr
	.type	blit_draw_spr, %function
blit_draw_spr:
	.fnstart
	@ args = 8, pretend = 0, frame = 16
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
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	blit_draw_spr, .-blit_draw_spr
	.align	2
	.global	blit_finish_spr
	.type	blit_finish_spr, %function
blit_finish_spr:
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
	.size	blit_finish_spr, .-blit_finish_spr
	.data
	.align	2
	.type	drawgfxline, %object
	.size	drawgfxline, 32
drawgfxline:
	.word	drawgfxline_zoom
	.word	drawgfxline_zoom_flip
	.word	drawgfxline_zoom_opaque
	.word	drawgfxline_zoom_flip_opaque
	.word	drawgfxline_fixed
	.word	drawgfxline_fixed_flip
	.word	drawgfxline_fixed_opaque
	.word	drawgfxline_fixed_flip_opaque
	.section	.rodata
	.align	2
	.type	zoom_x_tables, %object
	.size	zoom_x_tables, 256
zoom_x_tables:
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
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
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
	.byte	0
	.byte	1
	.byte	1
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
	.text
	.align	2
	.type	drawgfxline_zoom, %function
drawgfxline_zoom:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #4
	ldr	r3, .L65
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L35
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L35:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L34:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	ldr	r3, [fp, #-12]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L37
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L37:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L36:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
	ldr	r3, [fp, #-12]
	and	r3, r3, #983040
	cmp	r3, #0
	beq	.L39
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L39:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L38:
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	ldr	r3, [fp, #-12]
	and	r3, r3, #251658240
	cmp	r3, #0
	beq	.L41
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L41:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L40:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
	ldr	r3, [fp, #-12]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L43
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L43:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L42:
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L44
	ldr	r3, [fp, #-12]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L45
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L45:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L44:
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L46
	ldr	r3, [fp, #-12]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L47
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L47:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L46:
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	ldr	r3, [fp, #-12]
	and	r3, r3, #-268435456
	cmp	r3, #0
	beq	.L49
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L49:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L48:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L50
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L51
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L51:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L50:
	ldr	r3, [fp, #-8]
	add	r3, r3, #9
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L52
	ldr	r3, [fp, #-12]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L53
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L53:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L52:
	ldr	r3, [fp, #-8]
	add	r3, r3, #10
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L54
	ldr	r3, [fp, #-12]
	and	r3, r3, #983040
	cmp	r3, #0
	beq	.L55
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L55:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L54:
	ldr	r3, [fp, #-8]
	add	r3, r3, #11
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L56
	ldr	r3, [fp, #-12]
	and	r3, r3, #251658240
	cmp	r3, #0
	beq	.L57
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L57:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L56:
	ldr	r3, [fp, #-8]
	add	r3, r3, #12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L58
	ldr	r3, [fp, #-12]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L59
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L59:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L58:
	ldr	r3, [fp, #-8]
	add	r3, r3, #13
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L60
	ldr	r3, [fp, #-12]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L61
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L61:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L60:
	ldr	r3, [fp, #-8]
	add	r3, r3, #14
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L62
	ldr	r3, [fp, #-12]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L63
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L63:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L62:
	ldr	r3, [fp, #-8]
	add	r3, r3, #15
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L33
	ldr	r3, [fp, #-12]
	and	r3, r3, #-268435456
	cmp	r3, #0
	beq	.L33
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L33:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L66:
	.align	2
.L65:
	.word	zoom_x_tables
	.fnend
	.size	drawgfxline_zoom, .-drawgfxline_zoom
	.align	2
	.type	drawgfxline_zoom_opaque, %function
drawgfxline_zoom_opaque:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #4
	ldr	r3, .L84
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L68
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L68:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L69:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L70
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L70:
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L71
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L71:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L72
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L72:
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L73
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L73:
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L74
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L74:
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L75
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L75:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L76
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L76:
	ldr	r3, [fp, #-8]
	add	r3, r3, #9
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L77
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L77:
	ldr	r3, [fp, #-8]
	add	r3, r3, #10
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L78
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L78:
	ldr	r3, [fp, #-8]
	add	r3, r3, #11
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L79:
	ldr	r3, [fp, #-8]
	add	r3, r3, #12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L80
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L80:
	ldr	r3, [fp, #-8]
	add	r3, r3, #13
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L81
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L81:
	ldr	r3, [fp, #-8]
	add	r3, r3, #14
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L82
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L82:
	ldr	r3, [fp, #-8]
	add	r3, r3, #15
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L67:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L85:
	.align	2
.L84:
	.word	zoom_x_tables
	.fnend
	.size	drawgfxline_zoom_opaque, .-drawgfxline_zoom_opaque
	.align	2
	.type	drawgfxline_zoom_flip, %function
drawgfxline_zoom_flip:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #4
	ldr	r3, .L118
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L87
	ldr	r3, [fp, #-12]
	and	r3, r3, #-268435456
	cmp	r3, #0
	beq	.L88
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L88:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L87:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	ldr	r3, [fp, #-12]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L90
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L90:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L89:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	ldr	r3, [fp, #-12]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L92
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L92:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L91:
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L93
	ldr	r3, [fp, #-12]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L94
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L94:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L93:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L95
	ldr	r3, [fp, #-12]
	and	r3, r3, #251658240
	cmp	r3, #0
	beq	.L96
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L96:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L95:
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L97
	ldr	r3, [fp, #-12]
	and	r3, r3, #983040
	cmp	r3, #0
	beq	.L98
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L98:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L97:
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L99
	ldr	r3, [fp, #-12]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L100
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L100:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L99:
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L101
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L102
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L102:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L101:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L103
	ldr	r3, [fp, #-12]
	and	r3, r3, #-268435456
	cmp	r3, #0
	beq	.L104
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L104:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L103:
	ldr	r3, [fp, #-8]
	add	r3, r3, #9
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L105
	ldr	r3, [fp, #-12]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L106
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L106:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L105:
	ldr	r3, [fp, #-8]
	add	r3, r3, #10
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L107
	ldr	r3, [fp, #-12]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L108
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L108:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L107:
	ldr	r3, [fp, #-8]
	add	r3, r3, #11
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L109
	ldr	r3, [fp, #-12]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L110
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L110:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L109:
	ldr	r3, [fp, #-8]
	add	r3, r3, #12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L111
	ldr	r3, [fp, #-12]
	and	r3, r3, #251658240
	cmp	r3, #0
	beq	.L112
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L112:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L111:
	ldr	r3, [fp, #-8]
	add	r3, r3, #13
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L113
	ldr	r3, [fp, #-12]
	and	r3, r3, #983040
	cmp	r3, #0
	beq	.L114
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L114:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L113:
	ldr	r3, [fp, #-8]
	add	r3, r3, #14
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L115
	ldr	r3, [fp, #-12]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L116
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L116:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L115:
	ldr	r3, [fp, #-8]
	add	r3, r3, #15
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L86
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L86
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L86:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L119:
	.align	2
.L118:
	.word	zoom_x_tables
	.fnend
	.size	drawgfxline_zoom_flip, .-drawgfxline_zoom_flip
	.align	2
	.type	drawgfxline_zoom_flip_opaque, %function
drawgfxline_zoom_flip_opaque:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #4
	ldr	r3, .L137
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L121
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L121:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L122
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L122:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L123:
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L124
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L124:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L125
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L125:
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L126
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L126:
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L127
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L127:
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L128
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L128:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L129
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L129:
	ldr	r3, [fp, #-8]
	add	r3, r3, #9
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L130
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #20
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L130:
	ldr	r3, [fp, #-8]
	add	r3, r3, #10
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L131
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L131:
	ldr	r3, [fp, #-8]
	add	r3, r3, #11
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L132
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #4
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L132:
	ldr	r3, [fp, #-8]
	add	r3, r3, #12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L133
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #24
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L133:
	ldr	r3, [fp, #-8]
	add	r3, r3, #13
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L134
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L134:
	ldr	r3, [fp, #-8]
	add	r3, r3, #14
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L135
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #8
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L135:
	ldr	r3, [fp, #-8]
	add	r3, r3, #15
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L120
	ldr	r3, [fp, #-12]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L120:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L138:
	.align	2
.L137:
	.word	zoom_x_tables
	.fnend
	.size	drawgfxline_zoom_flip_opaque, .-drawgfxline_zoom_flip_opaque
	.align	2
	.type	drawgfxline_fixed, %function
drawgfxline_fixed:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L140
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L141
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L141:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L142
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L142:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L143
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L143:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L144
	ldr	r3, [fp, #-20]
	add	r3, r3, #10
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L144:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L145
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L145:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L146
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L146:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L147
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L147:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L140
	ldr	r3, [fp, #-20]
	add	r3, r3, #14
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L140:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L139
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L149
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L149:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L150
	ldr	r3, [fp, #-20]
	add	r3, r3, #24
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L150:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L151
	ldr	r3, [fp, #-20]
	add	r3, r3, #18
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L151:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L152
	ldr	r3, [fp, #-20]
	add	r3, r3, #26
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L152:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L153
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L153:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L154
	ldr	r3, [fp, #-20]
	add	r3, r3, #28
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L154:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L155
	ldr	r3, [fp, #-20]
	add	r3, r3, #22
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L155:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L139
	ldr	r3, [fp, #-20]
	add	r3, r3, #30
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L139:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	drawgfxline_fixed, .-drawgfxline_fixed
	.align	2
	.type	drawgfxline_fixed_opaque, %function
drawgfxline_fixed_opaque:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #10
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #16
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #20
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #24
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #14
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #28
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #24
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #18
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #26
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #16
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #28
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #20
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #22
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #24
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #30
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #28
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	drawgfxline_fixed_opaque, .-drawgfxline_fixed_opaque
	.align	2
	.type	drawgfxline_fixed_flip, %function
drawgfxline_fixed_flip:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L158
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L159
	ldr	r3, [fp, #-20]
	add	r3, r3, #30
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L159:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L160
	ldr	r3, [fp, #-20]
	add	r3, r3, #22
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L160:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L161
	ldr	r3, [fp, #-20]
	add	r3, r3, #28
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L161:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L162
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L162:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L163
	ldr	r3, [fp, #-20]
	add	r3, r3, #26
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L163:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L164
	ldr	r3, [fp, #-20]
	add	r3, r3, #18
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L164:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L165
	ldr	r3, [fp, #-20]
	add	r3, r3, #24
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L165:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L158
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L158:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L157
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L167
	ldr	r3, [fp, #-20]
	add	r3, r3, #14
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L167:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L168
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L168:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L169
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L169:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L170
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L170:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L171
	ldr	r3, [fp, #-20]
	add	r3, r3, #10
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L171:
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	beq	.L172
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L172:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3840
	cmp	r3, #0
	beq	.L173
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
.L173:
	ldr	r3, [fp, #-8]
	and	r3, r3, #61440
	cmp	r3, #0
	beq	.L157
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #12
	and	r3, r3, #15
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
.L157:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	drawgfxline_fixed_flip, .-drawgfxline_fixed_flip
	.align	2
	.type	drawgfxline_fixed_flip_opaque, %function
drawgfxline_fixed_flip_opaque:
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
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #28
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #20
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #24
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #10
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #16
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #14
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #28
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #18
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #20
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #12
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #22
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #4
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #24
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #24
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #26
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #16
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #28
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #8
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #30
	ldr	r2, [fp, #-8]
	and	r2, r2, #15
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	drawgfxline_fixed_flip_opaque, .-drawgfxline_fixed_flip_opaque
	.align	2
	.global	blit_draw_spr_line
	.type	blit_draw_spr_line, %function
blit_draw_spr_line:
	.fnstart
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #32
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #4]
	mov	r3, r3, asl #7
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #9
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #8]	@ movhi
	and	r3, r3, #255
	and	r3, r3, #1
	and	r2, r3, #255
	ldrb	r3, [fp, #12]	@ zero_extendqisi2
	and	r3, r3, #2
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r2, r3, #255
	ldr	r3, [fp, #-32]
	and	r3, r3, #16
	mov	r3, r3, asr #2
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-13]
	ldrh	r3, [fp, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L176
	ldr	r3, [fp, #-36]
	eor	r3, r3, #15
	str	r3, [fp, #-36]
.L176:
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	ldr	r3, .L177
	ldr	ip, [r3, r2, asl #2]
	ldr	r3, .L177+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r1, r2, r3
	ldr	r3, .L177+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	add	r2, r2, r3
	ldr	r3, .L177+12
	ldr	r0, [r3, #0]
	ldrh	r3, [fp, #8]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #4
	mov	r3, r3, asl #1
	add	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	blx	ip
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L178:
	.align	2
.L177:
	.word	drawgfxline
	.word	memory_region_gfx3
	.word	gVideoBuff16
	.word	video_palette
	.fnend
	.size	blit_draw_spr_line, .-blit_draw_spr_line
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
