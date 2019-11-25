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
	.file	"cache.c"
	.global	zyh_cache_fd
	.data
	.align	2
	.type	zyh_cache_fd, %object
	.size	zyh_cache_fd, 4
zyh_cache_fd:
	.word	-1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"LOADING_CACHE_INFORMATION_DATA\000"
	.align	2
.LC1:
	.ascii	"MVS_V23\000"
	.align	2
.LC2:
	.ascii	"UNSUPPORTED_VERSION_OF_CACHE_FILE:V%c%c\012\000"
	.align	2
.LC3:
	.ascii	"CURRENT_REQUIRED_VERSION_IS_%s\012\000"
	.align	2
.LC4:
	.ascii	"V23\000"
	.align	2
.LC5:
	.ascii	"PLEASE_REBUILD_CACHE_FILE\000"
	.align	2
.LC6:
	.ascii	"COULD_NOT_OPEN_CACHE_FILE(CACHE_INFO)\000"
	.align	2
.LC7:
	.ascii	"%s/%s_cache/crom\000"
	.align	2
.LC8:
	.ascii	"COULD_NOT_OPEN_CACHE_FILE(CACHE_CROM)\000"
	.align	2
.LC9:
	.ascii	"COULD_NOT_MMAP_CACHE_FILE(CACHE_CROM)\000"
	.align	2
.LC10:
	.ascii	"%dKB_CACHE_FILE(ZYH)\012\000"
	.text
	.align	2
	.global	zyh_cache_start
	.type	zyh_cache_start, %function
zyh_cache_start:
	.fnstart
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #280
	sub	sp, sp, #280
	bl	zip_close
	ldr	r0, .L10
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r0, #0
	bl	cachefile_open
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L2
	sub	r3, fp, #20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8
	ldr	r3, [fp, #-12]
	bl	fread
	sub	r3, fp, #20
	mov	r0, r3
	ldr	r1, .L10+4
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L10+8
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, .L10+12
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #7
	mov	r0, r2
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-12]
	bl	fread
	mov	r3, #1
	str	r3, [fp, #-8]
.L3:
	ldr	r0, [fp, #-12]
	bl	fclose
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L4
	ldr	r1, .L10+16
	ldrb	r3, [fp, #-15]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf
	ldr	r3, .L10+20
	mov	r0, r3
	ldr	r1, .L10+24
	bl	printf
	ldr	r0, .L10+28
	bl	puts
	mov	r3, #0
	b	.L5
.L2:
	ldr	r0, .L10+32
	bl	puts
	mov	r3, #0
	b	.L5
.L4:
	ldr	r3, .L10+36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L6
	ldr	r2, .L10+40
	sub	r3, fp, #276
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L10+44
	ldr	r3, .L10+48
	bl	sprintf
	sub	r3, fp, #276
	mov	r0, r3
	mov	r1, #0
	bl	open
	mov	r2, r0
	ldr	r3, .L10+52
	str	r2, [r3, #0]
.L6:
	ldr	r3, .L10+52
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bge	.L7
	ldr	r2, .L10+40
	sub	r3, fp, #276
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L10+44
	ldr	r3, .L10+56
	bl	sprintf
	sub	r3, fp, #276
	mov	r0, r3
	mov	r1, #0
	bl	open
	mov	r2, r0
	ldr	r3, .L10+52
	str	r2, [r3, #0]
.L7:
	ldr	r3, .L10+52
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bge	.L8
	ldr	r0, .L10+60
	bl	puts
	mov	r3, #0
	b	.L5
.L8:
	ldr	r3, .L10+12
	ldr	r3, [r3, #0]
	ldr	r2, .L10+52
	ldr	r2, [r2, #0]
	str	r2, [sp, #0]
	mov	r2, #0
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, r3
	mov	r2, #1
	mov	r3, #2
	bl	mmap
	mov	r2, r0
	ldr	r3, .L10+64
	str	r2, [r3, #0]
	ldr	r3, .L10+64
	ldr	r3, [r3, #0]
	cmn	r3, #1
	bne	.L9
	ldr	r0, .L10+68
	bl	puts
	ldr	r3, .L10+64
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L5
.L9:
	ldr	r2, .L10+72
	ldr	r3, .L10+12
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #10
	mov	r0, r2
	mov	r1, r3
	bl	printf
	mov	r3, #1
.L5:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.word	.LC1
	.word	gfx_pen_usage
	.word	memory_length_gfx3
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	use_parent_crom
	.word	.LC7
	.word	cache_dir
	.word	parent_name
	.word	zyh_cache_fd
	.word	game_name
	.word	.LC8
	.word	memory_region_gfx3
	.word	.LC9
	.word	.LC10
	.fnend
	.size	zyh_cache_start, .-zyh_cache_start
	.align	2
	.global	zyh_cache_shutdown
	.type	zyh_cache_shutdown, %function
zyh_cache_shutdown:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L15
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L15
	ldr	r2, [r3, #0]
	ldr	r3, .L15+4
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	munmap
	ldr	r3, .L15
	mov	r2, #0
	str	r2, [r3, #0]
.L13:
	ldr	r3, .L15+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L12
	ldr	r3, .L15+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	close
	ldr	r3, .L15+8
	mvn	r2, #0
	str	r2, [r3, #0]
.L12:
	ldmfd	sp!, {fp, pc}
.L16:
	.align	2
.L15:
	.word	memory_region_gfx3
	.word	memory_length_gfx3
	.word	zyh_cache_fd
	.fnend
	.size	zyh_cache_shutdown, .-zyh_cache_shutdown
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
