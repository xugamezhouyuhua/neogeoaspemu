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
	.file	"sound.c"
	.local	sound_buffer
	.comm	sound_buffer,5888,4
	.local	sound_info
	.comm	sound_info,24,4
	.global	sound
	.data
	.align	2
	.type	sound, %object
	.size	sound, 4
sound:
	.word	sound_info
	.align	2
	.type	gSoundThread, %object
	.size	gSoundThread, 4
gSoundThread:
	.word	-1
	.comm	gAudioMutex,24,4
	.global	gAudioBuffer
	.bss
	.align	2
	.type	gAudioBuffer, %object
	.size	gAudioBuffer, 4
gAudioBuffer:
	.space	4
	.comm	gAudioBlockLen,4,4
	.global	gReadIDX
	.align	2
	.type	gReadIDX, %object
	.size	gReadIDX, 4
gReadIDX:
	.space	4
	.global	gWriteIDX
	.align	2
	.type	gWriteIDX, %object
	.size	gWriteIDX, 4
gWriteIDX:
	.space	4
	.comm	gExitSoundThread,4,4
	.data
	.align	2
	.type	dspfd, %object
	.size	dspfd, 4
dspfd:
	.word	-1
	.global	pcmfd
	.bss
	.align	2
	.type	pcmfd, %object
	.size	pcmfd, 4
pcmfd:
	.space	4
	.global	lidx
	.align	2
	.type	lidx, %object
	.size	lidx, 4
lidx:
	.space	4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Maybe Error...\000"
	.align	2
.LC1:
	.ascii	"Audio data too fast,discard...\000"
	.text
	.align	2
	.global	SndFillAudioData
	.type	SndFillAudioData, %function
SndFillAudioData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L5
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	ldr	r0, .L5+4
	blx	r3
	ldr	r0, .L5+8
	bl	pthread_mutex_lock
	ldr	r3, .L5+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L5+16
	ldr	r2, [r3, #0]
	ldr	r3, .L5+20
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bge	.L3
	ldr	r3, .L5+20
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L5+20
	ldr	r2, [r3, #0]
	ldr	r3, .L5+16
	str	r2, [r3, #0]
	ldr	r3, .L5+12
	ldr	r2, [r3, #0]
	ldr	r3, .L5+24
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r0, .L5+28
	bl	puts
.L3:
	ldr	r3, .L5+20
	ldr	r3, [r3, #0]
	add	r2, r3, #8
	ldr	r3, .L5+16
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bne	.L4
	ldr	r0, .L5+32
	bl	puts
	b	.L2
.L4:
	ldr	r3, .L5+12
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r3, .L5+16
	ldr	r2, [r3, #0]
	mov	r3, r2, asr #31
	mov	r3, r3, lsr #29
	add	r2, r2, r3
	and	r2, r2, #7
	rsb	r3, r3, r2
	ldr	r2, .L5+24
	ldr	r2, [r2, #0]
	mul	r3, r2, r3
	add	r2, r1, r3
	ldr	r0, .L5+4
	ldr	r3, .L5+24
	ldr	r3, [r3, #0]
	mov	r1, r2
	mov	r2, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L5+16
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L5+16
	str	r2, [r3, #0]
.L2:
	ldr	r0, .L5+8
	bl	pthread_mutex_unlock
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	sound
	.word	sound_buffer
	.word	gAudioMutex
	.word	gAudioBuffer
	.word	gWriteIDX
	.word	gReadIDX
	.word	gAudioBlockLen
	.word	.LC0
	.word	.LC1
	.fnend
	.size	SndFillAudioData, .-SndFillAudioData
	.align	2
	.type	SndReadAudioData, %function
SndReadAudioData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r0, .L12
	bl	pthread_mutex_lock
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L8
	ldr	r3, .L12+8
	ldr	r2, [r3, #0]
	ldr	r3, .L12+12
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bge	.L9
	ldr	r3, .L12+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L12+12
	ldr	r2, [r3, #0]
	ldr	r3, .L12+8
	str	r2, [r3, #0]
	ldr	r3, .L12+4
	ldr	r2, [r3, #0]
	ldr	r3, .L12+16
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r0, .L12+20
	bl	puts
.L9:
	ldr	r3, .L12+12
	ldr	r2, [r3, #0]
	ldr	r3, .L12+8
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bne	.L10
	ldr	r0, .L12
	bl	pthread_mutex_unlock
	mov	r0, #1000
	bl	usleep
	b	.L7
.L10:
	ldr	r3, .L12+12
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L12+12
	str	r2, [r3, #0]
.L8:
	ldr	r0, .L12
	bl	pthread_mutex_unlock
.L7:
	ldmfd	sp!, {fp, pc}
.L13:
	.align	2
.L12:
	.word	gAudioMutex
	.word	gAudioBuffer
	.word	gWriteIDX
	.word	gReadIDX
	.word	gAudioBlockLen
	.word	.LC0
	.fnend
	.size	SndReadAudioData, .-SndReadAudioData
	.align	2
	.type	sound_update_thread, %function
sound_update_thread:
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
	ldr	r3, .L18
	mov	r2, #0
	str	r2, [r3, #0]
	b	.L15
.L16:
	bl	SndReadAudioData
.L15:
	ldr	r3, .L18
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L18+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L18+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	free
	ldr	r3, .L18+4
	mov	r2, #0
	str	r2, [r3, #0]
.L17:
	ldr	r0, .L18+8
	bl	pthread_mutex_destroy
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L19:
	.align	2
.L18:
	.word	gExitSoundThread
	.word	gAudioBuffer
	.word	gAudioMutex
	.fnend
	.size	sound_update_thread, .-sound_update_thread
	.align	2
	.global	sound_thread_enable
	.type	sound_thread_enable, %function
sound_thread_enable:
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
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	sound_thread_enable, .-sound_thread_enable
	.align	2
	.global	sound_thread_set_volume
	.type	sound_thread_set_volume, %function
sound_thread_set_volume:
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
	.size	sound_thread_set_volume, .-sound_thread_set_volume
	.align	2
	.global	sound_thread_start
	.type	sound_thread_start, %function
sound_thread_start:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L23
	mov	r2, #2944
	str	r2, [r3, #0]
	ldr	r3, .L23
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L23+4
	str	r2, [r3, #0]
	ldr	r3, .L23+4
	ldr	r2, [r3, #0]
	ldr	r3, .L23
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L23+8
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L23+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L23+16
	mov	r2, #5888
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r0, .L23+20
	mov	r1, #0
	bl	pthread_mutex_init
	ldr	r0, .L23+24
	mov	r1, #0
	ldr	r2, .L23+28
	mov	r3, #0
	bl	pthread_create
	mov	r3, #1
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L24:
	.align	2
.L23:
	.word	gAudioBlockLen
	.word	gAudioBuffer
	.word	gReadIDX
	.word	gWriteIDX
	.word	sound_buffer
	.word	gAudioMutex
	.word	gSoundThread
	.word	sound_update_thread
	.fnend
	.size	sound_thread_start, .-sound_thread_start
	.align	2
	.global	sound_thread_stop
	.type	sound_thread_stop, %function
sound_thread_stop:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L26
	mov	r2, #1
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L27:
	.align	2
.L26:
	.word	gExitSoundThread
	.fnend
	.size	sound_thread_stop, .-sound_thread_stop
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
