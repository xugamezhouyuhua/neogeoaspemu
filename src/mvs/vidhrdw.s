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
	.file	"vidhrdw.c"
	.comm	neogeo_videoram,131072,4
	.comm	videoram_read_buffer,2,2
	.comm	videoram_offset,2,2
	.comm	videoram_modulo,2,2
	.comm	palettes,16384,4
	.comm	palette_bank,1,1
	.comm	video_palette,4,4
	.comm	video_palettebank,16384,16
	.comm	video_clut16,65536,4
	.comm	gfx_pen_usage,12,4
	.comm	fix_bank,1,1
	.comm	fix_usage,4,4
	.comm	fix_memory,4,4
	.comm	neogeo_fix_bank_type,4,4
	.comm	max_sprite_number,2,2
	.local	xoffset
	.comm	xoffset,2,2
	.local	high_tile_mask
	.comm	high_tile_mask,4,4
	.local	sprite_gfx_code_mask
	.comm	sprite_gfx_code_mask,4,4
	.local	next_update_first_line
	.comm	next_update_first_line,4,4
	.local	spr_pen_usage
	.comm	spr_pen_usage,4,4
	.data
	.align	2
	.type	sprite_zoom_control, %object
	.size	sprite_zoom_control, 4
sprite_zoom_control:
	.word	neogeo_videoram+65536
	.align	2
	.type	sprite_y_control, %object
	.size	sprite_y_control, 4
sprite_y_control:
	.word	neogeo_videoram+66560
	.align	2
	.type	sprite_x_control, %object
	.size	sprite_x_control, 4
sprite_x_control:
	.word	neogeo_videoram+67584
	.local	skip_fullmode0
	.comm	skip_fullmode0,4,4
	.local	skip_fullmode1
	.comm	skip_fullmode1,4,4
	.local	tile_fullmode0
	.comm	tile_fullmode0,4,4
	.local	tile_fullmode1
	.comm	tile_fullmode1,4,4
	.local	draw_fixed_layer_func
	.comm	draw_fixed_layer_func,8,4
	.local	draw_fixed_layer
	.comm	draw_fixed_layer,4,4
	.text
	.align	2
	.type	draw_fixed_layer_type0, %function
draw_fixed_layer_type0:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	ldr	r3, .L7
	ldrh	r3, [r3, #0]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #3
	strh	r3, [fp, #-6]	@ movhi
	b	.L2
.L6:
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #5
	add	r3, r3, #28672
	add	r3, r3, #2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, .L7+4
	add	r3, r2, r3
	str	r3, [fp, #-12]
	mov	r3, #2
	strh	r3, [fp, #-8]	@ movhi
	b	.L3
.L5:
	ldr	r3, [fp, #-12]
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-14]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-14]
	mov	r3, r3, lsr #12
	strh	r3, [fp, #-16]	@ movhi
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	strh	r3, [fp, #-14]	@ movhi
	ldr	r3, .L7+8
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-14]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #3
	add	r0, r3, #16
	ldrh	r3, [fp, #-8]
	mov	r1, r3, asl #3
	ldrh	r2, [fp, #-14]
	ldrh	r3, [fp, #-16]
	bl	blit_draw_fix
.L4:
	ldrh	r3, [fp, #-8]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
.L3:
	ldrh	r3, [fp, #-8]
	cmp	r3, #29
	bls	.L5
	ldrh	r3, [fp, #-6]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-6]	@ movhi
.L2:
	ldrh	r2, [fp, #-6]
	ldr	r3, .L7
	ldrh	r3, [r3, #0]
	rsb	r3, r3, #320
	add	r1, r3, #7
	cmp	r3, #0
	movlt	r3, r1
	mov	r3, r3, asr #3
	cmp	r2, r3
	blt	.L6
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L8:
	.align	2
.L7:
	.word	xoffset
	.word	neogeo_videoram
	.word	fix_usage
	.fnend
	.size	draw_fixed_layer_type0, .-draw_fixed_layer_type0
	.align	2
	.type	draw_fixed_layer_type1, %function
draw_fixed_layer_type1:
	.fnstart
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #152
	sub	sp, sp, #152
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	b	.L10
.L12:
	ldr	r3, [fp, #-16]
	add	r3, r3, #29952
	ldr	r2, .L18
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	cmp	r3, #512
	bne	.L11
	ldr	r3, [fp, #-16]
	add	r3, r3, #29952
	add	r3, r3, #128
	ldr	r2, .L18
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	and	r3, r3, #65280
	cmp	r3, #65280
	bne	.L11
	ldr	r3, [fp, #-16]
	add	r3, r3, #29952
	add	r3, r3, #128
	ldr	r2, .L18
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	and	r3, r3, #3
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-8]
	mvn	r1, #147
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	ldrh	r3, [fp, #-8]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
.L11:
	ldrh	r3, [fp, #-8]
	mvn	r1, #147
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	ldrh	r3, [fp, #-8]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
.L10:
	ldrh	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L12
	ldr	r3, .L18+4
	ldrh	r3, [r3, #0]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #3
	strh	r3, [fp, #-6]	@ movhi
	b	.L13
.L17:
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #5
	add	r3, r3, #28672
	add	r3, r3, #2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, .L18
	add	r3, r2, r3
	str	r3, [fp, #-20]
	mov	r3, #2
	strh	r3, [fp, #-8]	@ movhi
	b	.L14
.L16:
	ldr	r3, [fp, #-20]
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
	ldrh	r3, [fp, #-22]
	mov	r3, r3, lsr #12
	strh	r3, [fp, #-24]	@ movhi
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	strh	r3, [fp, #-22]	@ movhi
	ldrh	r3, [fp, #-8]
	sub	r3, r3, #2
	and	r3, r3, #31
	mvn	r1, #147
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #12
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-22]	@ movhi
	add	r3, r2, r3
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, .L18+8
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-22]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L15
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #3
	add	r0, r3, #16
	ldrh	r3, [fp, #-8]
	mov	r1, r3, asl #3
	ldrh	r2, [fp, #-22]
	ldrh	r3, [fp, #-24]
	bl	blit_draw_fix
.L15:
	ldrh	r3, [fp, #-8]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
.L14:
	ldrh	r3, [fp, #-8]
	cmp	r3, #29
	bls	.L16
	ldrh	r3, [fp, #-6]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-6]	@ movhi
.L13:
	ldrh	r2, [fp, #-6]
	ldr	r3, .L18+4
	ldrh	r3, [r3, #0]
	rsb	r3, r3, #320
	add	r1, r3, #7
	cmp	r3, #0
	movlt	r3, r1
	mov	r3, r3, asr #3
	cmp	r2, r3
	blt	.L17
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L19:
	.align	2
.L18:
	.word	neogeo_videoram
	.word	xoffset
	.word	fix_usage
	.fnend
	.size	draw_fixed_layer_type1, .-draw_fixed_layer_type1
	.align	2
	.type	draw_fixed_layer_type2, %function
draw_fixed_layer_type2:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	ldr	r3, .L26
	ldrh	r3, [r3, #0]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #3
	strh	r3, [fp, #-6]	@ movhi
	b	.L21
.L25:
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #5
	add	r3, r3, #28672
	add	r3, r3, #2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, .L26+4
	add	r3, r2, r3
	str	r3, [fp, #-12]
	mov	r3, #2
	strh	r3, [fp, #-8]	@ movhi
	b	.L22
.L24:
	ldr	r3, [fp, #-12]
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-14]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-14]
	mov	r3, r3, lsr #12
	strh	r3, [fp, #-16]	@ movhi
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-8]
	sub	r3, r3, #1
	and	r3, r3, #31
	add	r2, r3, #29952
	ldrh	r1, [fp, #-6]
	ldr	r3, .L26+8
	umull	r0, r3, r1, r3
	mov	r3, r3, lsr #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #5
	add	r3, r2, r3
	ldr	r2, .L26+4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r0, r3
	ldrh	r2, [fp, #-6]
	ldr	r3, .L26+8
	umull	r1, r3, r2, r3
	mov	r1, r3, lsr #2
	mov	r3, r1
	mov	r3, r3, asl #1
	add	r3, r3, r1
	mov	r3, r3, asl #1
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #5
	mov	r3, r3, asl #1
	mov	r3, r0, asr r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mvn	r3, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #12
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	add	r3, r2, r3
	strh	r3, [fp, #-14]	@ movhi
	ldr	r3, .L26+12
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-14]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L23
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #3
	add	r0, r3, #16
	ldrh	r3, [fp, #-8]
	mov	r1, r3, asl #3
	ldrh	r2, [fp, #-14]
	ldrh	r3, [fp, #-16]
	bl	blit_draw_fix
.L23:
	ldrh	r3, [fp, #-8]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
.L22:
	ldrh	r3, [fp, #-8]
	cmp	r3, #29
	bls	.L24
	ldrh	r3, [fp, #-6]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-6]	@ movhi
.L21:
	ldrh	r2, [fp, #-6]
	ldr	r3, .L26
	ldrh	r3, [r3, #0]
	rsb	r3, r3, #320
	add	r1, r3, #7
	cmp	r3, #0
	movlt	r3, r1
	mov	r3, r3, asr #3
	cmp	r2, r3
	blt	.L25
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L27:
	.align	2
.L26:
	.word	xoffset
	.word	neogeo_videoram
	.word	-1431655765
	.word	fix_usage
	.fnend
	.size	draw_fixed_layer_type2, .-draw_fixed_layer_type2
	.local	sprite_list
	.comm	sprite_list,768,4
	.align	2
	.type	draw_sprites_hardware, %function
draw_sprites_hardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #80
	sub	sp, sp, #80
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-30]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L55
.L38:
	ldr	r3, .L56
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-58]	@ movhi
	ldr	r3, .L56+4
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-60]	@ movhi
	ldrh	r3, [fp, #-58]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L30
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L52
.L31:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	b	.L33
.L30:
	ldrh	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L53
.L34:
	ldrh	r3, [fp, #-58]
	and	r3, r3, #63
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L54
.L36:
	ldrh	r3, [fp, #-58]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #512
	str	r3, [fp, #-8]
	ldr	r3, .L56+8
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #16
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-60]
	and	r3, r3, #255
	mov	r3, r3, asl #6
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	ble	.L37
	mov	r3, #512
	str	r3, [fp, #-16]
	mov	r3, #1
	strh	r3, [fp, #-30]	@ movhi
	ldr	r3, .L56+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, .L56+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	b	.L33
.L37:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	str	r3, [fp, #-16]
	mov	r3, #0
	strh	r3, [fp, #-30]	@ movhi
	ldr	r3, .L56+20
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, .L56+24
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-44]
.L33:
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-60]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, .L56+28
	ldrh	r3, [r3, #0]
	add	r3, r3, #16
	cmp	r2, r3
	blt	.L32
	ldr	r3, .L56+28
	ldrh	r3, [r3, #0]
	rsb	r2, r3, #336
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	ble	.L32
	ldrh	r3, [fp, #-28]
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L56+32
	mov	r3, r3, asl #3
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrh	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r2, #1
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L56+32
	mov	r0, #2
	mov	r3, r3, asl #3
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrh	r3, [fp, #-28]
	ldrh	r2, [fp, #-26]
	mov	r2, r2, asl #6
	mov	r1, r2, asl #1
	ldr	r2, .L56+36
	add	r2, r1, r2
	ldr	r1, .L56+32
	mov	r0, #4
	mov	r3, r3, asl #3
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldrh	r3, [fp, #-28]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-28]	@ movhi
	b	.L32
.L52:
	mov	r0, r0	@ nop
	b	.L32
.L54:
	mov	r0, r0	@ nop
.L32:
	ldrh	r3, [fp, #-26]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-26]	@ movhi
	b	.L29
.L55:
	mov	r0, r0	@ nop
.L29:
	ldr	r3, .L56+40
	ldrh	r3, [r3, #0]
	ldrh	r2, [fp, #-26]
	cmp	r2, r3
	bcc	.L38
	b	.L35
.L53:
	mov	r0, r0	@ nop
.L35:
	ldrh	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L39
	mov	r3, #0
	strh	r3, [fp, #-46]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-48]	@ movhi
	b	.L40
.L50:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-46]	@ movhi
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	strh	r3, [fp, #-50]	@ movhi
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strh	r3, [fp, #-52]	@ movhi
	ldrh	r3, [fp, #-30]
	cmp	r3, #0
	beq	.L41
	ldrh	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L42
	ldr	r3, .L56+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, .L56+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strh	r3, [fp, #-52]	@ movhi
	b	.L42
.L41:
	ldrh	r3, [fp, #-52]
	cmp	r3, #16
	bls	.L42
	ldr	r3, .L56+20
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #63
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strh	r3, [fp, #-52]	@ movhi
	ldrh	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L43
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [fp, #-52]	@ movhi
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-50]	@ movhi
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	strh	r3, [fp, #-50]	@ movhi
	b	.L42
.L43:
	mov	r3, #1
	strh	r3, [fp, #-48]	@ movhi
.L42:
	ldrh	r2, [fp, #-50]
	ldrh	r3, [fp, #-52]
	add	r2, r2, r3
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	ble	.L44
	ldrh	r2, [fp, #-52]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	bgt	.L44
	ldr	r3, .L56+32
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L45
.L49:
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-62]	@ movhi
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r2, r3
	ldrh	r3, [fp, #-62]
	mov	r3, r3, asl #12
	mov	r1, r3
	ldr	r3, .L56+44
	ldr	r3, [r3, #0]
	and	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L56+48
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L46
	ldrh	r3, [fp, #-62]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L47
	ldr	r3, [fp, #-36]
	bic	r2, r3, #7
	ldr	r3, .L56+52
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #7
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	b	.L46
.L47:
	ldrh	r3, [fp, #-62]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L46
	ldr	r3, [fp, #-36]
	bic	r2, r3, #3
	ldr	r3, .L56+52
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #3
	orr	r3, r2, r3
	str	r3, [fp, #-36]
.L46:
	ldr	r3, .L56+56
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-36]
	and	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L56+60
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	ldr	r3, [fp, #-56]
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldrh	r1, [fp, #-50]
	ldr	r3, [fp, #-56]
	ldrh	r3, [r3, #2]
	mov	r2, r3
	ldrh	r3, [fp, #-52]
	ldr	ip, [fp, #-36]
	str	ip, [sp, #0]
	ldrh	ip, [fp, #-62]
	str	ip, [sp, #4]
	bl	blit_draw_spr
.L48:
	ldr	r3, [fp, #-56]
	add	r3, r3, #8
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L45:
	ldrh	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L49
.L44:
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [fp, #-46]	@ movhi
	add	r3, r2, r3
	strh	r3, [fp, #-46]	@ movhi
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L40:
	ldrh	r2, [fp, #-46]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L50
	mov	r3, #0
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-16]
.L39:
	ldr	r3, .L56+40
	ldrh	r3, [r3, #0]
	ldrh	r2, [fp, #-26]
	cmp	r2, r3
	bcc	.L55
	bl	blit_finish_spr
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L57:
	.align	2
.L56:
	.word	sprite_y_control
	.word	sprite_zoom_control
	.word	sprite_x_control
	.word	skip_fullmode1
	.word	tile_fullmode1
	.word	skip_fullmode0
	.word	tile_fullmode0
	.word	xoffset
	.word	sprite_list
	.word	neogeo_videoram
	.word	max_sprite_number
	.word	high_tile_mask
	.word	auto_animation_disabled
	.word	auto_animation_counter
	.word	sprite_gfx_code_mask
	.word	spr_pen_usage
	.fnend
	.size	draw_sprites_hardware, .-draw_sprites_hardware
	.align	2
	.type	sprite_on_scanline, %function
sprite_on_scanline:
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
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	sub	r3, r3, #1
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L59
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L59
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	ble	.L60
.L59:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L61
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L60
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L61
.L60:
	mov	r3, #1
	b	.L62
.L61:
	mov	r3, #0
.L62:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	sprite_on_scanline, .-sprite_on_scanline
	.global	__aeabi_idivmod
	.align	2
	.type	draw_sprites_software, %function
draw_sprites_software:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #88
	sub	sp, sp, #88
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	strb	r3, [fp, #-29]
	b	.L90
.L73:
	ldr	r3, .L91
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-50]	@ movhi
	ldr	r3, .L91+4
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-52]	@ movhi
	ldrh	r3, [fp, #-50]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L65
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L87
.L66:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	b	.L68
.L65:
	ldrh	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L88
.L69:
	ldrh	r3, [fp, #-50]
	and	r3, r3, #63
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L89
.L71:
	ldrh	r3, [fp, #-50]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #512
	str	r3, [fp, #-8]
	ldr	r3, .L91+8
	ldr	r2, [r3, #0]
	ldrh	r3, [fp, #-26]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #16
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-52]
	and	r3, r3, #255
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	ble	.L72
	mov	r3, #512
	str	r3, [fp, #-16]
	mov	r3, #1
	strb	r3, [fp, #-29]
	b	.L68
.L72:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	str	r3, [fp, #-16]
	mov	r3, #0
	strb	r3, [fp, #-29]
.L68:
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-52]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, .L91+12
	ldrh	r3, [r3, #0]
	add	r3, r3, #16
	cmp	r2, r3
	blt	.L67
	ldr	r3, .L91+12
	ldrh	r3, [r3, #0]
	rsb	r2, r3, #336
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	ble	.L67
	ldrh	r3, [fp, #-28]
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L91+16
	mov	r3, r3, asl #3
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrh	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r2, #1
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L91+16
	mov	r0, #2
	mov	r3, r3, asl #3
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrh	r3, [fp, #-28]
	ldrh	r2, [fp, #-26]
	mov	r2, r2, asl #6
	mov	r1, r2, asl #1
	ldr	r2, .L91+20
	add	r2, r1, r2
	ldr	r1, .L91+16
	mov	r0, #4
	mov	r3, r3, asl #3
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldrh	r3, [fp, #-28]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-28]	@ movhi
	b	.L67
.L87:
	mov	r0, r0	@ nop
	b	.L67
.L89:
	mov	r0, r0	@ nop
.L67:
	ldrh	r3, [fp, #-26]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-26]	@ movhi
	b	.L64
.L90:
	mov	r0, r0	@ nop
.L64:
	ldr	r3, .L91+24
	ldrh	r3, [r3, #0]
	ldrh	r2, [fp, #-26]
	cmp	r2, r3
	bcc	.L73
	b	.L70
.L88:
	mov	r0, r0	@ nop
.L70:
	ldrh	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L74
	ldr	r3, .L91+28
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #8
	add	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	strh	r3, [fp, #-38]	@ movhi
	b	.L75
.L85:
	ldr	r3, .L91+16
	str	r3, [fp, #-44]
	ldrh	r3, [fp, #-38]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-16]
	bl	sprite_on_scanline
	mov	r3, r0
	cmp	r3, #0
	beq	.L76
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldrh	r2, [fp, #-38]	@ movhi
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	strh	r3, [fp, #-58]	@ movhi
	ldrh	r3, [fp, #-58]	@ movhi
	and	r3, r3, #255
	strh	r3, [fp, #-46]	@ movhi
	ldrh	r3, [fp, #-58]	@ movhi
	and	r3, r3, #256
	strh	r3, [fp, #-48]	@ movhi
	ldrh	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L77
	ldrh	r3, [fp, #-46]	@ movhi
	eor	r3, r3, #255
	strh	r3, [fp, #-46]	@ movhi
.L77:
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L78
	ldrh	r2, [fp, #-46]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	mov	r3, r3, asl #1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	strh	r3, [fp, #-46]	@ movhi
	ldrh	r2, [fp, #-46]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	ble	.L78
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-46]	@ movhi
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	strh	r3, [fp, #-46]	@ movhi
	ldrh	r3, [fp, #-48]
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	strh	r3, [fp, #-48]	@ movhi
.L78:
	ldrh	r3, [fp, #-46]
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-59]
	ldrb	r3, [fp, #-59]
	and	r3, r3, #15
	strb	r3, [fp, #-39]
	ldrb	r3, [fp, #-59]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	strb	r3, [fp, #-40]
	ldrh	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L79
	ldrb	r3, [fp, #-39]
	eor	r3, r3, #15
	strb	r3, [fp, #-39]
	ldrb	r3, [fp, #-40]
	eor	r3, r3, #31
	strb	r3, [fp, #-40]
.L79:
	ldrb	r3, [fp, #-40]
	mov	r3, r3, asl #1
	strb	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L80
.L84:
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #4]
	ldrb	r3, [fp, #-60]	@ zero_extendqisi2
	add	r3, r3, #1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-62]	@ movhi
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #4]
	ldrb	r3, [fp, #-60]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r2, r3
	ldrh	r3, [fp, #-62]
	mov	r3, r3, asl #12
	mov	r1, r3
	ldr	r3, .L91+32
	ldr	r3, [r3, #0]
	and	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L91+36
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L81
	ldrh	r3, [fp, #-62]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L82
	ldr	r3, [fp, #-36]
	bic	r2, r3, #7
	ldr	r3, .L91+40
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #7
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	b	.L81
.L82:
	ldrh	r3, [fp, #-62]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L81
	ldr	r3, [fp, #-36]
	bic	r2, r3, #3
	ldr	r3, .L91+40
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #3
	orr	r3, r2, r3
	str	r3, [fp, #-36]
.L81:
	ldr	r3, .L91+44
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-36]
	and	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, .L91+48
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	ldr	r3, [fp, #-44]
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16
	ldrh	r1, [fp, #-38]
	ldr	r3, [fp, #-44]
	ldrh	r3, [r3, #2]
	mov	r2, r3
	ldrb	r3, [fp, #-39]	@ zero_extendqisi2
	ldr	ip, .L91+48
	ldr	lr, [ip, #0]
	ldr	ip, [fp, #-36]
	add	ip, lr, ip
	ldrb	ip, [ip, #0]	@ zero_extendqisi2
	ldr	lr, [fp, #-36]
	str	lr, [sp, #0]
	ldrh	lr, [fp, #-62]
	str	lr, [sp, #4]
	str	ip, [sp, #8]
	bl	blit_draw_spr_line
.L83:
	ldr	r3, [fp, #-44]
	add	r3, r3, #8
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L80:
	ldrh	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L84
.L76:
	ldrh	r3, [fp, #-38]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-38]	@ movhi
.L75:
	ldrh	r2, [fp, #-38]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	ble	.L85
	mov	r3, #0
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-16]
.L74:
	ldr	r3, .L91+24
	ldrh	r3, [r3, #0]
	ldrh	r2, [fp, #-26]
	cmp	r2, r3
	bcc	.L90
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L92:
	.align	2
.L91:
	.word	sprite_y_control
	.word	sprite_zoom_control
	.word	sprite_x_control
	.word	xoffset
	.word	sprite_list
	.word	neogeo_videoram
	.word	max_sprite_number
	.word	memory_region_gfx4
	.word	high_tile_mask
	.word	auto_animation_disabled
	.word	auto_animation_counter
	.word	sprite_gfx_code_mask
	.word	spr_pen_usage
	.fnend
	.size	draw_sprites_software, .-draw_sprites_software
	.align	2
	.global	neogeo_video_init
	.type	neogeo_video_init, %function
neogeo_video_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L94
.L99:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L95
.L98:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L96
.L97:
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-12]
	mov	r3, r3, asr #2
	orr	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-16]
	mov	r3, r3, asr #2
	orr	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #2
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-12]
	and	r3, r3, #1
	mov	r3, r3, asl #14
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	and	r3, r3, #30
	mov	r3, r3, asl #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	mov	r3, r3, asl #13
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-16]
	and	r3, r3, #30
	mov	r3, r3, asl #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	mov	r3, r3, asl #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-20]
	and	r3, r3, #30
	mov	r3, r3, asr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-38]	@ movhi
	ldrh	r3, [fp, #-38]
	ldr	r2, [fp, #-36]
	and	r2, r2, #248
	mov	r2, r2, asl #7
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-32]
	and	r2, r2, #248
	mov	r2, r2, asl #2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	orr	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-28]
	and	r2, r2, #248
	mov	r2, r2, asr #3
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	orr	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L121
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L96:
	ldr	r3, [fp, #-20]
	cmp	r3, #31
	ble	.L97
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L95:
	ldr	r3, [fp, #-16]
	cmp	r3, #31
	ble	.L98
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L94:
	ldr	r3, [fp, #-12]
	cmp	r3, #31
	ble	.L99
	ldr	r3, .L121+4
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #7
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #65536
	bls	.L100
	mov	r3, #65536
	b	.L101
.L100:
	mov	r3, #0
.L101:
	ldr	r2, .L121+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	cmp	r3, #131072
	bls	.L102
	mov	r3, #131072
	b	.L103
.L102:
	mov	r3, #0
.L103:
	ldr	r2, .L121+8
	ldr	r2, [r2, #0]
	orr	r2, r3, r2
	ldr	r3, .L121+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	cmp	r3, #262144
	bls	.L104
	mov	r3, #262144
	b	.L105
.L104:
	mov	r3, #0
.L105:
	ldr	r2, .L121+8
	ldr	r2, [r2, #0]
	orr	r2, r3, r2
	ldr	r3, .L121+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	cmp	r3, #393216
	bls	.L106
	mov	r3, #393216
	b	.L107
.L106:
	mov	r3, #0
.L107:
	ldr	r2, .L121+8
	ldr	r2, [r2, #0]
	orr	r2, r3, r2
	ldr	r3, .L121+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	cmp	r3, #524288
	bls	.L108
	mov	r3, #524288
	b	.L109
.L108:
	mov	r3, #0
.L109:
	ldr	r2, .L121+8
	ldr	r2, [r2, #0]
	orr	r2, r3, r2
	ldr	r3, .L121+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	cmp	r3, #655360
	bls	.L110
	mov	r3, #655360
	b	.L111
.L110:
	mov	r3, #0
.L111:
	ldr	r2, .L121+8
	ldr	r2, [r2, #0]
	orr	r2, r3, r2
	ldr	r3, .L121+8
	str	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	cmp	r3, #786432
	bls	.L112
	mov	r3, #786432
	b	.L113
.L112:
	mov	r3, #0
.L113:
	ldr	r2, .L121+8
	ldr	r2, [r2, #0]
	orr	r2, r3, r2
	ldr	r3, .L121+8
	str	r2, [r3, #0]
	ldr	r3, .L121+12
	mvn	r2, #0
	str	r2, [r3, #0]
	mov	r3, #-2147483648
	str	r3, [fp, #-24]
	b	.L114
.L117:
	ldr	r3, [fp, #-44]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	and	r3, r2, r3
	cmp	r3, #0
	bne	.L120
.L115:
	ldr	r3, .L121+12
	ldr	r3, [r3, #0]
	mov	r2, r3, lsr #1
	ldr	r3, .L121+12
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	mov	r3, r3, lsr #1
	str	r3, [fp, #-24]
.L114:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L117
	b	.L116
.L120:
	mov	r0, r0	@ nop
.L116:
	ldr	r3, .L121+16
	ldr	r2, [r3, #0]
	ldr	r3, .L121+20
	str	r2, [r3, #0]
	ldr	r3, .L121+16
	ldr	r3, [r3, #0]
	add	r2, r3, #16384
	ldr	r3, .L121+24
	str	r2, [r3, #0]
	ldr	r3, .L121+16
	ldr	r3, [r3, #0]
	add	r2, r3, #32768
	ldr	r3, .L121+28
	str	r2, [r3, #0]
	ldr	r3, .L121+16
	ldr	r3, [r3, #0]
	add	r2, r3, #49152
	ldr	r3, .L121+32
	str	r2, [r3, #0]
	ldr	r3, .L121+36
	mov	r2, #131072
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L121+40
	mov	r2, #16384
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L121+44
	mov	r2, #16384
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L118
.L119:
	ldr	r2, .L121+44
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, #32768
	strh	r2, [r3, #0]	@ movhi
	ldr	r2, .L121+44
	ldr	r3, [fp, #-8]
	add	r3, r3, #4096
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, #32768
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	str	r3, [fp, #-8]
.L118:
	ldr	r2, [fp, #-8]
	ldr	r3, .L121+48
	cmp	r2, r3
	ble	.L119
	bl	neogeo_video_reset
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L122:
	.align	2
.L121:
	.word	video_clut16
	.word	memory_length_gfx3
	.word	high_tile_mask
	.word	sprite_gfx_code_mask
	.word	memory_region_user3
	.word	skip_fullmode0
	.word	tile_fullmode0
	.word	skip_fullmode1
	.word	tile_fullmode1
	.word	neogeo_videoram
	.word	palettes
	.word	video_palettebank
	.word	4095
	.fnend
	.size	neogeo_video_init, .-neogeo_video_init
	.align	2
	.global	neogeo_video_exit
	.type	neogeo_video_exit, %function
neogeo_video_exit:
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
	.size	neogeo_video_exit, .-neogeo_video_exit
	.align	2
	.global	neogeo_video_reset
	.type	neogeo_video_reset, %function
neogeo_video_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r1, .L137
	mov	r3, #0
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, .L137+4
	ldr	r2, .L137+8
	str	r2, [r3, #0]
	ldr	r1, .L137+12
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r1, .L137+16
	mov	r3, #0
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	ldr	r1, .L137+20
	mov	r3, #0
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	ldr	r1, .L137+24
	mov	r3, #0
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, .L137+28
	mov	r2, #16
	str	r2, [r3, #0]
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #12
	ble	.L125
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #23
	bgt	.L125
	ldr	r1, .L137+36
	mov	r3, #32
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L126
.L125:
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #11
	beq	.L127
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #12
	beq	.L127
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #24
	bne	.L128
.L127:
	ldr	r1, .L137+36
	ldr	r3, .L137+40
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L126
.L128:
	ldr	r1, .L137+36
	mov	r3, #0
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
.L126:
	ldr	r3, .L137+44
	ldr	r2, .L137+48
	str	r2, [r3, #0]
	ldr	r3, .L137+52
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L130
	cmp	r3, #2
	beq	.L131
	b	.L136
.L130:
	ldr	r3, .L137+44
	ldr	r2, .L137+56
	str	r2, [r3, #4]
	b	.L132
.L131:
	ldr	r3, .L137+44
	ldr	r2, .L137+60
	str	r2, [r3, #4]
	b	.L132
.L136:
	ldr	r3, .L137+44
	ldr	r2, .L137+48
	str	r2, [r3, #4]
	mov	r0, r0	@ nop
.L132:
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #11
	beq	.L133
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #12
	beq	.L133
	ldr	r3, .L137+32
	ldr	r3, [r3, #0]
	cmp	r3, #24
	bne	.L134
.L133:
	mov	r0, #1
	bl	neogeo_set_fixed_layer_source
	b	.L135
.L134:
	mov	r0, #0
	bl	neogeo_set_fixed_layer_source
.L135:
	ldr	r3, .L137+64
	ldr	r2, [r3, #8]
	ldr	r3, .L137+68
	str	r2, [r3, #0]
	bl	blit_reset
	ldmfd	sp!, {fp, pc}
.L138:
	.align	2
.L137:
	.word	xoffset
	.word	video_palette
	.word	video_palettebank
	.word	palette_bank
	.word	videoram_read_buffer
	.word	videoram_modulo
	.word	videoram_offset
	.word	next_update_first_line
	.word	neogeo_bios
	.word	max_sprite_number
	.word	381
	.word	draw_fixed_layer_func
	.word	draw_fixed_layer_type0
	.word	neogeo_fix_bank_type
	.word	draw_fixed_layer_type1
	.word	draw_fixed_layer_type2
	.word	gfx_pen_usage
	.word	spr_pen_usage
	.fnend
	.size	neogeo_video_reset, .-neogeo_video_reset
	.align	2
	.global	neogeo_set_fixed_layer_source
	.type	neogeo_set_fixed_layer_source, %function
neogeo_set_fixed_layer_source:
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
	strb	r3, [fp, #-5]
	ldr	r3, .L142
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #0]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, .L142+4
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, .L142+8
	str	r2, [r3, #0]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L140
	ldr	r3, .L142+12
	ldr	r3, [r3, #0]
	b	.L141
.L140:
	ldr	r3, .L142+16
	ldr	r3, [r3, #0]
.L141:
	ldr	r2, .L142+20
	str	r3, [r2, #0]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, .L142+24
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, .L142+28
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L143:
	.align	2
.L142:
	.word	fix_bank
	.word	gfx_pen_usage
	.word	fix_usage
	.word	memory_region_gfx2
	.word	memory_region_gfx1
	.word	fix_memory
	.word	draw_fixed_layer_func
	.word	draw_fixed_layer
	.fnend
	.size	neogeo_set_fixed_layer_source, .-neogeo_set_fixed_layer_source
	.align	2
	.global	neogeo_screenrefresh
	.type	neogeo_screenrefresh, %function
neogeo_screenrefresh:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L146
	ldr	r3, [r3, #0]
	cmp	r3, #239
	bgt	.L145
	ldr	r3, .L146
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #239
	bl	blit_start
	ldr	r3, .L146
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #239
	bl	draw_sprites_software
.L145:
	ldr	r3, .L146+4
	ldr	r3, [r3, #0]
	blx	r3
	bl	blit_finish
	ldr	r3, .L146
	mov	r2, #16
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L147:
	.align	2
.L146:
	.word	next_update_first_line
	.word	draw_fixed_layer
	.fnend
	.size	neogeo_screenrefresh, .-neogeo_screenrefresh
	.align	2
	.global	neogeo_partial_screenrefresh
	.type	neogeo_partial_screenrefresh, %function
neogeo_partial_screenrefresh:
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
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L148
	ldr	r3, .L152
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L150
	ldr	r3, [fp, #-8]
	cmp	r3, #239
	ble	.L151
	mov	r3, #239
	str	r3, [fp, #-8]
.L151:
	ldr	r3, .L152
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	blit_start
	ldr	r3, .L152
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	draw_sprites_software
.L150:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, .L152
	str	r2, [r3, #0]
.L148:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L153:
	.align	2
.L152:
	.word	next_update_first_line
	.fnend
	.size	neogeo_partial_screenrefresh, .-neogeo_partial_screenrefresh
	.align	2
	.global	state_save_video
	.type	state_save_video, %function
state_save_video:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r1, .L155+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #131072
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #131072
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r1, .L155+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #8192
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #8192
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r1, .L155+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #8192
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #8192
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r1, .L155+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #2
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #2
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r1, .L155+20
	mov	r2, r3
	mov	r3, r1
	mov	ip, #2
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #2
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r1, .L155+24
	mov	r2, r3
	mov	r3, r1
	mov	ip, #2
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #2
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r2, .L155+28
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	ldr	r2, .L155+32
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L155
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L155
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L156:
	.align	2
.L155:
	.word	state_buffer
	.word	neogeo_videoram
	.word	palettes
	.word	palettes+8192
	.word	videoram_read_buffer
	.word	videoram_offset
	.word	videoram_modulo
	.word	palette_bank
	.word	fix_bank
	.fnend
	.size	state_save_video, .-state_save_video
	.align	2
	.global	state_load_video
	.type	state_load_video, %function
state_load_video:
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
	ldr	r3, .L161
	mov	r0, r3
	mov	r1, #1
	mov	r2, #131072
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8192
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8192
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+16
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+24
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L161+28
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fread
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L158
.L160:
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L159
	ldr	r2, .L161+4
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	ldr	r2, .L161+32
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r1, .L161+36
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldr	r2, .L161+4
	ldr	r3, [fp, #-8]
	add	r3, r3, #4096
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	ldr	r2, .L161+32
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r1, .L161+36
	ldr	r3, [fp, #-8]
	add	r3, r3, #4096
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
.L159:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L158:
	ldr	r2, [fp, #-8]
	ldr	r3, .L161+40
	cmp	r2, r3
	ble	.L160
	ldr	r3, .L161+24
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3, asl #13
	ldr	r3, .L161+36
	add	r2, r2, r3
	ldr	r3, .L161+44
	str	r2, [r3, #0]
	ldr	r3, .L161+28
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	neogeo_set_fixed_layer_source
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L162:
	.align	2
.L161:
	.word	neogeo_videoram
	.word	palettes
	.word	palettes+8192
	.word	videoram_read_buffer
	.word	videoram_offset
	.word	videoram_modulo
	.word	palette_bank
	.word	fix_bank
	.word	video_clut16
	.word	video_palettebank
	.word	4095
	.word	video_palette
	.fnend
	.size	state_load_video, .-state_load_video
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
