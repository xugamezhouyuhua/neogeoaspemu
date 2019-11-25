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
	.file	"memintrf.c"
	.global	memory_region_cpu1
	.bss
	.align	2
	.type	memory_region_cpu1, %object
	.size	memory_region_cpu1, 4
memory_region_cpu1:
	.space	4
	.global	memory_region_cpu2
	.align	2
	.type	memory_region_cpu2, %object
	.size	memory_region_cpu2, 4
memory_region_cpu2:
	.space	4
	.global	memory_region_gfx1
	.align	2
	.type	memory_region_gfx1, %object
	.size	memory_region_gfx1, 4
memory_region_gfx1:
	.space	4
	.global	memory_region_gfx2
	.align	2
	.type	memory_region_gfx2, %object
	.size	memory_region_gfx2, 4
memory_region_gfx2:
	.space	4
	.global	memory_region_gfx3
	.align	2
	.type	memory_region_gfx3, %object
	.size	memory_region_gfx3, 4
memory_region_gfx3:
	.space	4
	.global	memory_region_gfx4
	.align	2
	.type	memory_region_gfx4, %object
	.size	memory_region_gfx4, 4
memory_region_gfx4:
	.space	4
	.global	memory_region_sound1
	.align	2
	.type	memory_region_sound1, %object
	.size	memory_region_sound1, 4
memory_region_sound1:
	.space	4
	.global	memory_region_sound2
	.align	2
	.type	memory_region_sound2, %object
	.size	memory_region_sound2, 4
memory_region_sound2:
	.space	4
	.global	memory_region_user1
	.align	2
	.type	memory_region_user1, %object
	.size	memory_region_user1, 4
memory_region_user1:
	.space	4
	.global	memory_region_user3
	.align	2
	.type	memory_region_user3, %object
	.size	memory_region_user3, 4
memory_region_user3:
	.space	4
	.comm	memory_length_cpu1,4,4
	.comm	memory_length_cpu2,4,4
	.comm	memory_length_gfx1,4,4
	.comm	memory_length_gfx2,4,4
	.comm	memory_length_gfx3,4,4
	.comm	memory_length_gfx4,4,4
	.comm	memory_length_sound1,4,4
	.comm	memory_length_sound2,4,4
	.comm	memory_length_user1,4,4
	.comm	memory_length_user3,4,4
	.comm	neogeo_memcard,2048,4
	.comm	neogeo_ram,65536,4
	.comm	neogeo_sram16,65536,4
	.comm	neogeo_machine_mode,4,4
	.comm	disable_sound,4,4
	.comm	use_parent_crom,4,4
	.comm	use_parent_srom,4,4
	.comm	use_parent_vrom,4,4
	.local	cpu1rom
	.comm	cpu1rom,448,4
	.local	cpu2rom
	.comm	cpu2rom,448,4
	.local	gfx2rom
	.comm	gfx2rom,224,4
	.local	gfx3rom
	.comm	gfx3rom,896,4
	.local	snd1rom
	.comm	snd1rom,448,4
	.local	snd2rom
	.comm	snd2rom,448,4
	.local	usr1rom
	.comm	usr1rom,56,4
	.local	num_cpu1rom
	.comm	num_cpu1rom,4,4
	.local	num_cpu2rom
	.comm	num_cpu2rom,4,4
	.local	num_gfx2rom
	.comm	num_gfx2rom,4,4
	.local	num_gfx3rom
	.comm	num_gfx3rom,4,4
	.local	num_snd1rom
	.comm	num_snd1rom,4,4
	.local	num_snd2rom
	.comm	num_snd2rom,4,4
	.local	num_usr1rom
	.comm	num_usr1rom,4,4
	.local	encrypt_cpu1
	.comm	encrypt_cpu1,4,4
	.local	encrypt_cpu2
	.comm	encrypt_cpu2,4,4
	.local	encrypt_snd1
	.comm	encrypt_snd1,4,4
	.local	encrypt_gfx2
	.comm	encrypt_gfx2,4,4
	.local	encrypt_gfx3
	.comm	encrypt_gfx3,4,4
	.local	encrypt_usr1
	.comm	encrypt_usr1,4,4
	.local	bios_amask
	.comm	bios_amask,4,4
	.local	neogeo_sram
	.comm	neogeo_sram,4,4
	.local	neogeo_protection_r
	.comm	neogeo_protection_r,4,4
	.local	neogeo_protection_w
	.comm	neogeo_protection_w,4,4
	.text
	.align	2
	.type	neogeo_decode_spr, %function
neogeo_decode_spr:
	.fnstart
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #184
	sub	sp, sp, #184
	str	r0, [fp, #-176]
	str	r1, [fp, #-180]
	str	r2, [fp, #-184]
	ldr	r3, [fp, #-180]
	mov	r3, r3, lsr #7
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L15:
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #7
	ldr	r2, [fp, #-176]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	ip, #128
	sub	r2, fp, #168
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L3
.L10:
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L6:
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	mov	r3, r3, asl #2
	add	r3, r3, #3
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	mov	r3, r3, asl #3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	mov	r3, r3, asl #2
	add	r3, r3, #1
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	mov	r3, r3, asl #2
	add	r3, r3, #2
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	mov	r3, r3, asl #2
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L5
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L5:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl r3
	ldr	r2, [fp, #-28]
	orr	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L6
	ldr	r3, [fp, #-28]
	and	r2, r3, #15
	ldr	r3, [fp, #-28]
	and	r3, r3, #240
	mov	r3, r3, asl #4
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #3840
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #61440
	mov	r3, r3, asl #12
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #983040
	mov	r3, r3, lsr #12
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #15728640
	mov	r3, r3, lsr #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #251658240
	mov	r3, r3, lsr #4
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #-268435456
	orr	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	mov	r3, r3, lsr #8
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	mov	r3, r3, lsr #16
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	mov	r3, r3, lsr #24
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L7
.L9:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	add	r3, r3, #3
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	mov	r3, r3, asl #3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	add	r3, r3, #2
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	mvn	r1, #163
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r2, asr r3
	and	r3, r3, #1
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L8
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L8:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl r3
	ldr	r2, [fp, #-28]
	orr	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L7:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L9
	ldr	r3, [fp, #-28]
	and	r2, r3, #15
	ldr	r3, [fp, #-28]
	and	r3, r3, #240
	mov	r3, r3, asl #4
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #3840
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #61440
	mov	r3, r3, asl #12
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #983040
	mov	r3, r3, lsr #12
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #15728640
	mov	r3, r3, lsr #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #251658240
	mov	r3, r3, lsr #4
	orr	r2, r2, r3
	ldr	r3, [fp, #-28]
	and	r3, r3, #-268435456
	orr	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	mov	r3, r3, lsr #8
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	mov	r3, r3, lsr #16
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	mov	r3, r3, lsr #24
	and	r2, r3, #255
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-20]
	cmp	r3, #15
	ble	.L10
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [fp, #-24]
	cmp	r3, #256
	bne	.L12
	mov	r3, #2
	b	.L13
.L12:
	mov	r3, #1
.L13:
	ldr	r2, [fp, #-184]
	strb	r3, [r2, #0]
	b	.L14
.L11:
	ldr	r3, [fp, #-184]
	mov	r2, #0
	strb	r2, [r3, #0]
.L14:
	ldr	r3, [fp, #-184]
	add	r3, r3, #1
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bcc	.L15
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	neogeo_decode_spr, .-neogeo_decode_spr
	.align	2
	.type	neogeo_decode_fix, %function
neogeo_decode_fix:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #80
	sub	sp, sp, #80
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	str	r2, [fp, #-80]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L17
.L32:
	mov	r3, #0
	strb	r3, [fp, #-13]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	ip, #32
	sub	r2, fp, #68
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L18
.L27:
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	mvn	r1, #63
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-20]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L19
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L19:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L20
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L20:
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	mvn	r1, #63
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-20]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L21
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L21:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L22
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L22:
	mvn	r1, #63
	ldr	r3, [fp, #-12]
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-20]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L23
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L23:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L24
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L24:
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	mvn	r1, #63
	sub	r0, fp, #4
	add	r2, r0, r3
	mov	r3, r1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-20]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L25
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L25:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L26
	ldrb	r3, [fp, #-13]
	add	r3, r3, #1
	strb	r3, [fp, #-13]
.L26:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L18:
	ldr	r3, [fp, #-12]
	cmp	r3, #7
	bls	.L27
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L28
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #64
	bne	.L29
	mov	r3, #2
	b	.L30
.L29:
	mov	r3, #1
.L30:
	ldr	r2, [fp, #-80]
	strb	r3, [r2, #0]
	b	.L31
.L28:
	ldr	r3, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3, #0]
.L31:
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	str	r3, [fp, #-8]
.L17:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	bcc	.L32
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L33
.L34:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	and	r2, r3, #15
	ldr	r3, [fp, #-32]
	and	r3, r3, #240
	mov	r3, r3, asl #4
	orr	r2, r2, r3
	ldr	r3, [fp, #-32]
	and	r3, r3, #3840
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-32]
	and	r3, r3, #61440
	mov	r3, r3, asl #12
	orr	r2, r2, r3
	ldr	r3, [fp, #-32]
	and	r3, r3, #983040
	mov	r3, r3, lsr #12
	orr	r2, r2, r3
	ldr	r3, [fp, #-32]
	and	r3, r3, #15728640
	mov	r3, r3, lsr #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-32]
	and	r3, r3, #251658240
	mov	r3, r3, lsr #4
	orr	r2, r2, r3
	ldr	r3, [fp, #-32]
	and	r3, r3, #-268435456
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L33:
	ldr	r3, [fp, #-76]
	mov	r2, r3, lsr #2
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bhi	.L34
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	neogeo_decode_fix, .-neogeo_decode_fix
	.section	.rodata
	.align	2
.LC0:
	.ascii	"REGION_USER3\000"
	.global	__aeabi_idivmod
	.text
	.align	2
	.type	build_zoom_tables, %function
build_zoom_tables:
	.fnstart
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #88
	sub	sp, sp, #88
	mov	r0, #65536
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L68
	str	r2, [r3, #0]
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L36
	ldr	r0, .L68+4
	bl	error_memory
	mov	r3, #0
	b	.L37
.L36:
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	mov	r2, #65536
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	str	r3, [fp, #-60]
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	add	r3, r3, #16384
	str	r3, [fp, #-64]
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	add	r3, r3, #32768
	str	r3, [fp, #-68]
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	add	r3, r3, #49152
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L38
.L51:
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, .L68+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #8
	add	r3, r2, r3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	ldr	r2, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-84]
	b	.L39
.L46:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-20]
	ldr	r3, .L68+12
	cmp	r2, r3
	bgt	.L40
	ldr	r3, [fp, #-20]
	and	r3, r3, #255
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-20]
	and	r3, r3, #256
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [fp, #-32]
	eor	r3, r3, #255
	str	r3, [fp, #-32]
.L41:
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [fp, #-28]
	eor	r3, r3, #31
	str	r3, [fp, #-28]
.L40:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L42
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-16]
.L42:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L43
	ldr	r3, [fp, #-20]
	cmp	r3, #512
	bne	.L44
.L43:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldr	r2, [fp, #-16]
	and	r2, r2, #255
	mov	r2, r2, asl #1
	and	r2, r2, #255
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L44:
	ldr	r3, [fp, #-20]
	cmp	r3, #512
	beq	.L45
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	add	r2, r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #0]
.L45:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L39:
	ldr	r3, [fp, #-20]
	cmp	r3, #512
	ble	.L46
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	ldr	r2, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L47
.L50:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #16
	bhi	.L66
.L48:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L47:
	ldr	r3, [fp, #-12]
	cmp	r3, #14
	ble	.L50
	b	.L49
.L66:
	mov	r0, r0	@ nop
.L49:
	ldr	r3, [fp, #-80]
	add	r3, r3, #63
	ldr	r2, [fp, #-8]
	and	r1, r2, #255
	ldr	r2, [fp, #-24]
	and	r2, r2, #255
	rsb	r2, r2, r1
	and	r2, r2, #255
	add	r2, r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L38:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	ble	.L51
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L52
.L65:
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, .L68+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #8
	add	r3, r2, r3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	ldr	r2, [fp, #-72]
	add	r3, r2, r3
	str	r3, [fp, #-84]
	b	.L53
.L64:
	mov	r3, #0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	ldr	r3, .L68+12
	cmp	r2, r3
	bgt	.L54
	ldr	r3, [fp, #-44]
	and	r3, r3, #255
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-44]
	and	r3, r3, #256
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [fp, #-52]
	eor	r3, r3, #255
	str	r3, [fp, #-52]
.L55:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-52]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bgt	.L56
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r3, r3, asl #1
	sub	r2, r3, #1
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r2
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	str	r3, [fp, #-56]
.L56:
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L54
	ldr	r3, [fp, #-48]
	eor	r3, r3, #31
	str	r3, [fp, #-48]
.L54:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L57
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-40]
.L57:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L58
	ldr	r3, [fp, #-44]
	cmp	r3, #512
	bne	.L59
.L58:
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldr	r2, [fp, #-40]
	and	r2, r2, #255
	mov	r2, r2, asl #1
	and	r2, r2, #255
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L60
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L61
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L61
.L60:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L62
	ldr	r3, [fp, #-36]
	cmp	r3, #2
	beq	.L67
.L62:
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L59:
	ldr	r3, [fp, #-44]
	cmp	r3, #512
	beq	.L63
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	add	r2, r2, #1
	and	r2, r2, #255
	strb	r2, [r3, #0]
.L63:
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L53:
	ldr	r3, [fp, #-44]
	cmp	r3, #512
	ble	.L64
	b	.L61
.L67:
	mov	r0, r0	@ nop
.L61:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L52:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	ble	.L65
	mov	r3, #1
.L37:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L69:
	.align	2
.L68:
	.word	memory_region_user3
	.word	.LC0
	.word	memory_region_gfx4
	.word	511
	.fnend
	.size	build_zoom_tables, .-build_zoom_tables
	.section	.rodata
	.align	2
.LC1:
	.ascii	"REGION_CPU1\000"
	.align	2
.LC2:
	.ascii	"LOADING %s\012\000"
	.align	2
.LC3:
	.ascii	"DECRYPTING\000"
	.align	2
.LC4:
	.ascii	"COULD_NOT_ALLOCATE_MEMORY_FOR_DECRYPT_ROM\000"
	.align	2
.LC5:
	.ascii	"+++ neogeo_ngh = 0x%x +++\012\000"
	.text
	.align	2
	.type	load_rom_cpu1, %function
load_rom_cpu1:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	ldr	r3, .L100
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L100+4
	str	r2, [r3, #0]
	ldr	r3, .L100+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L71
	ldr	r0, .L100+8
	bl	error_memory
	mov	r3, #0
	b	.L72
.L71:
	ldr	r3, .L100+4
	ldr	r2, [r3, #0]
	ldr	r3, .L100
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L100+12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L73
	ldr	r3, .L100+12
	b	.L74
.L73:
	mov	r3, #0
.L74:
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L75
.L79:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L100+16
	add	r3, r2, r3
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r0, .L100+16
	ldr	r2, [fp, #-8]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L100+20
	ldr	r1, [fp, #-16]
	mov	r2, r3
	sub	r3, fp, #48
	bl	file_open
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L76
	ldr	r3, [fp, #-12]
	cmn	r3, #1
	bne	.L77
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_file
	b	.L78
.L77:
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_crc
.L78:
	mov	r3, #0
	b	.L72
.L76:
	ldr	r3, .L100+24
	mov	r0, r3
	sub	r3, fp, #48
	mov	r1, r3
	bl	printf
	ldr	r3, .L100+4
	ldr	r2, [r3, #0]
	ldr	r3, .L100+28
	ldr	r3, [r3, #0]
	ldr	r0, .L100+16
	mov	r1, r2
	ldr	r2, [fp, #-8]
	bl	rom_load
	str	r0, [fp, #-8]
	bl	file_close
.L75:
	ldr	r3, .L100+28
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L79
	ldr	r3, .L100+32
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L80
	mov	r3, #1
	str	r3, [fp, #-12]
	ldr	r0, .L100+36
	bl	puts
	ldr	r3, .L100+40
	ldr	r3, [r3, #0]
	sub	r3, r3, #2
	cmp	r3, #31
	ldrls	pc, [pc, r3, asl #2]
	b	.L81
.L98:
	.word	.L82
	.word	.L81
	.word	.L83
	.word	.L81
	.word	.L84
	.word	.L85
	.word	.L86
	.word	.L81
	.word	.L87
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L88
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L92
	.word	.L81
	.word	.L93
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L94
	.word	.L95
	.word	.L96
	.word	.L97
.L83:
	bl	kof99_decrypt_68k
	b	.L99
.L84:
	bl	garou_decrypt_68k
	b	.L99
.L85:
	bl	garouh_decrypt_68k
	b	.L99
.L86:
	bl	mslug3_decrypt_68k
	b	.L99
.L87:
	bl	kof2000_decrypt_68k
	b	.L99
.L82:
	bl	kof98_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L88:
	bl	kof2002_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L89:
	bl	mslug5_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L90:
	bl	svc_px_decrypt
	str	r0, [fp, #-12]
	b	.L99
.L91:
	bl	samsho5_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L92:
	bl	kof2003_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L93:
	bl	samsh5sp_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L94:
	bl	matrim_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L95:
	bl	mslug5_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L96:
	bl	svc_px_decrypt
	str	r0, [fp, #-12]
	b	.L99
.L97:
	bl	kf2k3pcb_decrypt_68k
	str	r0, [fp, #-12]
	b	.L99
.L81:
	mov	r3, #0
	str	r3, [fp, #-12]
.L99:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L80
	ldr	r0, .L100+44
	bl	puts
	ldr	r3, .L100+48
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L72
.L80:
	mov	r0, #264
	bl	m68000_read_memory_16
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L100+52
	strh	r2, [r3, #0]	@ movhi
	ldr	r2, .L100+56
	ldr	r3, .L100+52
	ldrh	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	mov	r3, #1
.L72:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L101:
	.align	2
.L100:
	.word	memory_length_cpu1
	.word	memory_region_cpu1
	.word	.LC1
	.word	parent_name
	.word	cpu1rom
	.word	game_name
	.word	.LC2
	.word	num_cpu1rom
	.word	encrypt_cpu1
	.word	.LC3
	.word	machine_init_type
	.word	.LC4
	.word	Loop
	.word	neogeo_ngh
	.word	.LC5
	.fnend
	.size	load_rom_cpu1, .-load_rom_cpu1
	.section	.rodata
	.align	2
.LC6:
	.ascii	"REGION_CPU2\000"
	.align	2
.LC7:
	.ascii	"neogeo\000"
	.text
	.align	2
	.type	load_rom_cpu2, %function
load_rom_cpu2:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	ldr	r3, .L114
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L114+4
	str	r2, [r3, #0]
	ldr	r3, .L114+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L103
	ldr	r0, .L114+8
	bl	error_memory
	mov	r3, #0
	b	.L104
.L103:
	ldr	r3, .L114+4
	ldr	r2, [r3, #0]
	ldr	r3, .L114
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L114+12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L105
	ldr	r3, .L114+12
	b	.L106
.L105:
	ldr	r3, .L114+16
.L106:
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L107
.L111:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L114+20
	add	r3, r2, r3
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r0, .L114+20
	ldr	r2, [fp, #-8]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L114+24
	ldr	r1, [fp, #-12]
	mov	r2, r3
	sub	r3, fp, #48
	bl	file_open
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L108
	ldr	r3, [fp, #-16]
	cmn	r3, #1
	bne	.L109
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_file
	b	.L110
.L109:
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_crc
.L110:
	mov	r3, #0
	b	.L104
.L108:
	ldr	r3, .L114+28
	mov	r0, r3
	sub	r3, fp, #48
	mov	r1, r3
	bl	printf
	ldr	r3, .L114+4
	ldr	r2, [r3, #0]
	ldr	r3, .L114+32
	ldr	r3, [r3, #0]
	ldr	r0, .L114+20
	mov	r1, r2
	ldr	r2, [fp, #-8]
	bl	rom_load
	str	r0, [fp, #-8]
	bl	file_close
.L107:
	ldr	r3, .L114+32
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L111
	ldr	r3, .L114+36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L112
	ldr	r0, .L114+40
	bl	puts
	ldr	r3, .L114+44
	ldr	r3, [r3, #0]
	sub	r3, r3, #10
	cmp	r3, #24
	bhi	.L112
	ldr	r2, .L114+48
	mov	r3, r2, asl r3
	cmp	r3, #0
	bge	.L112
.L113:
	bl	neogeo_cmc50_m1_decrypt
	mov	r0, r0	@ nop
.L112:
	ldr	r3, .L114+4
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L114+4
	ldr	r3, [r3, #0]
	add	r3, r3, #65536
	mov	ip, #65536
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	mov	r3, #1
.L104:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L115:
	.align	2
.L114:
	.word	memory_length_cpu2
	.word	memory_region_cpu2
	.word	.LC6
	.word	parent_name
	.word	.LC7
	.word	cpu2rom
	.word	game_name
	.word	.LC2
	.word	num_cpu2rom
	.word	encrypt_cpu2
	.word	.LC3
	.word	machine_init_type
	.word	-806207616
	.fnend
	.size	load_rom_cpu2, .-load_rom_cpu2
	.section	.rodata
	.align	2
.LC8:
	.ascii	"REGION_GFX1\000"
	.text
	.align	2
	.type	load_rom_gfx1, %function
load_rom_gfx1:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	ldr	r3, .L122
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L122+4
	str	r2, [r3, #0]
	ldr	r3, .L122+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L117
	ldr	r0, .L122+8
	bl	error_memory
	mov	r3, #0
	b	.L118
.L117:
	ldr	r3, .L122+4
	ldr	r2, [r3, #0]
	ldr	r3, .L122
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L122+12
	ldr	r3, [r3, #0]
	sub	r2, fp, #40
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r3, .L122+16
	ldr	r2, [r3, #0]
	ldr	r3, .L122+20
	ldr	r3, [r3, #0]
	ldr	r0, .L122+24
	mov	r1, r2
	mov	r2, r3
	sub	r3, fp, #40
	bl	file_open
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L119
	ldr	r3, [fp, #-8]
	cmn	r3, #1
	bne	.L120
	sub	r3, fp, #40
	mov	r0, r3
	bl	error_file
	b	.L121
.L120:
	sub	r3, fp, #40
	mov	r0, r3
	bl	error_crc
.L121:
	mov	r3, #0
	b	.L118
.L119:
	ldr	r3, .L122+28
	mov	r0, r3
	sub	r3, fp, #40
	mov	r1, r3
	bl	printf
	ldr	r3, .L122+4
	ldr	r2, [r3, #0]
	ldr	r3, .L122
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	file_read
	bl	file_close
	ldr	r3, .L122+4
	ldr	r1, [r3, #0]
	ldr	r3, .L122
	ldr	r2, [r3, #0]
	ldr	r3, .L122+32
	ldr	r3, [r3, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_decode_fix
	mov	r3, #1
.L118:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L123:
	.align	2
.L122:
	.word	memory_length_gfx1
	.word	memory_region_gfx1
	.word	.LC8
	.word	sfix_name
	.word	bios_zip
	.word	sfix_crc
	.word	game_name
	.word	.LC2
	.word	gfx_pen_usage
	.fnend
	.size	load_rom_gfx1, .-load_rom_gfx1
	.section	.rodata
	.align	2
.LC9:
	.ascii	"REGION_GFX2\000"
	.align	2
.LC10:
	.ascii	"cache/srom\000"
	.align	2
.LC11:
	.ascii	"LOADING_DECRYPTED_GFX2_ROM\000"
	.text
	.align	2
	.type	load_rom_gfx2, %function
load_rom_gfx2:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	ldr	r3, .L137
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L137+4
	str	r2, [r3, #0]
	ldr	r3, .L137+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L125
	ldr	r0, .L137+8
	bl	error_memory
	mov	r3, #0
	b	.L126
.L125:
	ldr	r3, .L137+4
	ldr	r2, [r3, #0]
	ldr	r3, .L137
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L137+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L127
	mov	r0, #2
	bl	cachefile_open
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L128
	ldr	r0, .L137+16
	bl	error_file
	mov	r3, #0
	b	.L126
.L128:
	ldr	r0, .L137+20
	bl	puts
	ldr	r3, .L137+4
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L137
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-12]
	bl	fread
	ldr	r0, [fp, #-12]
	bl	fclose
	b	.L129
.L127:
	ldr	r3, .L137+24
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L130
	ldr	r3, .L137+28
	ldr	r3, [r3, #0]
	b	.L131
.L130:
	ldr	r3, .L137+24
.L131:
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L132
.L136:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L137+32
	add	r3, r2, r3
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r0, .L137+32
	ldr	r2, [fp, #-8]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L137+36
	ldr	r1, [fp, #-16]
	mov	r2, r3
	sub	r3, fp, #52
	bl	file_open
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L133
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	bne	.L134
	sub	r3, fp, #52
	mov	r0, r3
	bl	error_file
	b	.L135
.L134:
	sub	r3, fp, #52
	mov	r0, r3
	bl	error_crc
.L135:
	mov	r3, #0
	b	.L126
.L133:
	ldr	r3, .L137+40
	mov	r0, r3
	sub	r3, fp, #52
	mov	r1, r3
	bl	printf
	ldr	r3, .L137+4
	ldr	r2, [r3, #0]
	ldr	r3, .L137+44
	ldr	r3, [r3, #0]
	ldr	r0, .L137+32
	mov	r1, r2
	ldr	r2, [fp, #-8]
	bl	rom_load
	str	r0, [fp, #-8]
	bl	file_close
.L132:
	ldr	r3, .L137+44
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L136
.L129:
	ldr	r3, .L137+4
	ldr	r1, [r3, #0]
	ldr	r3, .L137
	ldr	r2, [r3, #0]
	ldr	r3, .L137+48
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_decode_fix
	mov	r3, #1
.L126:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L138:
	.align	2
.L137:
	.word	memory_length_gfx2
	.word	memory_region_gfx2
	.word	.LC9
	.word	encrypt_gfx2
	.word	.LC10
	.word	.LC11
	.word	parent_name
	.word	bios_zip
	.word	gfx2rom
	.word	game_name
	.word	.LC2
	.word	num_gfx2rom
	.word	gfx_pen_usage
	.fnend
	.size	load_rom_gfx2, .-load_rom_gfx2
	.section	.rodata
	.align	2
.LC12:
	.ascii	"COULD_NOT_ALLOCATE_MEMORY_FOR_SPRITE_DATA\000"
	.align	2
.LC13:
	.ascii	"TRY_TO_USE_SPRITE_CACHE\000"
	.text
	.align	2
	.type	load_rom_gfx3, %function
load_rom_gfx3:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	ldr	r3, .L151
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L140
	ldr	r3, .L151+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L151+8
	str	r2, [r3, #0]
	ldr	r3, .L151+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L141
	ldr	r3, .L151+8
	ldr	r2, [r3, #0]
	ldr	r3, .L151+4
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L151+12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L142
	ldr	r3, .L151+12
	b	.L143
.L142:
	mov	r3, #0
.L143:
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L144
.L149:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L151+16
	add	r3, r2, r3
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r0, .L151+16
	ldr	r2, [fp, #-8]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L151+20
	ldr	r1, [fp, #-12]
	mov	r2, r3
	sub	r3, fp, #48
	bl	file_open
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L145
	ldr	r3, [fp, #-16]
	cmn	r3, #1
	bne	.L146
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_file
	b	.L147
.L146:
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_crc
.L147:
	mov	r3, #0
	b	.L148
.L145:
	ldr	r3, .L151+24
	mov	r0, r3
	sub	r3, fp, #48
	mov	r1, r3
	bl	printf
	ldr	r3, .L151+8
	ldr	r2, [r3, #0]
	ldr	r3, .L151+28
	ldr	r3, [r3, #0]
	ldr	r0, .L151+16
	mov	r1, r2
	ldr	r2, [fp, #-8]
	bl	rom_load
	str	r0, [fp, #-8]
	bl	file_close
.L144:
	ldr	r3, .L151+28
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L149
	ldr	r3, .L151+8
	ldr	r1, [r3, #0]
	ldr	r3, .L151+4
	ldr	r2, [r3, #0]
	ldr	r3, .L151+32
	ldr	r3, [r3, #8]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_decode_spr
	b	.L140
.L141:
	ldr	r0, .L151+36
	bl	puts
	ldr	r0, .L151+40
	bl	puts
.L140:
	ldr	r3, .L151+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L150
	bl	zyh_cache_start
	mov	r3, r0
	cmp	r3, #0
	bne	.L150
	ldr	r3, .L151+44
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L148
.L150:
	mov	r3, #1
.L148:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L152:
	.align	2
.L151:
	.word	encrypt_gfx3
	.word	memory_length_gfx3
	.word	memory_region_gfx3
	.word	parent_name
	.word	gfx3rom
	.word	game_name
	.word	.LC2
	.word	num_gfx3rom
	.word	gfx_pen_usage
	.word	.LC12
	.word	.LC13
	.word	Loop
	.fnend
	.size	load_rom_gfx3, .-load_rom_gfx3
	.section	.rodata
	.align	2
.LC14:
	.ascii	"REGION_GFX4\000"
	.text
	.align	2
	.type	load_rom_gfx4, %function
load_rom_gfx4:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	ldr	r3, .L159
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L159+4
	str	r2, [r3, #0]
	ldr	r3, .L159+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L154
	ldr	r0, .L159+8
	bl	error_memory
	mov	r3, #0
	b	.L155
.L154:
	ldr	r3, .L159+4
	ldr	r2, [r3, #0]
	ldr	r3, .L159
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L159+12
	ldr	r3, [r3, #0]
	sub	r2, fp, #40
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r3, .L159+16
	ldr	r2, [r3, #0]
	ldr	r3, .L159+20
	ldr	r3, [r3, #0]
	ldr	r0, .L159+24
	mov	r1, r2
	mov	r2, r3
	sub	r3, fp, #40
	bl	file_open
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L156
	ldr	r3, [fp, #-8]
	cmn	r3, #1
	bne	.L157
	sub	r3, fp, #40
	mov	r0, r3
	bl	error_file
	b	.L158
.L157:
	sub	r3, fp, #40
	mov	r0, r3
	bl	error_crc
.L158:
	mov	r3, #0
	b	.L155
.L156:
	ldr	r3, .L159+28
	mov	r0, r3
	sub	r3, fp, #40
	mov	r1, r3
	bl	printf
	ldr	r3, .L159+4
	ldr	r2, [r3, #0]
	ldr	r3, .L159
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	file_read
	bl	file_close
	bl	build_zoom_tables
	mov	r3, r0
.L155:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L160:
	.align	2
.L159:
	.word	memory_length_gfx4
	.word	memory_region_gfx4
	.word	.LC14
	.word	lorom_name
	.word	bios_zip
	.word	lorom_crc
	.word	game_name
	.word	.LC2
	.fnend
	.size	load_rom_gfx4, .-load_rom_gfx4
	.section	.rodata
	.align	2
.LC15:
	.ascii	"REGION_SOUND1\000"
	.align	2
.LC16:
	.ascii	"cache/vrom\000"
	.align	2
.LC17:
	.ascii	"LOADING_DECRYPTED_SOUND1_ROM\000"
	.text
	.align	2
	.type	load_rom_sound1, %function
load_rom_sound1:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	ldr	r3, .L175
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L162
	ldr	r3, .L175+4
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #1
	b	.L163
.L162:
	ldr	r3, .L175+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L175+8
	str	r2, [r3, #0]
	ldr	r3, .L175+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L164
	ldr	r0, .L175+12
	bl	error_memory
	mov	r3, #0
	b	.L163
.L164:
	ldr	r3, .L175+16
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L175+8
	ldr	r2, [r3, #0]
	ldr	r3, .L175+4
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L175+20
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L165
	mov	r0, #3
	bl	cachefile_open
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L166
	ldr	r0, .L175+24
	bl	error_file
	mov	r3, #0
	b	.L163
.L166:
	ldr	r0, .L175+28
	bl	puts
	ldr	r3, .L175+8
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L175+4
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-12]
	bl	fread
	ldr	r0, [fp, #-12]
	bl	fclose
	b	.L167
.L165:
	ldr	r3, .L175+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L168
	ldr	r3, .L175+32
	b	.L169
.L168:
	mov	r3, #0
.L169:
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L170
.L174:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L175+36
	add	r3, r2, r3
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r0, .L175+36
	ldr	r2, [fp, #-8]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L175+40
	ldr	r1, [fp, #-16]
	mov	r2, r3
	sub	r3, fp, #52
	bl	file_open
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L171
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	bne	.L172
	sub	r3, fp, #52
	mov	r0, r3
	bl	error_file
	b	.L173
.L172:
	sub	r3, fp, #52
	mov	r0, r3
	bl	error_crc
.L173:
	mov	r3, #0
	b	.L163
.L171:
	ldr	r3, .L175+44
	mov	r0, r3
	sub	r3, fp, #52
	mov	r1, r3
	bl	printf
	ldr	r3, .L175+8
	ldr	r2, [r3, #0]
	ldr	r3, .L175+48
	ldr	r3, [r3, #0]
	ldr	r0, .L175+36
	mov	r1, r2
	ldr	r2, [fp, #-8]
	bl	rom_load
	str	r0, [fp, #-8]
	bl	file_close
.L170:
	ldr	r3, .L175+48
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L174
.L167:
	mov	r3, #1
.L163:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L176:
	.align	2
.L175:
	.word	option_sound_enable
	.word	memory_length_sound1
	.word	memory_region_sound1
	.word	.LC15
	.word	disable_sound
	.word	encrypt_snd1
	.word	.LC16
	.word	.LC17
	.word	parent_name
	.word	snd1rom
	.word	game_name
	.word	.LC2
	.word	num_snd1rom
	.fnend
	.size	load_rom_sound1, .-load_rom_sound1
	.section	.rodata
	.align	2
.LC18:
	.ascii	"REGION_SOUND2\000"
	.text
	.align	2
	.type	load_rom_sound2, %function
load_rom_sound2:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	ldr	r3, .L189
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L178
	ldr	r3, .L189+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L178
	ldr	r3, .L189+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L179
.L178:
	ldr	r3, .L189
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #1
	b	.L180
.L179:
	ldr	r3, .L189
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L189+12
	str	r2, [r3, #0]
	ldr	r3, .L189+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L181
	ldr	r0, .L189+16
	bl	error_memory
	mov	r3, #0
	b	.L180
.L181:
	ldr	r3, .L189+12
	ldr	r2, [r3, #0]
	ldr	r3, .L189
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L189+20
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L182
	ldr	r3, .L189+20
	b	.L183
.L182:
	mov	r3, #0
.L183:
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L184
.L188:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L189+24
	add	r3, r2, r3
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r0, .L189+24
	ldr	r2, [fp, #-8]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L189+28
	ldr	r1, [fp, #-12]
	mov	r2, r3
	sub	r3, fp, #48
	bl	file_open
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L185
	ldr	r3, [fp, #-16]
	cmn	r3, #1
	bne	.L186
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_file
	b	.L187
.L186:
	sub	r3, fp, #48
	mov	r0, r3
	bl	error_crc
.L187:
	mov	r3, #0
	b	.L180
.L185:
	ldr	r3, .L189+32
	mov	r0, r3
	sub	r3, fp, #48
	mov	r1, r3
	bl	printf
	ldr	r3, .L189+12
	ldr	r2, [r3, #0]
	ldr	r3, .L189+36
	ldr	r3, [r3, #0]
	ldr	r0, .L189+24
	mov	r1, r2
	ldr	r2, [fp, #-8]
	bl	rom_load
	str	r0, [fp, #-8]
	bl	file_close
.L184:
	ldr	r3, .L189+36
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L188
	mov	r3, #1
.L180:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L190:
	.align	2
.L189:
	.word	memory_length_sound2
	.word	option_sound_enable
	.word	disable_sound
	.word	memory_region_sound2
	.word	.LC18
	.word	parent_name
	.word	snd2rom
	.word	game_name
	.word	.LC2
	.word	num_snd2rom
	.fnend
	.size	load_rom_sound2, .-load_rom_sound2
	.section	.rodata
	.align	2
.LC19:
	.ascii	"REGION_USER1\000"
	.align	2
.LC20:
	.ascii	"LOADING_BIOS %s (%s)\012\000"
	.align	2
.LC21:
	.ascii	"irrmaze\000"
	.text
	.align	2
	.type	load_rom_user1, %function
load_rom_user1:
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
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L192
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L214+4
	str	r2, [r3, #0]
	ldr	r3, .L214+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L193
	ldr	r0, .L214+8
	bl	error_memory
	mov	r3, #0
	b	.L194
.L193:
	ldr	r3, .L214+4
	ldr	r2, [r3, #0]
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
.L192:
	ldr	r3, .L214+12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L195
	ldr	r3, .L214+12
	b	.L196
.L195:
	ldr	r3, .L214+16
.L196:
	str	r3, [fp, #-16]
	ldr	r3, .L214+20
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L197
	ldr	r3, .L214+24
	ldr	r2, [r3, #0]
	ldr	r3, .L214+28
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-8]
	ldr	r3, .L214+24
	ldr	r2, [r3, #0]
	ldr	r3, .L214+32
	ldr	r3, [r3, r2, asl #2]
	sub	r2, fp, #56
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	ldr	r3, .L214+36
	ldr	r2, [r3, #0]
	ldr	r3, .L214+24
	ldr	r1, [r3, #0]
	ldr	r3, .L214+40
	ldr	r3, [r3, r1, asl #2]
	ldr	r0, .L214+44
	mov	r1, r2
	mov	r2, r3
	sub	r3, fp, #56
	bl	file_open
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L198
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	bne	.L199
	sub	r3, fp, #56
	mov	r0, r3
	bl	error_file
	b	.L200
.L199:
	sub	r3, fp, #56
	mov	r0, r3
	bl	error_crc
.L200:
	ldr	r3, .L214+24
	mvn	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L194
.L198:
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L201
	ldr	r1, .L214+48
	ldr	r3, .L214+24
	ldr	r2, [r3, #0]
	ldr	r3, .L214+32
	ldr	r3, [r3, r2, asl #2]
	mov	r2, r1
	mov	r0, r2
	sub	r2, fp, #56
	mov	r1, r2
	mov	r2, r3
	bl	printf
.L201:
	ldr	r3, .L214+4
	ldr	r2, [r3, #0]
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	file_read
	bl	file_close
	b	.L202
.L197:
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L202
	ldr	r0, .L214+44
	ldr	r1, .L214+52
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L203
	ldr	r3, .L214+56
	str	r3, [fp, #-8]
.L203:
	ldr	r2, .L214+60
	sub	r3, fp, #56
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	strcpy
	ldr	r3, .L214+64
	ldr	r3, [r3, #12]
	ldr	r0, .L214+44
	ldr	r1, [fp, #-16]
	mov	r2, r3
	sub	r3, fp, #56
	bl	file_open
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L204
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	bne	.L205
	sub	r3, fp, #56
	mov	r0, r3
	bl	error_file
	b	.L206
.L205:
	sub	r3, fp, #56
	mov	r0, r3
	bl	error_crc
.L206:
	mov	r3, #0
	b	.L194
.L204:
	ldr	r3, .L214+68
	mov	r0, r3
	sub	r3, fp, #56
	mov	r1, r3
	bl	printf
	ldr	r3, .L214+4
	ldr	r2, [r3, #0]
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	file_read
	bl	file_close
	ldr	r3, .L214+72
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L202
	ldr	r3, .L214+76
	ldr	r3, [r3, #0]
	cmp	r3, #33
	bne	.L202
	bl	kf2k3pcb_sp1_decrypt
	mov	r3, r0
	cmp	r3, #0
	bne	.L202
	ldr	r0, .L214+80
	bl	puts
	ldr	r3, .L214+84
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L194
.L202:
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	sub	r2, r3, #1
	ldr	r3, .L214+88
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L207
	ldr	r3, .L214+4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r3, .L214+92
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L208
	ldr	r3, [fp, #-24]
	add	r3, r3, #1024
	ldrh	r3, [r3, #0]
	and	r3, r3, #3
	strh	r3, [fp, #-10]	@ movhi
	b	.L209
.L208:
	ldr	r3, .L214+92
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	strh	r3, [fp, #-10]	@ movhi
.L209:
	ldr	r3, .L214+96
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L210
	ldr	r3, [fp, #-24]
	add	r3, r3, #1024
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	bic	r3, r3, #32512
	bic	r3, r3, #255
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L211
.L210:
	ldr	r3, .L214+96
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L212
	mov	r3, #32768
	b	.L213
.L212:
	mov	r3, #0
.L213:
	ldrh	r1, [fp, #-10]
	mov	r2, r3	@ movhi
	mov	r3, r1	@ movhi
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L211:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1024
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, .L214+100
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, .L214+100
	strh	r2, [r3, #0]	@ movhi
.L207:
	mov	r3, #1
.L194:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L215:
	.align	2
.L214:
	.word	memory_length_user1
	.word	memory_region_user1
	.word	.LC19
	.word	parent_name
	.word	.LC7
	.word	num_usr1rom
	.word	neogeo_bios
	.word	bios_patch_address
	.word	bios_name
	.word	bios_zip
	.word	bios_crc
	.word	game_name
	.word	.LC20
	.word	.LC21
	.word	69004
	.word	usr1rom+24
	.word	usr1rom
	.word	.LC2
	.word	encrypt_usr1
	.word	machine_init_type
	.word	.LC4
	.word	Loop
	.word	bios_amask
	.word	neogeo_region
	.word	neogeo_machine_mode
	.word	20081
	.fnend
	.size	load_rom_user1, .-load_rom_user1
	.section	.rodata
	.align	2
.LC22:
	.ascii	"%srominfo.mvs\000"
	.align	2
.LC23:
	.ascii	"rb\000"
	.align	2
.LC24:
	.ascii	"\012\000"
	.align	2
.LC25:
	.ascii	"FILENAME(\000"
	.align	2
.LC26:
	.ascii	" \000"
	.align	2
.LC27:
	.ascii	" ,\000"
	.align	2
.LC28:
	.ascii	"pcb\000"
	.align	2
.LC29:
	.ascii	"%d\000"
	.align	2
.LC30:
	.ascii	"END\000"
	.align	2
.LC31:
	.ascii	"REGION(\000"
	.align	2
.LC32:
	.ascii	"SOUND_DISABLE\000"
	.align	2
.LC33:
	.ascii	"ENCRYPTED\000"
	.align	2
.LC34:
	.ascii	"CPU1\000"
	.align	2
.LC35:
	.ascii	"%x\000"
	.align	2
.LC36:
	.ascii	"CPU2\000"
	.align	2
.LC37:
	.ascii	"GFX2\000"
	.align	2
.LC38:
	.ascii	"GFX3\000"
	.align	2
.LC39:
	.ascii	"SOUND1\000"
	.align	2
.LC40:
	.ascii	"SOUND2\000"
	.align	2
.LC41:
	.ascii	"USER1\000"
	.align	2
.LC42:
	.ascii	"ROM(\000"
	.align	2
.LC43:
	.ascii	"ROMX(\000"
	.text
	.align	2
	.type	load_rom_info, %function
load_rom_info:
	.fnstart
	@ args = 0, pretend = 0, frame = 640
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #640
	sub	sp, sp, #640
	str	r0, [fp, #-640]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, .L270
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+4
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+8
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+16
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+20
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+24
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+28
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+36
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+40
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+48
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+52
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r2, .L270+56
	sub	r3, fp, #380
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+60
	bl	sprintf
	ldr	r2, .L270+64
	sub	r3, fp, #380
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L217
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #2
	bl	fseek
	ldr	r0, [fp, #-32]
	bl	ftell
	str	r0, [fp, #-36]
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #0
	bl	fseek
	ldr	r3, [fp, #-36]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L218
	ldr	r0, [fp, #-32]
	bl	fclose
	mov	r3, #3
	b	.L219
.L218:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	mov	r0, r2
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r0, [fp, #-32]
	bl	fclose
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L220
.L266:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	b	.L221
.L222:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L221:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L222
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-44]
	sub	r2, fp, #636
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
	sub	r3, fp, #636
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	sub	r2, fp, #636
	add	r3, r2, r3
	ldr	r1, .L270+68
	mov	r2, r3
	mov	r3, r1
	mov	ip, #2
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldrb	r3, [fp, #-636]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L223
	ldrb	r3, [fp, #-635]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L267
.L223:
	ldrb	r3, [fp, #-636]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L224
	ldrb	r3, [fp, #-636]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L268
	ldrb	r3, [fp, #-636]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L268
.L226:
	sub	r3, fp, #636
	mov	r0, r3
	ldr	r1, .L270+72
	mov	r2, #9
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L227
	ldr	r2, .L270+228
	sub	r3, fp, #636
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	strtok
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-48]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-52]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-56]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-60]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-64]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-68]
	ldr	r3, .L270+228
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-72]
	ldr	r0, [fp, #-48]
	ldr	r1, [fp, #-640]
	bl	strcasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L220
	ldr	r0, [fp, #-52]
	ldr	r1, .L270+76
	mov	r2, #6
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L228
	ldr	r1, .L270+80
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	b	.L229
.L228:
	ldr	r0, [fp, #-52]
	ldr	r1, .L270+84
	mov	r2, #3
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L230
	ldr	r1, .L270+80
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	b	.L229
.L230:
	ldr	r3, [fp, #-52]
	ldr	r0, .L270+80
	mov	r1, r3
	bl	strcpy
.L229:
	ldr	r3, [fp, #-56]
	ldr	r2, .L270+88
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+92
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-60]
	ldr	r2, .L270+88
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+96
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-64]
	ldr	r2, .L270+88
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+100
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-68]
	ldr	r2, .L270+88
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+104
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-72]
	ldr	r2, .L270+88
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+108
	bl	__isoc99_sscanf
	ldr	r3, .L270+108
	mov	r2, #320
	str	r2, [r3, #0]
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L220
.L227:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L220
	sub	r3, fp, #636
	mov	r0, r3
	ldr	r1, .L270+112
	mov	r2, #3
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L220
	ldr	r0, [fp, #-40]
	bl	free
	mov	r3, #0
	b	.L219
.L224:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L220
	sub	r3, fp, #636
	add	r3, r3, #1
	mov	r0, r3
	ldr	r1, .L270+116
	mov	r2, #7
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L231
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r2, .L270+228
	sub	r3, fp, #636
	add	r3, r3, #1
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	strtok
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-76]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-80]
	ldr	r3, .L270+228
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-84]
	ldr	r0, [fp, #-84]
	ldr	r1, .L270+120
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L232
	ldr	r3, .L270+52
	mov	r2, #1
	str	r2, [r3, #0]
.L232:
	ldr	r0, [fp, #-84]
	ldr	r1, .L270+124
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L233
	mov	r3, #1
	str	r3, [fp, #-20]
.L233:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+128
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L234
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+132
	bl	__isoc99_sscanf
	ldr	r3, .L270+28
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L220
.L234:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+136
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L235
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+140
	bl	__isoc99_sscanf
	ldr	r3, .L270+32
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L220
.L235:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+144
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L236
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+148
	bl	__isoc99_sscanf
	ldr	r3, .L270+40
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, #3
	str	r3, [fp, #-16]
	b	.L220
.L236:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+152
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L237
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+156
	bl	__isoc99_sscanf
	ldr	r3, .L270+44
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, #4
	str	r3, [fp, #-16]
	b	.L220
.L237:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+160
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L238
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+164
	bl	__isoc99_sscanf
	ldr	r3, .L270+36
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, #6
	str	r3, [fp, #-16]
	b	.L220
.L238:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+168
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L239
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+172
	bl	__isoc99_sscanf
	mov	r3, #7
	str	r3, [fp, #-16]
	b	.L220
.L239:
	ldr	r0, [fp, #-80]
	ldr	r1, .L270+176
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L240
	ldr	r3, [fp, #-76]
	ldr	r2, .L270+240
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L270+180
	bl	__isoc99_sscanf
	ldr	r3, .L270+48
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, #8
	str	r3, [fp, #-16]
	b	.L220
.L240:
	mov	r3, #10
	str	r3, [fp, #-16]
	b	.L220
.L231:
	sub	r3, fp, #636
	add	r3, r3, #1
	mov	r0, r3
	ldr	r1, .L270+184
	mov	r2, #4
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L241
	ldr	r2, .L270+228
	sub	r3, fp, #636
	add	r3, r3, #1
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	strtok
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-88]
	ldr	r3, [fp, #-88]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	beq	.L242
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-24]
	b	.L243
.L242:
	mov	r3, #0
	str	r3, [fp, #-24]
.L243:
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-92]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-96]
	ldr	r3, .L270+228
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-100]
	ldr	r3, [fp, #-16]
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L269
.L252:
	.word	.L245
	.word	.L246
	.word	.L269
	.word	.L247
	.word	.L248
	.word	.L269
	.word	.L249
	.word	.L250
	.word	.L251
.L245:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+232
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+232
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+232
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+232
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L253
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+232
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L253:
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	ldr	r0, .L270+232
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270
	ldr	r2, [r3, #0]
	ldr	r0, .L270+232
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270
	str	r2, [r3, #0]
	b	.L220
.L246:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+188
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+188
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+188
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+188
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L254
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+188
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L254:
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	ldr	r0, .L270+188
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+4
	ldr	r2, [r3, #0]
	ldr	r0, .L270+188
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+4
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+4
	str	r2, [r3, #0]
	b	.L220
.L247:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+192
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+192
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+192
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+192
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L255
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+192
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L255:
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	ldr	r0, .L270+192
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+8
	ldr	r2, [r3, #0]
	ldr	r0, .L270+192
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+8
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+8
	str	r2, [r3, #0]
	b	.L220
.L248:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+244
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+244
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+244
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+244
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L256
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+244
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L256:
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	ldr	r0, .L270+244
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+12
	ldr	r2, [r3, #0]
	ldr	r0, .L270+244
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+12
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+12
	str	r2, [r3, #0]
	b	.L220
.L271:
	.align	2
.L270:
	.word	num_cpu1rom
	.word	num_cpu2rom
	.word	num_gfx2rom
	.word	num_gfx3rom
	.word	num_snd1rom
	.word	num_snd2rom
	.word	num_usr1rom
	.word	encrypt_cpu1
	.word	encrypt_cpu2
	.word	encrypt_snd1
	.word	encrypt_gfx2
	.word	encrypt_gfx3
	.word	encrypt_usr1
	.word	disable_sound
	.word	.LC22
	.word	launchDir
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC7
	.word	parent_name
	.word	.LC28
	.word	.LC29
	.word	machine_driver_type
	.word	machine_input_type
	.word	machine_init_type
	.word	machine_screen_type
	.word	neo_game_w
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	memory_length_cpu1
	.word	.LC36
	.word	memory_length_cpu2
	.word	.LC37
	.word	memory_length_gfx2
	.word	.LC38
	.word	memory_length_gfx3
	.word	.LC39
	.word	memory_length_sound1
	.word	.LC40
	.word	memory_length_sound2
	.word	.LC41
	.word	memory_length_user1
	.word	.LC42
	.word	cpu2rom
	.word	gfx2rom
	.word	snd1rom
	.word	num_snd1rom
	.word	snd2rom
	.word	num_snd2rom
	.word	usr1rom
	.word	num_usr1rom
	.word	.LC43
	.word	.LC27
	.word	.LC26
	.word	cpu1rom
	.word	num_cpu1rom
	.word	.LC35
	.word	gfx3rom
	.word	num_gfx3rom
.L249:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+196
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+196
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+196
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+196
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L257
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+196
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L257:
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	ldr	r0, .L270+196
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+200
	ldr	r2, [r3, #0]
	ldr	r0, .L270+196
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+200
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+200
	str	r2, [r3, #0]
	b	.L220
.L250:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+204
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+204
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+204
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+204
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L258
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+204
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L258:
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	ldr	r0, .L270+204
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+208
	ldr	r2, [r3, #0]
	ldr	r0, .L270+204
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+208
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+208
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
	b	.L220
.L251:
	ldr	r1, [fp, #-88]
	ldr	ip, .L270+240
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+212
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-92]
	ldr	ip, .L270+240
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+212
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-96]
	ldr	ip, .L270+240
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+212
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-100]
	ldr	ip, .L270+240
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+212
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L259
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+212
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L259:
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	ldr	r0, .L270+212
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+216
	ldr	r2, [r3, #0]
	ldr	r0, .L270+212
	mov	r1, #20
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L270+216
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+216
	str	r2, [r3, #0]
	b	.L269
.L241:
	sub	r3, fp, #636
	add	r3, r3, #1
	mov	r0, r3
	ldr	r1, .L270+220
	mov	r2, #5
	bl	strncasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L220
	ldr	r2, .L270+228
	sub	r3, fp, #636
	add	r3, r3, #1
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	strtok
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-104]
	ldr	r3, [fp, #-104]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	beq	.L260
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-28]
	b	.L261
.L260:
	mov	r3, #0
	str	r3, [fp, #-28]
.L261:
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-108]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-112]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-116]
	ldr	r3, .L270+224
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-120]
	ldr	r3, .L270+228
	mov	r0, #0
	mov	r1, r3
	bl	strtok
	str	r0, [fp, #-124]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L262
	cmp	r3, #4
	beq	.L263
	b	.L220
.L262:
	ldr	r1, [fp, #-104]
	ldr	ip, .L270+240
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+232
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-108]
	ldr	ip, .L270+240
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+232
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-112]
	ldr	ip, .L270+240
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+232
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-116]
	ldr	ip, .L270+240
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+232
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-120]
	ldr	ip, .L270+240
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #16
	ldr	r3, .L270+232
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-124]
	ldr	ip, .L270+240
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #16
	ldr	r3, .L270+232
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L264
	ldr	r3, .L270+236
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+232
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L264:
	ldr	r3, .L270+236
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+236
	str	r2, [r3, #0]
	b	.L220
.L263:
	ldr	r1, [fp, #-104]
	ldr	ip, .L270+240
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+244
	add	r3, r3, r2
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-108]
	ldr	ip, .L270+240
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	ldr	r2, .L270+244
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-112]
	ldr	ip, .L270+240
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+244
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-116]
	ldr	ip, .L270+240
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #8
	ldr	r3, .L270+244
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-120]
	ldr	ip, .L270+240
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #16
	ldr	r3, .L270+244
	add	r3, r2, r3
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r1, [fp, #-124]
	ldr	ip, .L270+240
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #16
	ldr	r3, .L270+244
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r1
	mov	r2, ip
	mov	r1, r2
	mov	r2, r3
	bl	__isoc99_sscanf
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L265
	ldr	r3, .L270+248
	ldr	r2, [r3, #0]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r2, r3, #24
	ldr	r3, .L270+244
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy
.L265:
	ldr	r3, .L270+248
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L270+248
	str	r2, [r3, #0]
	b	.L220
.L267:
	mov	r0, r0	@ nop
	b	.L220
.L268:
	mov	r0, r0	@ nop
	b	.L220
.L269:
	mov	r0, r0	@ nop
.L220:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L266
	ldr	r0, [fp, #-40]
	bl	free
	mov	r3, #2
	b	.L219
.L217:
	mov	r3, #3
.L219:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	load_rom_info, .-load_rom_info
	.section	.rodata
	.align	2
.LC44:
	.ascii	"CHECKING_BIOS neogeo_bios = %d\012\000"
	.align	2
.LC45:
	.ascii	"CHECKING_ROM_INFO\000"
	.align	2
.LC46:
	.ascii	"THIS_GAME_NOT_SUPPORTED\000"
	.align	2
.LC47:
	.ascii	"ROM_NOT_FOUND\000"
	.align	2
.LC48:
	.ascii	"ROMINFO_NOT_FOUND\000"
	.align	2
.LC49:
	.ascii	"CHECKING_ROM_INFO OK\000"
	.align	2
.LC50:
	.ascii	"ROMSET_%s_PARENT_%s\012\000"
	.align	2
.LC51:
	.ascii	"ROMSET_%s\012\000"
	.align	2
.LC52:
	.ascii	"GFX_PEN_USAGE (sfix)\000"
	.align	2
.LC53:
	.ascii	"GFX_PEN_USAGE (fix)\000"
	.align	2
.LC54:
	.ascii	"GFX_PEN_USAGE (spr)\000"
	.text
	.align	2
	.global	memory_init
	.type	memory_init, %function
memory_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L328
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+4
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+8
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+16
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+20
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+24
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+28
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+36
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+40
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+48
	mov	r2, #131072
	str	r2, [r3, #0]
	ldr	r3, .L328+52
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+56
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+60
	mov	r2, #131072
	str	r2, [r3, #0]
	ldr	r3, .L328+64
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+68
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+72
	mov	r2, #131072
	str	r2, [r3, #0]
	ldr	r3, .L328+76
	mov	r2, #65536
	str	r2, [r3, #0]
	ldr	r3, .L328+80
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+80
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L328+80
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L328+84
	mov	r2, #2048
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L328+88
	mov	r2, #65536
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L328+92
	mov	r2, #65536
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r2, .L328+96
	ldr	r3, .L328+100
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r3, .L328+100
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmn	r3, #1
	beq	.L273
	ldr	r3, .L328+104
	ldr	r2, [r3, #0]
	ldr	r3, .L328+100
	ldr	r1, [r3, #0]
	ldr	r3, .L328+108
	ldr	r3, [r3, r1, asl #2]
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	mov	r3, #0
	bl	file_open
	str	r0, [fp, #-8]
	bl	file_close
.L273:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L274
	bl	bios_select
	ldr	r3, .L328+100
	ldr	r3, [r3, #0]
	cmn	r3, #1
	bne	.L274
	ldr	r3, .L328+112
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L275
.L274:
	ldr	r0, .L328+116
	bl	puts
	ldr	r0, .L328+120
	bl	load_rom_info
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L276
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	beq	.L279
	cmp	r3, #3
	beq	.L280
	cmp	r3, #1
	bne	.L277
.L278:
	ldr	r0, .L328+124
	bl	puts
	b	.L277
.L279:
	ldr	r0, .L328+128
	bl	puts
	b	.L277
.L280:
	ldr	r0, .L328+132
	bl	puts
	mov	r0, r0	@ nop
.L277:
	ldr	r3, .L328+112
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L275
.L276:
	ldr	r3, .L328+136
	ldr	r2, [r3, #0]
	ldr	r3, .L328+140
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	neo_game_w_h_cb
	ldr	r0, .L328+144
	bl	puts
	ldr	r3, .L328+148
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L281
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, .L328+152
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L328+156
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L328+160
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L282
.L285:
	ldr	r1, .L328+164
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L328+120
	mov	r1, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L283
	ldr	r0, .L328+164
	ldr	r2, [fp, #-12]
	mov	r1, #8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	movne	r2, #0
	moveq	r2, #1
	ldr	r3, .L328+152
	str	r2, [r3, #0]
	ldr	r0, .L328+164
	ldr	r2, [fp, #-12]
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	movne	r2, #0
	moveq	r2, #1
	ldr	r3, .L328+156
	str	r2, [r3, #0]
	ldr	r0, .L328+164
	ldr	r2, [fp, #-12]
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	movne	r2, #0
	moveq	r2, #1
	ldr	r3, .L328+160
	str	r2, [r3, #0]
	b	.L284
.L283:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L282:
	ldr	r1, .L328+164
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L285
.L284:
	ldr	r3, .L328+168
	mov	r0, r3
	ldr	r1, .L328+120
	ldr	r2, .L328+148
	bl	printf
	b	.L286
.L281:
	ldr	r3, .L328+152
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+156
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+160
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L328+172
	mov	r0, r3
	ldr	r1, .L328+120
	bl	printf
.L286:
	ldr	r3, .L328+48
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #5
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L328+80
	str	r2, [r3, #0]
	ldr	r3, .L328+80
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L287
	ldr	r0, .L328+176
	bl	error_memory
	mov	r3, #0
	b	.L275
.L287:
	ldr	r3, .L328+52
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #5
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L328+80
	str	r2, [r3, #4]
	ldr	r3, .L328+80
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L288
	ldr	r0, .L328+180
	bl	error_memory
	mov	r3, #0
	b	.L275
.L288:
	ldr	r3, .L328+56
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #7
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L328+80
	str	r2, [r3, #8]
	ldr	r3, .L328+80
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L289
	ldr	r0, .L328+184
	bl	error_memory
	mov	r3, #0
	b	.L275
.L289:
	bl	load_rom_cpu1
	mov	r3, r0
	cmp	r3, #0
	bne	.L290
	mov	r3, #0
	b	.L275
.L290:
	mov	r0, #0
	bl	load_rom_user1
	mov	r3, r0
	cmp	r3, #0
	bne	.L291
	mov	r3, #0
	b	.L275
.L291:
	bl	load_rom_cpu2
	mov	r3, r0
	cmp	r3, #0
	bne	.L292
	mov	r3, #0
	b	.L275
.L292:
	bl	load_rom_gfx1
	mov	r3, r0
	cmp	r3, #0
	bne	.L293
	mov	r3, #0
	b	.L275
.L293:
	bl	load_rom_gfx2
	mov	r3, r0
	cmp	r3, #0
	bne	.L294
	mov	r3, #0
	b	.L275
.L294:
	bl	load_rom_gfx4
	mov	r3, r0
	cmp	r3, #0
	bne	.L295
	mov	r3, #0
	b	.L275
.L295:
	bl	load_rom_sound1
	mov	r3, r0
	cmp	r3, #0
	bne	.L296
	mov	r3, #0
	b	.L275
.L296:
	bl	load_rom_sound2
	mov	r3, r0
	cmp	r3, #0
	bne	.L297
	mov	r3, #0
	b	.L275
.L297:
	bl	load_rom_gfx3
	mov	r3, r0
	cmp	r3, #0
	bne	.L298
	mov	r3, #0
	b	.L275
.L298:
	ldr	r3, .L328+188
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L299
	ldr	r3, .L328+192
	ldr	r2, [r3, #0]
	ldr	r3, .L328+196
	str	r2, [r3, #0]
	ldr	r3, .L328+192
	mov	r2, #0
	str	r2, [r3, #0]
	b	.L300
.L299:
	ldr	r3, .L328+196
	mov	r2, #0
	str	r2, [r3, #0]
.L300:
	ldr	r3, .L328+200
	ldr	r3, [r3, #0]
	sub	r3, r3, #6
	cmp	r3, #27
	bhi	.L301
	ldr	r2, .L328+204
	mov	r2, r2, asl r3
	cmp	r2, #0
	blt	.L303
	ldr	r2, .L328+208
	mov	r3, r2, asl r3
	cmp	r3, #0
	bge	.L301
.L302:
	ldr	r3, .L328+212
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L304
.L303:
	ldr	r3, .L328+212
	mov	r2, #2
	str	r2, [r3, #0]
	b	.L304
.L301:
	ldr	r3, .L328+212
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
.L304:
	ldr	r3, .L328+216
	ldr	r2, .L328+220
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+228
	str	r2, [r3, #0]
	ldr	r3, .L328+200
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #35
	ldrls	pc, [pc, r3, asl #2]
	b	.L305
.L327:
	.word	.L306
	.word	.L307
	.word	.L308
	.word	.L309
	.word	.L305
	.word	.L310
	.word	.L311
	.word	.L312
	.word	.L305
	.word	.L313
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L305
	.word	.L305
	.word	.L317
	.word	.L318
	.word	.L305
	.word	.L318
	.word	.L305
	.word	.L305
	.word	.L319
	.word	.L305
	.word	.L305
	.word	.L305
	.word	.L305
	.word	.L305
	.word	.L320
	.word	.L321
	.word	.L322
	.word	.L317
	.word	.L318
	.word	.L323
	.word	.L324
	.word	.L325
	.word	.L326
.L306:
	ldr	r3, .L328+216
	ldr	r2, .L328+232
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+236
	str	r2, [r3, #0]
	b	.L305
.L307:
	ldr	r3, .L328+216
	ldr	r2, .L328+220
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+240
	str	r2, [r3, #0]
	b	.L305
.L308:
	bl	mslugx_install_protection
	b	.L305
.L309:
	ldr	r3, .L328+216
	ldr	r2, .L328+244
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+248
	str	r2, [r3, #0]
	b	.L305
.L310:
	ldr	r3, .L328+216
	ldr	r2, .L328+252
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+256
	str	r2, [r3, #0]
	b	.L305
.L311:
	ldr	r3, .L328+216
	ldr	r2, .L328+252
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+260
	str	r2, [r3, #0]
	b	.L305
.L312:
	ldr	r3, .L328+216
	ldr	r2, .L328+264
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+268
	str	r2, [r3, #0]
	b	.L305
.L313:
	ldr	r3, .L328+216
	ldr	r2, .L328+272
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+276
	str	r2, [r3, #0]
	bl	kof2000_AES_protection
	b	.L305
.L314:
	bl	kof2000_AES_protection
	b	.L305
.L317:
	ldr	r3, .L328+216
	ldr	r2, .L328+280
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+284
	str	r2, [r3, #0]
	bl	mslug5_AES_protection
	b	.L305
.L318:
	ldr	r3, .L328+216
	ldr	r2, .L328+280
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+284
	str	r2, [r3, #0]
	b	.L305
.L323:
	ldr	r3, .L328+216
	ldr	r2, .L328+280
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+284
	str	r2, [r3, #0]
	bl	patch_kf2k3pcb
	b	.L305
.L326:
	bl	patch_sbp
	b	.L305
.L325:
	ldr	r3, .L328+216
	ldr	r2, .L328+288
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+292
	str	r2, [r3, #0]
	ldr	r1, .L328+296
	mov	r3, #4096
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L305
.L324:
	ldr	r3, .L328+216
	ldr	r2, .L328+300
	str	r2, [r3, #0]
	ldr	r3, .L328+224
	ldr	r2, .L328+292
	str	r2, [r3, #0]
	ldr	r1, .L328+296
	ldr	r3, .L328+304
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L305
.L319:
	bl	nitd_AES_protection
	b	.L305
.L315:
	bl	zupapa_AES_protection
	b	.L305
.L316:
	bl	sengoku3_AES_protection
	b	.L305
.L320:
	bl	mslug4_AES_protection
	b	.L305
.L321:
	bl	rotd_AES_protection
	b	.L305
.L322:
	bl	matrim_AES_protection
	mov	r0, r0	@ nop
.L305:
	ldr	r3, .L328+308
	ldr	r2, .L328+92
	str	r2, [r3, #0]
	mov	r3, #1
.L275:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L329:
	.align	2
.L328:
	.word	memory_region_cpu1
	.word	memory_region_cpu2
	.word	memory_region_gfx1
	.word	memory_region_gfx2
	.word	memory_region_gfx3
	.word	memory_region_gfx4
	.word	memory_region_sound1
	.word	memory_region_sound2
	.word	memory_region_user1
	.word	memory_region_user3
	.word	memory_length_cpu1
	.word	memory_length_cpu2
	.word	memory_length_gfx1
	.word	memory_length_gfx2
	.word	memory_length_gfx3
	.word	memory_length_gfx4
	.word	memory_length_sound1
	.word	memory_length_sound2
	.word	memory_length_user1
	.word	memory_length_user3
	.word	gfx_pen_usage
	.word	neogeo_memcard
	.word	neogeo_ram
	.word	neogeo_sram16
	.word	.LC44
	.word	neogeo_bios
	.word	bios_zip
	.word	bios_crc
	.word	Loop
	.word	.LC45
	.word	game_name
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	neo_game_w
	.word	neo_game_h
	.word	.LC49
	.word	parent_name
	.word	use_parent_crom
	.word	use_parent_srom
	.word	use_parent_vrom
	.word	MVS_cacheinfo
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	disable_sound
	.word	option_sound_enable
	.word	neogeo_save_sound_flag
	.word	machine_init_type
	.word	202768560
	.word	-267845120
	.word	neogeo_fix_bank_type
	.word	neogeo_protection_r
	.word	neogeo_secondbank_r
	.word	neogeo_protection_w
	.word	neogeo_secondbank_w
	.word	fatfury2_protection_r
	.word	fatfury2_protection_w
	.word	kof98_protection_w
	.word	kof99_protection_r
	.word	kof99_protection_w
	.word	garou_protection_r
	.word	garou_protection_w
	.word	garouh_protection_w
	.word	mslug3_protection_r
	.word	mslug3_protection_w
	.word	kof2000_protection_r
	.word	kof2000_protection_w
	.word	pvc_protection_r
	.word	pvc_protection_w
	.word	vliner_r
	.word	brza_sram_w
	.word	neogeo_ngh
	.word	brza_sram_r
	.word	4097
	.word	neogeo_sram
	.fnend
	.size	memory_init, .-memory_init
	.align	2
	.global	memory_shutdown
	.type	memory_shutdown, %function
memory_shutdown:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	bl	zyh_cache_shutdown
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L331
.L333:
	ldr	r3, .L343
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, asl #2]
	cmp	r3, #0
	beq	.L332
	ldr	r3, .L343
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, asl #2]
	mov	r0, r3
	bl	free
.L332:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L331:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L333
	ldr	r3, .L343+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L334
	ldr	r3, .L343+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L334:
	ldr	r3, .L343+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L335
	ldr	r3, .L343+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L335:
	ldr	r3, .L343+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L336
	ldr	r3, .L343+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L336:
	ldr	r3, .L343+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L337
	ldr	r3, .L343+16
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L337:
	ldr	r3, .L343+20
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L338
	ldr	r3, .L343+20
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L338:
	ldr	r3, .L343+24
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L339
	ldr	r3, .L343+24
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L339:
	ldr	r3, .L343+28
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L340
	ldr	r3, .L343+28
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L340:
	ldr	r3, .L343+32
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L341
	ldr	r3, .L343+32
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L341:
	ldr	r3, .L343+36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L330
	ldr	r3, .L343+36
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
.L330:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L344:
	.align	2
.L343:
	.word	gfx_pen_usage
	.word	memory_region_cpu1
	.word	memory_region_cpu2
	.word	memory_region_gfx1
	.word	memory_region_gfx2
	.word	memory_region_gfx4
	.word	memory_region_sound1
	.word	memory_region_sound2
	.word	memory_region_user1
	.word	memory_region_user3
	.fnend
	.size	memory_shutdown, .-memory_shutdown
	.align	2
	.global	m68000_read_memory_8
	.type	m68000_read_memory_8, %function
m68000_read_memory_8:
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
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L346
	mov	r3, #8
	b	.L347
.L346:
	mov	r3, #0
.L347:
	str	r3, [fp, #-8]
	mov	r2, #255
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mvn	r3, r3
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-16]
	bic	r3, r3, #-16777216
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #20
	cmp	r3, #13
	ldrls	pc, [pc, r3, asl #2]
	b	.L348
.L357:
	.word	.L349
	.word	.L350
	.word	.L351
	.word	.L352
	.word	.L353
	.word	.L348
	.word	.L348
	.word	.L348
	.word	.L354
	.word	.L348
	.word	.L348
	.word	.L348
	.word	.L355
	.word	.L356
.L349:
	ldr	r3, .L367
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	eor	r3, r3, #1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	b	.L358
.L350:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r3, #1
	ldr	r2, .L367+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L358
.L355:
	ldr	r3, .L367+8
	ldr	r2, [r3, #0]
	ldr	r3, .L367+12
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-16]
	and	r3, r1, r3
	eor	r3, r3, #1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	b	.L358
.L356:
	ldr	r3, .L367+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r3, #1
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	b	.L358
.L351:
	ldr	r3, .L367+20
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-16]
	mov	r1, r2, lsr #1
	ldrh	r2, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	blx	r3
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L353:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_paletteram_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L354:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_memcard16_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L352:
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #16
	sub	r3, r3, #48
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L366
.L365:
	.word	.L360
	.word	.L366
	.word	.L361
	.word	.L366
	.word	.L362
	.word	.L366
	.word	.L366
	.word	.L366
	.word	.L363
	.word	.L366
	.word	.L366
	.word	.L366
	.word	.L364
.L360:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_controller1and4_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L361:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_timer_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L362:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_controller2_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L363:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_controller3_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L364:
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	bl	neogeo_video_register_r
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	b	.L358
.L366:
	mov	r0, r0	@ nop
.L348:
	mov	r3, #255
.L358:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L368:
	.align	2
.L367:
	.word	memory_region_cpu1
	.word	neogeo_ram
	.word	memory_region_user1
	.word	bios_amask
	.word	neogeo_sram
	.word	neogeo_protection_r
	.fnend
	.size	m68000_read_memory_8, .-m68000_read_memory_8
	.align	2
	.global	m68000_read_memory_16
	.type	m68000_read_memory_16, %function
m68000_read_memory_16:
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
	bic	r3, r3, #-16777216
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #20
	cmp	r3, #13
	ldrls	pc, [pc, r3, asl #2]
	b	.L370
.L379:
	.word	.L371
	.word	.L372
	.word	.L373
	.word	.L374
	.word	.L375
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L376
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L377
	.word	.L378
.L371:
	ldr	r3, .L389
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L389
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	add	r3, r1, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L380
.L372:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L389+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r1, .L389+4
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L380
.L377:
	ldr	r3, .L389+8
	ldr	r2, [r3, #0]
	ldr	r3, .L389+12
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	and	r3, r1, r3
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L389+8
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r0, r3, #1
	ldr	r3, .L389+12
	ldr	r3, [r3, #0]
	and	r3, r0, r3
	add	r3, r1, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L380
.L378:
	ldr	r3, .L389+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L389+16
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r1, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L380
.L373:
	ldr	r3, .L389+20
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, lsr #1
	mov	r0, r2
	mov	r1, #0
	blx	r3
	mov	r3, r0
	b	.L380
.L375:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_paletteram_r
	mov	r3, r0
	b	.L380
.L376:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_memcard16_r
	mov	r3, r0
	b	.L380
.L374:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	sub	r3, r3, #48
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L388
.L387:
	.word	.L382
	.word	.L388
	.word	.L383
	.word	.L388
	.word	.L384
	.word	.L388
	.word	.L388
	.word	.L388
	.word	.L385
	.word	.L388
	.word	.L388
	.word	.L388
	.word	.L386
.L382:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_controller1and4_r
	mov	r3, r0
	b	.L380
.L383:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_timer_r
	mov	r3, r0
	b	.L380
.L384:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_controller2_r
	mov	r3, r0
	b	.L380
.L385:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_controller3_r
	mov	r3, r0
	b	.L380
.L386:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #1
	mov	r0, r3
	mov	r1, #0
	bl	neogeo_video_register_r
	mov	r3, r0
	b	.L380
.L388:
	mov	r0, r0	@ nop
.L370:
	ldr	r3, .L389+24
.L380:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L390:
	.align	2
.L389:
	.word	memory_region_cpu1
	.word	neogeo_ram
	.word	memory_region_user1
	.word	bios_amask
	.word	neogeo_sram
	.word	neogeo_protection_r
	.word	65535
	.fnend
	.size	m68000_read_memory_16, .-m68000_read_memory_16
	.align	2
	.global	m68000_write_memory_8
	.type	m68000_write_memory_8, %function
m68000_write_memory_8:
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
	mov	r3, r1
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L392
	mov	r3, #8
	b	.L393
.L392:
	mov	r3, #0
.L393:
	str	r3, [fp, #-8]
	mov	r2, #255
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mvn	r3, r3
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-16]
	bic	r3, r3, #-16777216
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #20
	sub	r3, r3, #1
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L391
.L401:
	.word	.L395
	.word	.L396
	.word	.L397
	.word	.L398
	.word	.L391
	.word	.L391
	.word	.L391
	.word	.L399
	.word	.L391
	.word	.L391
	.word	.L391
	.word	.L391
	.word	.L400
.L395:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r3, #1
	ldr	r2, .L410
	ldrb	r1, [fp, #-17]
	strb	r1, [r2, r3]
	b	.L391
.L396:
	ldr	r3, .L410+4
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-16]
	mov	r0, r2, lsr #1
	ldrb	r1, [fp, #-17]	@ zero_extendqisi2
	ldr	r2, [fp, #-8]
	mov	r2, r1, asl r2
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldrh	r2, [fp, #-10]
	blx	r3
	b	.L391
.L398:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_paletteram_w
	b	.L391
.L399:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_memcard16_w
	b	.L391
.L400:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_sram16_w
	b	.L391
.L397:
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #16
	sub	r3, r3, #48
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L409
.L408:
	.word	.L403
	.word	.L409
	.word	.L404
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L405
	.word	.L409
	.word	.L406
	.word	.L409
	.word	.L407
.L403:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	watchdog_reset_w
	b	.L391
.L404:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_z80_w
	b	.L391
.L405:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	io_control_w
	b	.L391
.L406:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	system_control_w
	b	.L391
.L407:
	ldr	r3, [fp, #-16]
	mov	r1, r3, lsr #1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	mov	r3, r2, asl r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_video_register_w
	b	.L391
.L409:
	mov	r0, r0	@ nop
.L391:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L411:
	.align	2
.L410:
	.word	neogeo_ram
	.word	neogeo_protection_w
	.fnend
	.size	m68000_write_memory_8, .-m68000_write_memory_8
	.align	2
	.global	m68000_write_memory_16
	.type	m68000_write_memory_16, %function
m68000_write_memory_16:
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
	mov	r3, r1
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-8]
	bic	r3, r3, #-16777216
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #20
	sub	r3, r3, #1
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L412
.L420:
	.word	.L414
	.word	.L415
	.word	.L416
	.word	.L417
	.word	.L412
	.word	.L412
	.word	.L412
	.word	.L418
	.word	.L412
	.word	.L412
	.word	.L412
	.word	.L412
	.word	.L419
.L414:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldrh	r2, [fp, #-10]	@ movhi
	and	r2, r2, #255
	ldr	r0, .L429
	mov	r1, r2
	mov	r2, r0
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldrh	r2, [fp, #-10]
	mov	r2, r2, lsr #8
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	and	r2, r2, #255
	ldr	r0, .L429
	mov	r1, r2
	mov	r2, r0
	strb	r1, [r2, r3]
	b	.L412
.L415:
	ldr	r3, .L429+4
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	mov	r1, r2, lsr #1
	ldrh	r2, [fp, #-10]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #0
	blx	r3
	b	.L412
.L417:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	neogeo_paletteram_w
	b	.L412
.L418:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	neogeo_memcard16_w
	b	.L412
.L419:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	neogeo_sram16_w
	b	.L412
.L416:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #16
	sub	r3, r3, #48
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L428
.L427:
	.word	.L422
	.word	.L428
	.word	.L423
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L424
	.word	.L428
	.word	.L425
	.word	.L428
	.word	.L426
.L422:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	watchdog_reset_w
	b	.L412
.L423:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	neogeo_z80_w
	b	.L412
.L424:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	io_control_w
	b	.L412
.L425:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	system_control_w
	b	.L412
.L426:
	ldr	r3, [fp, #-8]
	mov	r2, r3, lsr #1
	ldrh	r3, [fp, #-10]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	bl	neogeo_video_register_w
	b	.L412
.L428:
	mov	r0, r0	@ nop
.L412:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L430:
	.align	2
.L429:
	.word	neogeo_ram
	.word	neogeo_protection_w
	.fnend
	.size	m68000_write_memory_16, .-m68000_write_memory_16
	.align	2
	.global	z80_read_memory_8
	.type	z80_read_memory_8, %function
z80_read_memory_8:
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
	ldr	r3, .L432
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L433:
	.align	2
.L432:
	.word	memory_region_cpu2
	.fnend
	.size	z80_read_memory_8, .-z80_read_memory_8
	.align	2
	.global	z80_write_memory_8
	.type	z80_write_memory_8, %function
z80_write_memory_8:
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
	mov	r3, r1
	strb	r3, [fp, #-9]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, .L436
	cmp	r2, r3
	bls	.L434
	ldr	r3, .L436+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r2, [fp, #-9]
	strb	r2, [r3, #0]
.L434:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L437:
	.align	2
.L436:
	.word	63487
	.word	memory_region_cpu2
	.fnend
	.size	z80_write_memory_8, .-z80_write_memory_8
	.align	2
	.global	state_save_memory
	.type	state_save_memory, %function
state_save_memory:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	ldr	r1, .L439+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	ldr	r1, .L439+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	ldr	r1, .L439+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	ldr	r1, .L439+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #65536
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #65536
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L439+20
	ldr	r3, [r3, #0]
	add	r3, r3, #63488
	mov	ip, #2048
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #2048
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	ldr	r1, .L439+24
	mov	r2, r3
	mov	r3, r1
	mov	ip, #65536
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #65536
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	ldr	r1, .L439+28
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L439
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L440:
	.align	2
.L439:
	.word	state_buffer
	.word	neogeo_bios
	.word	neogeo_region
	.word	neogeo_machine_mode
	.word	neogeo_ram
	.word	memory_region_cpu2
	.word	neogeo_sram16
	.word	neogeo_hard_dipsw
	.fnend
	.size	state_save_memory, .-state_save_memory
	.align	2
	.global	state_load_memory
	.type	state_load_memory, %function
state_load_memory:
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
	sub	r3, fp, #8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	sub	r3, fp, #12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	sub	r3, fp, #16
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L446
	mov	r0, r3
	mov	r1, #1
	mov	r2, #65536
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L446+4
	ldr	r3, [r3, #0]
	add	r3, r3, #63488
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2048
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L446+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #65536
	ldr	r3, [fp, #-24]
	bl	fread
	sub	r3, fp, #20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L446+12
	ldr	r3, [r3, #0]
	cmp	r3, #31
	beq	.L442
	ldr	r3, .L446+12
	ldr	r3, [r3, #0]
	cmp	r3, #32
	beq	.L442
	ldr	r3, .L446+12
	ldr	r3, [r3, #0]
	cmp	r3, #33
	beq	.L442
	ldr	r3, .L446+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bne	.L443
	ldr	r3, .L446+20
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bne	.L443
	ldr	r3, .L446+24
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	beq	.L442
.L443:
	ldr	r2, [fp, #-8]
	ldr	r3, .L446+16
	str	r2, [r3, #0]
	ldr	r2, [fp, #-12]
	ldr	r3, .L446+20
	str	r2, [r3, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, .L446+24
	str	r2, [r3, #0]
	ldr	r3, .L446+28
	mov	r2, #1
	str	r2, [r3, #0]
.L442:
	ldr	r3, .L446+12
	ldr	r3, [r3, #0]
	cmp	r3, #31
	beq	.L444
	ldr	r3, .L446+12
	ldr	r3, [r3, #0]
	cmp	r3, #32
	beq	.L444
	ldr	r3, .L446+12
	ldr	r3, [r3, #0]
	cmp	r3, #33
	bne	.L441
.L444:
	ldr	r3, .L446+32
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L446+32
	ldr	r1, [r3, #0]
	ldr	r3, .L446+36
	ldr	r3, [r3, #0]
	add	r3, r3, #1
	mov	r3, r3, asl #17
	add	r3, r1, r3
	mov	ip, #131072
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
.L441:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L447:
	.align	2
.L446:
	.word	neogeo_ram
	.word	memory_region_cpu2
	.word	neogeo_sram16
	.word	machine_init_type
	.word	neogeo_bios
	.word	neogeo_region
	.word	neogeo_machine_mode
	.word	state_reload_bios
	.word	memory_region_user1
	.word	neogeo_hard_dipsw
	.fnend
	.size	state_load_memory, .-state_load_memory
	.align	2
	.global	reload_bios
	.type	reload_bios, %function
reload_bios:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	mov	r0, #1
	bl	load_rom_user1
	mov	r3, r0
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	reload_bios, .-reload_bios
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
