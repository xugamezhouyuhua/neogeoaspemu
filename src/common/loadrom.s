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
	.file	"loadrom.c"
	.data
	.align	2
	.type	rom_fd, %object
	.size	rom_fd, 4
rom_fd:
	.word	-1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%s/%s.zip\000"
	.align	2
.LC1:
	.ascii	"%sroms/%s.zip\000"
	.text
	.align	2
	.global	file_open
	.type	file_open, %function
file_open:
	.fnstart
	@ args = 0, pretend = 0, frame = 552
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #552
	sub	sp, sp, #552
	str	r0, [fp, #-544]
	str	r1, [fp, #-548]
	str	r2, [fp, #-552]
	str	r3, [fp, #-556]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L14:
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	beq	.L5
	cmp	r3, #2
	beq	.L6
	cmp	r3, #0
	bne	.L3
.L4:
	ldr	r2, .L19
	sub	r3, fp, #536
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L19+4
	ldr	r3, [fp, #-544]
	bl	sprintf
	b	.L3
.L5:
	ldr	r2, .L19
	sub	r3, fp, #536
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L19+4
	ldr	r3, [fp, #-548]
	bl	sprintf
	b	.L3
.L6:
	ldr	r2, .L19+8
	sub	r3, fp, #536
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L19+12
	ldr	r3, [fp, #-548]
	bl	sprintf
	mov	r0, r0	@ nop
.L3:
	sub	r3, fp, #536
	mov	r0, r3
	bl	zip_open
	mov	r3, r0
	cmn	r3, #1
	beq	.L7
	sub	r3, fp, #280
	mov	r0, r3
	bl	zip_findfirst
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-552]
	cmp	r2, r3
	bne	.L9
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L8
.L9:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L8
	b	.L10
.L11:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-552]
	cmp	r2, r3
	bne	.L10
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L8
.L10:
	sub	r3, fp, #280
	mov	r0, r3
	bl	zip_findnext
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
.L8:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L7
	ldr	r3, [fp, #-556]
	cmp	r3, #0
	beq	.L12
	ldr	r0, [fp, #-556]
	bl	zopen
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmn	r3, #1
	beq	.L12
	ldr	r0, [fp, #-16]
	bl	zclose
	mov	r3, #2
	str	r3, [fp, #-12]
.L12:
	bl	zip_close
.L7:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L13
	ldr	r3, [fp, #-548]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L14
.L13:
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L15
	ldr	r3, [fp, #-556]
	cmp	r3, #0
	beq	.L16
	ldr	r0, [fp, #-556]
	sub	r3, fp, #280
	mov	r1, r3
	bl	strcpy
.L16:
	sub	r3, fp, #280
	mov	r0, r3
	bl	zopen
	mov	r2, r0
	ldr	r3, .L19+16
	str	r2, [r3, #0]
	mov	r3, #1
	b	.L17
.L15:
	ldr	r3, [fp, #-12]
	cmp	r3, #2
	bne	.L18
	mvn	r3, #1
	b	.L17
.L18:
	mvn	r3, #0
.L17:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L20:
	.align	2
.L19:
	.word	.LC0
	.word	game_dir
	.word	.LC1
	.word	launchDir
	.word	rom_fd
	.fnend
	.size	file_open, .-file_open
	.align	2
	.global	file_close
	.type	file_close, %function
file_close:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L23
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L21
	ldr	r3, .L23
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	zclose
	bl	zip_close
	ldr	r3, .L23
	mvn	r2, #0
	str	r2, [r3, #0]
.L21:
	ldmfd	sp!, {fp, pc}
.L24:
	.align	2
.L23:
	.word	rom_fd
	.fnend
	.size	file_close, .-file_close
	.align	2
	.global	file_read
	.type	file_read, %function
file_read:
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
	ldr	r3, .L28
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L26
	ldr	r3, .L28
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	zread
	mov	r3, r0
	b	.L27
.L26:
	mvn	r3, #0
.L27:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L29:
	.align	2
.L28:
	.word	rom_fd
	.fnend
	.size	file_read, .-file_read
	.align	2
	.global	file_getc
	.type	file_getc, %function
file_getc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L33
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L31
	ldr	r3, .L33
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	zgetc
	mov	r3, r0
	b	.L32
.L31:
	mvn	r3, #0
.L32:
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L34:
	.align	2
.L33:
	.word	rom_fd
	.fnend
	.size	file_getc, .-file_getc
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%s/%s_cache/cache_info\000"
	.align	2
.LC3:
	.ascii	"rb\000"
	.align	2
.LC4:
	.ascii	"%s/%s_cache/crom\000"
	.align	2
.LC5:
	.ascii	"%s/%s_cache/srom\000"
	.align	2
.LC6:
	.ascii	"%s/%s_cache/vrom\000"
	.text
	.align	2
	.global	cachefile_open
	.type	cachefile_open, %function
cachefile_open:
	.fnstart
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #272
	sub	sp, sp, #272
	str	r0, [fp, #-272]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-272]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L36
.L41:
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L40
.L37:
	ldr	r3, .L53
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L42
	ldr	r3, .L53+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L42
	ldr	r3, .L53+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L42
	ldr	r2, .L53+12
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+20
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	b	.L36
.L42:
	ldr	r2, .L53+12
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+28
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	b	.L36
.L38:
	ldr	r3, .L53
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L44
	ldr	r2, .L53+32
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+20
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
.L44:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L50
	ldr	r2, .L53+32
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+28
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	b	.L50
.L39:
	ldr	r3, .L53+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L46
	ldr	r2, .L53+36
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+20
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
.L46:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L51
	ldr	r2, .L53+36
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+28
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	b	.L51
.L40:
	ldr	r3, .L53+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L48
	ldr	r2, .L53+40
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+20
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
.L48:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L52
	ldr	r2, .L53+40
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L53+16
	ldr	r3, .L53+28
	bl	sprintf
	ldr	r2, .L53+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	b	.L52
.L50:
	mov	r0, r0	@ nop
	b	.L36
.L51:
	mov	r0, r0	@ nop
	b	.L36
.L52:
	mov	r0, r0	@ nop
.L36:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L54:
	.align	2
.L53:
	.word	use_parent_crom
	.word	use_parent_srom
	.word	use_parent_vrom
	.word	.LC2
	.word	cache_dir
	.word	parent_name
	.word	.LC3
	.word	game_name
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.fnend
	.size	cachefile_open, .-cachefile_open
	.section	.rodata
	.align	2
.LC7:
	.ascii	"ERROR:read rom length error...\000"
	.text
	.align	2
	.global	rom_load
	.type	rom_load, %function
rom_load:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	b	.L56
.L76:
	mov	r0, r0	@ nop
.L56:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L57
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	add	r1, r2, r3
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	mov	r0, r1
	mov	r1, r3
	bl	file_read
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	beq	.L58
	ldr	r0, .L77
	bl	puts
.L58:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #2
	bne	.L59
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	add	r0, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	add	r1, r2, r3
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	mov	r2, r3
	bl	swab
	b	.L59
.L57:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #20]
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #16]
	add	r3, r1, r3
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L71
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #2
	bne	.L72
	ldr	r3, [fp, #-8]
	eor	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L72
.L65:
	bl	file_getc
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L73
.L63:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	and	r2, r2, #255
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L62
.L72:
	mov	r0, r0	@ nop
.L62:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bhi	.L65
	b	.L59
.L69:
	bl	file_getc
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L74
.L67:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	and	r2, r2, #255
	strb	r2, [r3, #0]
	bl	file_getc
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L75
.L68:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	and	r2, r2, #255
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L66
.L71:
	mov	r0, r0	@ nop
.L66:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bhi	.L69
	b	.L59
.L73:
	mov	r0, r0	@ nop
	b	.L59
.L74:
	mov	r0, r0	@ nop
	b	.L59
.L75:
	mov	r0, r0	@ nop
.L59:
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	beq	.L70
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L76
.L70:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L78:
	.align	2
.L77:
	.word	.LC7
	.fnend
	.size	rom_load, .-rom_load
	.section	.rodata
	.align	2
.LC8:
	.ascii	"COULD_NOT_ALLOCATE_%s_MEMORY\012\000"
	.text
	.align	2
	.global	error_memory
	.type	error_memory, %function
error_memory:
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
	bl	zip_close
	ldr	r3, .L80
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r3, .L80+4
	mov	r2, #0
	str	r2, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L81:
	.align	2
.L80:
	.word	.LC8
	.word	Loop
	.fnend
	.size	error_memory, .-error_memory
	.section	.rodata
	.align	2
.LC9:
	.ascii	"CRC32_NOT_CORRECT_%s\012\000"
	.text
	.align	2
	.global	error_crc
	.type	error_crc, %function
error_crc:
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
	bl	zip_close
	ldr	r3, .L83
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r3, .L83+4
	mov	r2, #0
	str	r2, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L84:
	.align	2
.L83:
	.word	.LC9
	.word	Loop
	.fnend
	.size	error_crc, .-error_crc
	.section	.rodata
	.align	2
.LC10:
	.ascii	"FILE_NOT_FOUND_%s\012\000"
	.text
	.align	2
	.global	error_file
	.type	error_file, %function
error_file:
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
	bl	zip_close
	ldr	r3, .L86
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r3, .L86+4
	mov	r2, #0
	str	r2, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L87:
	.align	2
.L86:
	.word	.LC10
	.word	Loop
	.fnend
	.size	error_file, .-error_file
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
