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
	.file	"biosmenu.c"
	.global	bios_name
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Europe MVS (Ver. 2)\000"
	.align	2
.LC1:
	.ascii	"Europe MVS (Ver. 1)\000"
	.align	2
.LC2:
	.ascii	"US MVS (Ver. 2)\000"
	.align	2
.LC3:
	.ascii	"US MVS (Ver. 1)\000"
	.align	2
.LC4:
	.ascii	"Asia MVS New (Ver. 3)\000"
	.align	2
.LC5:
	.ascii	"Asia MVS (Ver. 3)\000"
	.align	2
.LC6:
	.ascii	"Japan MVS (J3)\000"
	.align	2
.LC7:
	.ascii	"Japan MVS (Ver. 3)\000"
	.align	2
.LC8:
	.ascii	"Japan MVS (Ver. 2)\000"
	.align	2
.LC9:
	.ascii	"Japan MVS (Ver. 1)\000"
	.align	2
.LC10:
	.ascii	"Neo Geo Git(Ver. 1.1)\000"
	.align	2
.LC11:
	.ascii	"Asia AES\000"
	.align	2
.LC12:
	.ascii	"Japan AES\000"
	.align	2
.LC13:
	.ascii	"Unibios MVS (Hack, Ver. 3.2)\000"
	.align	2
.LC14:
	.ascii	"Unibios MVS (Hack, Ver. 3.1)\000"
	.align	2
.LC15:
	.ascii	"Unibios MVS (Hack, Ver. 3.0)\000"
	.align	2
.LC16:
	.ascii	"Unibios MVS (Hack, Ver. 2.3)\000"
	.align	2
.LC17:
	.ascii	"Unibios MVS (Hack, Ver. 2.2)\000"
	.align	2
.LC18:
	.ascii	"Unibios MVS (Hack, Ver. 2.1)\000"
	.align	2
.LC19:
	.ascii	"Unibios MVS (Hack, Ver. 2.0)\000"
	.align	2
.LC20:
	.ascii	"Unibios MVS (Hack, Ver. 1.3)\000"
	.align	2
.LC21:
	.ascii	"Unibios MVS (Hack, Ver. 1.2)\000"
	.align	2
.LC22:
	.ascii	"Unibios MVS (Hack, Ver. 1.1)\000"
	.align	2
.LC23:
	.ascii	"Unibios MVS (Hack, Ver. 1.0)\000"
	.align	2
.LC24:
	.ascii	"Debug MVS (Hack?)\000"
	.data
	.align	2
	.type	bios_name, %object
	.size	bios_name, 100
bios_name:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.global	bios_crc
	.section	.rodata
	.align	2
	.type	bios_crc, %object
	.size	bios_crc, 100
bios_crc:
	.word	-1875453831
	.word	-940377531
	.word	-416726050
	.word	656647605
	.word	63741802
	.word	-1850323997
	.word	-537471969
	.word	-253169027
	.word	-1393695332
	.word	-1615811612
	.word	372182718
	.word	-763727375
	.word	382779698
	.word	-1528251981
	.word	207096127
	.word	-1451456087
	.word	661016245
	.word	760256874
	.word	-1918109845
	.word	202556077
	.word	-1303690080
	.word	1336318185
	.word	1574571396
	.word	216290208
	.word	1770961789
	.global	bios_patch_address
	.align	2
	.type	bios_patch_address, %object
	.size	bios_patch_address, 100
bios_patch_address:
	.word	72802
	.word	72802
	.word	72760
	.word	72760
	.word	68998
	.word	68706
	.word	68998
	.word	73098
	.word	72802
	.word	72802
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	sfix_crc
	.align	2
	.type	sfix_crc, %object
	.size	sfix_crc, 4
sfix_crc:
	.word	-1024848643
	.global	lorom_crc
	.align	2
	.type	lorom_crc, %object
	.size	lorom_crc, 4
lorom_crc:
	.word	1518784498
	.global	bios_zip
	.align	2
.LC25:
	.ascii	"neogeo\000"
	.data
	.align	2
	.type	bios_zip, %object
	.size	bios_zip, 4
bios_zip:
	.word	.LC25
	.global	sfix_name
	.section	.rodata
	.align	2
.LC26:
	.ascii	"sfix.sfx\000"
	.data
	.align	2
	.type	sfix_name, %object
	.size	sfix_name, 4
sfix_name:
	.word	.LC26
	.global	lorom_name
	.section	.rodata
	.align	2
.LC27:
	.ascii	"000-lo.lo\000"
	.data
	.align	2
	.type	lorom_name, %object
	.size	lorom_name, 4
lorom_name:
	.word	.LC27
	.local	bios_exist
	.comm	bios_exist,25,4
	.section	.rodata
	.align	2
.LC28:
	.ascii	"CRC32_NOT_CORRECT:%s\000"
	.align	2
.LC29:
	.ascii	"FILE_NOT_FOUND:%s\000"
	.text
	.align	2
	.type	bios_error, %function
bios_error:
	.fnstart
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #136
	sub	sp, sp, #136
	str	r0, [fp, #-136]
	str	r1, [fp, #-140]
	bl	zip_close
	ldr	r3, [fp, #-140]
	cmn	r3, #2
	bne	.L2
	ldr	r2, .L4
	sub	r3, fp, #132
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, [fp, #-136]
	bl	sprintf
	b	.L3
.L2:
	ldr	r2, .L4+4
	sub	r3, fp, #132
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, [fp, #-136]
	bl	sprintf
.L3:
	sub	r3, fp, #132
	mov	r0, r3
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC28
	.word	.LC29
	.fnend
	.size	bios_error, .-bios_error
	.section	.rodata
	.align	2
.LC30:
	.ascii	"BIOS_NOT_FOUND err = %d\012\000"
	.text
	.align	2
	.type	bios_check, %function
bios_check:
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
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #24
	str	r3, [fp, #-12]
	ldr	r3, .L15
	ldr	r2, [r3, #0]
	ldr	r3, .L15+4
	ldr	r1, [fp, #-24]
	ldr	r3, [r3, r1, asl #2]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	mov	r3, #0
	bl	file_open
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L7
	bl	file_close
	ldr	r3, .L15+8
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, .L15
	ldr	r2, [r3, #0]
	ldr	r3, .L15+12
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	mov	r3, #0
	bl	file_open
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L8
	b	.L13
.L7:
	ldr	r3, .L15+16
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	printf
	mov	r3, #0
	b	.L10
.L8:
	bl	file_close
	ldr	r3, .L15+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, .L15
	ldr	r2, [r3, #0]
	ldr	r3, .L15+24
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	mov	r3, #0
	bl	file_open
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L11
	b	.L14
.L13:
	ldr	r3, .L15+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	bios_error
	mov	r3, #0
	b	.L10
.L11:
	bl	file_close
	mov	r3, #1
	b	.L10
.L14:
	ldr	r3, .L15+20
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	bios_error
	mov	r3, #0
.L10:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L16:
	.align	2
.L15:
	.word	bios_zip
	.word	bios_crc
	.word	sfix_name
	.word	sfix_crc
	.word	.LC30
	.word	lorom_name
	.word	lorom_crc
	.fnend
	.size	bios_check, .-bios_check
	.section	.rodata
	.align	2
.LC31:
	.ascii	"neogeo_bios = %d\012\000"
	.align	2
.LC32:
	.ascii	"ALL_NVRAM_FILES_ARE_REMOVED\000"
	.text
	.align	2
	.global	bios_select
	.type	bios_select, %function
bios_select:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, .L20
	mov	r2, #12
	str	r2, [r3, #0]
	ldr	r2, .L20+4
	ldr	r3, .L20
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r3, .L20
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	bios_check
	mov	r3, r0
	cmp	r3, #0
	bne	.L18
	ldr	r3, .L20
	mvn	r2, #0
	str	r2, [r3, #0]
	b	.L17
.L18:
	ldr	r3, .L20
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	beq	.L17
	ldr	r0, .L20+8
	bl	puts
.L17:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L21:
	.align	2
.L20:
	.word	neogeo_bios
	.word	.LC31
	.word	.LC32
	.fnend
	.size	bios_select, .-bios_select
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
