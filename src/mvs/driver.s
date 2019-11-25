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
	.file	"driver.c"
	.comm	neogeo_driver_type,4,4
	.comm	neogeo_raster_enable,4,4
	.comm	neogeo_ngh,2,2
	.comm	auto_animation_speed,1,1
	.comm	auto_animation_disabled,1,1
	.comm	auto_animation_counter,1,1
	.global	MVS_cacheinfo
	.section	.rodata
	.align	2
.LC0:
	.ascii	"aof2a\000"
	.align	2
.LC1:
	.ascii	"aof2\000"
	.align	2
.LC2:
	.ascii	"fatfursa\000"
	.align	2
.LC3:
	.ascii	"fatfursp\000"
	.align	2
.LC4:
	.ascii	"kof95h\000"
	.align	2
.LC5:
	.ascii	"kof95\000"
	.align	2
.LC6:
	.ascii	"samsho3h\000"
	.align	2
.LC7:
	.ascii	"samsho3\000"
	.align	2
.LC8:
	.ascii	"fswords\000"
	.align	2
.LC9:
	.ascii	"aof3k\000"
	.align	2
.LC10:
	.ascii	"aof3\000"
	.align	2
.LC11:
	.ascii	"kof96ae\000"
	.align	2
.LC12:
	.ascii	"kof96\000"
	.align	2
.LC13:
	.ascii	"kof96cn\000"
	.align	2
.LC14:
	.ascii	"kof96h\000"
	.align	2
.LC15:
	.ascii	"kof96ep\000"
	.align	2
.LC16:
	.ascii	"kof96pm\000"
	.align	2
.LC17:
	.ascii	"kof96sp\000"
	.align	2
.LC18:
	.ascii	"kizuna\000"
	.align	2
.LC19:
	.ascii	"savagere\000"
	.align	2
.LC20:
	.ascii	"kof97h\000"
	.align	2
.LC21:
	.ascii	"kof97\000"
	.align	2
.LC22:
	.ascii	"kof97c\000"
	.align	2
.LC23:
	.ascii	"kof97cn\000"
	.align	2
.LC24:
	.ascii	"kof97d\000"
	.align	2
.LC25:
	.ascii	"kof97k\000"
	.align	2
.LC26:
	.ascii	"kof97pls\000"
	.align	2
.LC27:
	.ascii	"kof97pla\000"
	.align	2
.LC28:
	.ascii	"kof97prc\000"
	.align	2
.LC29:
	.ascii	"kof97ps\000"
	.align	2
.LC30:
	.ascii	"kof97yk\000"
	.align	2
.LC31:
	.ascii	"kof97xt\000"
	.align	2
.LC32:
	.ascii	"kog\000"
	.align	2
.LC33:
	.ascii	"kogd\000"
	.align	2
.LC34:
	.ascii	"kof97oro\000"
	.align	2
.LC35:
	.ascii	"lastbladh\000"
	.align	2
.LC36:
	.ascii	"lastblad\000"
	.align	2
.LC37:
	.ascii	"lastsold\000"
	.align	2
.LC38:
	.ascii	"shocktroa\000"
	.align	2
.LC39:
	.ascii	"shocktro\000"
	.align	2
.LC40:
	.ascii	"rbff2h\000"
	.align	2
.LC41:
	.ascii	"rbff2\000"
	.align	2
.LC42:
	.ascii	"rbff2k\000"
	.align	2
.LC43:
	.ascii	"kof98a\000"
	.align	2
.LC44:
	.ascii	"kof98\000"
	.align	2
.LC45:
	.ascii	"kof98c\000"
	.align	2
.LC46:
	.ascii	"kof98cn\000"
	.align	2
.LC47:
	.ascii	"kof98evo\000"
	.align	2
.LC48:
	.ascii	"kof98k\000"
	.align	2
.LC49:
	.ascii	"kof98ka\000"
	.align	2
.LC50:
	.ascii	"kof98h\000"
	.align	2
.LC51:
	.ascii	"kof98ae\000"
	.align	2
.LC52:
	.ascii	"breakrev\000"
	.align	2
.LC53:
	.ascii	"breakers\000"
	.align	2
.LC54:
	.ascii	"lans2004\000"
	.align	2
.LC55:
	.ascii	"shocktr2\000"
	.align	2
.LC56:
	.ascii	"kof99h\000"
	.align	2
.LC57:
	.ascii	"kof99\000"
	.align	2
.LC58:
	.ascii	"kof99e\000"
	.align	2
.LC59:
	.ascii	"kof99k\000"
	.align	2
.LC60:
	.ascii	"kof99p\000"
	.align	2
.LC61:
	.ascii	"kof99ae\000"
	.align	2
.LC62:
	.ascii	"garouh\000"
	.align	2
.LC63:
	.ascii	"garou\000"
	.align	2
.LC64:
	.ascii	"garoubl\000"
	.align	2
.LC65:
	.ascii	"garoup\000"
	.align	2
.LC66:
	.ascii	"mslugxc1\000"
	.align	2
.LC67:
	.ascii	"mslugx\000"
	.align	2
.LC68:
	.ascii	"mslug3h\000"
	.align	2
.LC69:
	.ascii	"mslug3\000"
	.align	2
.LC70:
	.ascii	"mslug3b6\000"
	.align	2
.LC71:
	.ascii	"kof2000n\000"
	.align	2
.LC72:
	.ascii	"kof2000\000"
	.align	2
.LC73:
	.ascii	"kof2kcn\000"
	.align	2
.LC74:
	.ascii	"kof2kps2\000"
	.align	2
.LC75:
	.ascii	"kof2001h\000"
	.align	2
.LC76:
	.ascii	"kof2001\000"
	.align	2
.LC77:
	.ascii	"kf2k1pls\000"
	.align	2
.LC78:
	.ascii	"kf2k1pa\000"
	.align	2
.LC79:
	.ascii	"kof2k1bs\000"
	.align	2
.LC80:
	.ascii	"cthd2003\000"
	.align	2
.LC81:
	.ascii	"cthd2k3a\000"
	.align	2
.LC82:
	.ascii	"ct2k3sp\000"
	.align	2
.LC83:
	.ascii	"ct2k3sa\000"
	.align	2
.LC84:
	.ascii	"mslug4h\000"
	.align	2
.LC85:
	.ascii	"mslug4\000"
	.align	2
.LC86:
	.ascii	"ms4plus\000"
	.align	2
.LC87:
	.ascii	"kof2002b\000"
	.align	2
.LC88:
	.ascii	"kof2002\000"
	.align	2
.LC89:
	.ascii	"kof2k2cn\000"
	.align	2
.LC90:
	.ascii	"kf2k2pls\000"
	.align	2
.LC91:
	.ascii	"kf2k2pla\000"
	.align	2
.LC92:
	.ascii	"kf2k2plb\000"
	.align	2
.LC93:
	.ascii	"kf2k2plc\000"
	.align	2
.LC94:
	.ascii	"kf2k2mp\000"
	.align	2
.LC95:
	.ascii	"kf2k2mp2\000"
	.align	2
.LC96:
	.ascii	"kf2k2ps2\000"
	.align	2
.LC97:
	.ascii	"kf2k2ur\000"
	.align	2
.LC98:
	.ascii	"kof2k2tg3\000"
	.align	2
.LC99:
	.ascii	"matrimbl\000"
	.align	2
.LC100:
	.ascii	"matrim\000"
	.align	2
.LC101:
	.ascii	"mslug5b\000"
	.align	2
.LC102:
	.ascii	"mslug5\000"
	.align	2
.LC103:
	.ascii	"mslug5h\000"
	.align	2
.LC104:
	.ascii	"ms5plus\000"
	.align	2
.LC105:
	.ascii	"svcpcba\000"
	.align	2
.LC106:
	.ascii	"svcpcb\000"
	.align	2
.LC107:
	.ascii	"samsho5h\000"
	.align	2
.LC108:
	.ascii	"samsho5\000"
	.align	2
.LC109:
	.ascii	"samsho5b\000"
	.align	2
.LC110:
	.ascii	"samsh5sph\000"
	.align	2
.LC111:
	.ascii	"samsh5sp\000"
	.align	2
.LC112:
	.ascii	"samsh5spho\000"
	.align	2
.LC113:
	.ascii	"kof2k4se\000"
	.align	2
.LC114:
	.ascii	"kf2k4pls\000"
	.align	2
.LC115:
	.ascii	"kf10thep\000"
	.align	2
.LC116:
	.ascii	"kof10th\000"
	.align	2
.LC117:
	.ascii	"kf2k5uni\000"
	.align	2
.LC118:
	.ascii	"svcplus\000"
	.align	2
.LC119:
	.ascii	"svcboot\000"
	.align	2
.LC120:
	.ascii	"svcplusa\000"
	.align	2
.LC121:
	.ascii	"svcsplus\000"
	.align	2
.LC122:
	.ascii	"svcps2\000"
	.align	2
.LC123:
	.ascii	"svc\000"
	.align	2
.LC124:
	.ascii	"kf2k3bla\000"
	.align	2
.LC125:
	.ascii	"kf2k3bl\000"
	.align	2
.LC126:
	.ascii	"kf2k3pl\000"
	.align	2
.LC127:
	.ascii	"kf2k3upl\000"
	.align	2
.LC128:
	.ascii	"kf2k3ps2\000"
	.align	2
.LC129:
	.ascii	"kof2003\000"
	.align	2
.LC130:
	.ascii	"ironclado\000"
	.align	2
.LC131:
	.ascii	"ironclad\000"
	.align	2
.LC132:
	.ascii	"jockeygpa\000"
	.align	2
.LC133:
	.ascii	"jockeygp\000"
	.align	2
.LC134:
	.ascii	"rbff1a\000"
	.align	2
.LC135:
	.ascii	"rbff1\000"
	.align	2
.LC136:
	.ascii	"rbffspeck\000"
	.align	2
.LC137:
	.ascii	"rbffspec\000"
	.align	2
.LC138:
	.ascii	"samsho2k\000"
	.align	2
.LC139:
	.ascii	"samsho2\000"
	.align	2
.LC140:
	.ascii	"samsho2k2\000"
	.align	2
.LC141:
	.ascii	"samsho4k\000"
	.align	2
.LC142:
	.ascii	"samsho4\000"
	.data
	.align	2
	.type	MVS_cacheinfo, %object
	.size	MVS_cacheinfo, 2120
MVS_cacheinfo:
	.word	.LC0
	.word	.LC1
	.word	0
	.word	0
	.word	0
	.word	.LC2
	.word	.LC3
	.word	0
	.word	0
	.word	0
	.word	.LC4
	.word	.LC5
	.word	0
	.word	0
	.word	0
	.word	.LC6
	.word	.LC7
	.word	0
	.word	0
	.word	0
	.word	.LC8
	.word	.LC7
	.word	0
	.word	0
	.word	0
	.word	.LC9
	.word	.LC10
	.word	0
	.word	0
	.word	0
	.word	.LC11
	.word	.LC12
	.word	1
	.word	1
	.word	1
	.word	.LC13
	.word	.LC12
	.word	1
	.word	1
	.word	0
	.word	.LC14
	.word	.LC12
	.word	0
	.word	0
	.word	0
	.word	.LC15
	.word	.LC12
	.word	0
	.word	0
	.word	0
	.word	.LC16
	.word	.LC12
	.word	0
	.word	0
	.word	0
	.word	.LC17
	.word	.LC12
	.word	1
	.word	1
	.word	0
	.word	.LC18
	.word	.LC19
	.word	1
	.word	1
	.word	1
	.word	.LC20
	.word	.LC21
	.word	0
	.word	0
	.word	0
	.word	.LC22
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC23
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC24
	.word	.LC21
	.word	0
	.word	0
	.word	0
	.word	.LC25
	.word	.LC21
	.word	0
	.word	0
	.word	0
	.word	.LC26
	.word	.LC21
	.word	0
	.word	0
	.word	0
	.word	.LC27
	.word	.LC21
	.word	0
	.word	1
	.word	0
	.word	.LC28
	.word	.LC21
	.word	0
	.word	0
	.word	0
	.word	.LC29
	.word	.LC21
	.word	1
	.word	0
	.word	0
	.word	.LC30
	.word	.LC21
	.word	1
	.word	1
	.word	1
	.word	.LC31
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC32
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC33
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC34
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC35
	.word	.LC36
	.word	0
	.word	0
	.word	0
	.word	.LC37
	.word	.LC36
	.word	0
	.word	0
	.word	0
	.word	.LC38
	.word	.LC39
	.word	0
	.word	0
	.word	0
	.word	.LC40
	.word	.LC41
	.word	0
	.word	0
	.word	0
	.word	.LC42
	.word	.LC41
	.word	0
	.word	0
	.word	0
	.word	.LC43
	.word	.LC44
	.word	0
	.word	0
	.word	0
	.word	.LC45
	.word	.LC44
	.word	1
	.word	1
	.word	0
	.word	.LC46
	.word	.LC44
	.word	1
	.word	1
	.word	0
	.word	.LC47
	.word	.LC44
	.word	1
	.word	0
	.word	0
	.word	.LC48
	.word	.LC44
	.word	0
	.word	0
	.word	0
	.word	.LC49
	.word	.LC44
	.word	0
	.word	0
	.word	0
	.word	.LC50
	.word	.LC44
	.word	0
	.word	0
	.word	0
	.word	.LC51
	.word	.LC44
	.word	1
	.word	1
	.word	1
	.word	.LC52
	.word	.LC53
	.word	1
	.word	1
	.word	1
	.word	.LC54
	.word	.LC55
	.word	1
	.word	1
	.word	1
	.word	.LC56
	.word	.LC57
	.word	0
	.word	0
	.word	0
	.word	.LC58
	.word	.LC57
	.word	0
	.word	0
	.word	0
	.word	.LC59
	.word	.LC57
	.word	0
	.word	0
	.word	0
	.word	.LC60
	.word	.LC57
	.word	1
	.word	1
	.word	0
	.word	.LC61
	.word	.LC57
	.word	1
	.word	1
	.word	1
	.word	.LC62
	.word	.LC63
	.word	0
	.word	0
	.word	0
	.word	.LC64
	.word	.LC65
	.word	0
	.word	1
	.word	1
	.word	.LC66
	.word	.LC67
	.word	0
	.word	0
	.word	0
	.word	.LC68
	.word	.LC69
	.word	0
	.word	0
	.word	0
	.word	.LC70
	.word	.LC69
	.word	0
	.word	1
	.word	0
	.word	.LC71
	.word	.LC72
	.word	0
	.word	0
	.word	0
	.word	.LC73
	.word	.LC72
	.word	1
	.word	1
	.word	0
	.word	.LC74
	.word	.LC72
	.word	1
	.word	1
	.word	0
	.word	.LC75
	.word	.LC76
	.word	0
	.word	0
	.word	0
	.word	.LC77
	.word	.LC76
	.word	0
	.word	0
	.word	0
	.word	.LC78
	.word	.LC76
	.word	0
	.word	0
	.word	0
	.word	.LC79
	.word	.LC76
	.word	1
	.word	1
	.word	0
	.word	.LC80
	.word	.LC76
	.word	1
	.word	1
	.word	0
	.word	.LC81
	.word	.LC76
	.word	1
	.word	1
	.word	1
	.word	.LC82
	.word	.LC76
	.word	1
	.word	1
	.word	0
	.word	.LC83
	.word	.LC76
	.word	1
	.word	1
	.word	0
	.word	.LC84
	.word	.LC85
	.word	0
	.word	0
	.word	0
	.word	.LC86
	.word	.LC85
	.word	0
	.word	0
	.word	0
	.word	.LC87
	.word	.LC88
	.word	1
	.word	0
	.word	0
	.word	.LC89
	.word	.LC88
	.word	1
	.word	1
	.word	0
	.word	.LC90
	.word	.LC88
	.word	0
	.word	0
	.word	0
	.word	.LC91
	.word	.LC88
	.word	0
	.word	0
	.word	0
	.word	.LC92
	.word	.LC88
	.word	0
	.word	0
	.word	0
	.word	.LC93
	.word	.LC88
	.word	0
	.word	1
	.word	0
	.word	.LC94
	.word	.LC88
	.word	0
	.word	1
	.word	0
	.word	.LC95
	.word	.LC88
	.word	0
	.word	1
	.word	0
	.word	.LC96
	.word	.LC88
	.word	1
	.word	1
	.word	1
	.word	.LC97
	.word	.LC88
	.word	1
	.word	1
	.word	1
	.word	.LC98
	.word	.LC88
	.word	1
	.word	1
	.word	1
	.word	.LC99
	.word	.LC100
	.word	0
	.word	0
	.word	1
	.word	.LC101
	.word	.LC102
	.word	0
	.word	0
	.word	0
	.word	.LC103
	.word	.LC102
	.word	0
	.word	0
	.word	0
	.word	.LC104
	.word	.LC102
	.word	0
	.word	1
	.word	0
	.word	.LC105
	.word	.LC106
	.word	0
	.word	0
	.word	0
	.word	.LC107
	.word	.LC108
	.word	0
	.word	0
	.word	0
	.word	.LC109
	.word	.LC108
	.word	1
	.word	1
	.word	1
	.word	.LC110
	.word	.LC111
	.word	0
	.word	0
	.word	0
	.word	.LC112
	.word	.LC111
	.word	0
	.word	0
	.word	0
	.word	.LC113
	.word	.LC88
	.word	1
	.word	1
	.word	1
	.word	.LC114
	.word	.LC113
	.word	0
	.word	1
	.word	0
	.word	.LC115
	.word	.LC116
	.word	1
	.word	1
	.word	0
	.word	.LC117
	.word	.LC116
	.word	0
	.word	0
	.word	0
	.word	.LC118
	.word	.LC119
	.word	0
	.word	1
	.word	0
	.word	.LC120
	.word	.LC119
	.word	0
	.word	0
	.word	0
	.word	.LC121
	.word	.LC119
	.word	0
	.word	1
	.word	0
	.word	.LC122
	.word	.LC123
	.word	1
	.word	1
	.word	1
	.word	.LC124
	.word	.LC125
	.word	0
	.word	0
	.word	0
	.word	.LC126
	.word	.LC125
	.word	0
	.word	1
	.word	0
	.word	.LC127
	.word	.LC125
	.word	0
	.word	1
	.word	0
	.word	.LC128
	.word	.LC129
	.word	1
	.word	1
	.word	1
	.word	.LC130
	.word	.LC131
	.word	0
	.word	0
	.word	0
	.word	.LC132
	.word	.LC133
	.word	0
	.word	0
	.word	0
	.word	.LC134
	.word	.LC135
	.word	0
	.word	0
	.word	0
	.word	.LC136
	.word	.LC137
	.word	0
	.word	0
	.word	0
	.word	.LC138
	.word	.LC139
	.word	0
	.word	0
	.word	0
	.word	.LC140
	.word	.LC139
	.word	0
	.word	0
	.word	0
	.word	.LC141
	.word	.LC142
	.word	0
	.word	0
	.word	0
	.word	.LC38
	.word	.LC39
	.word	0
	.word	0
	.word	0
	.word	0
	.space	16
	.local	raster_enable
	.comm	raster_enable,4,4
	.local	raster_counter
	.comm	raster_counter,2,2
	.local	scanline_read
	.comm	scanline_read,4,4
	.local	busy
	.comm	busy,4,4
	.local	display_position_interrupt_counter
	.comm	display_position_interrupt_counter,4,4
	.local	display_position_interrupt_control
	.comm	display_position_interrupt_control,4,4
	.local	display_counter
	.comm	display_counter,4,4
	.local	display_position_interrupt_pending
	.comm	display_position_interrupt_pending,4,4
	.local	vblank_interrupt_pending
	.comm	vblank_interrupt_pending,4,4
	.local	auto_animation_frame_counter
	.comm	auto_animation_frame_counter,1,1
	.local	sound_code
	.comm	sound_code,4,4
	.local	result_code
	.comm	result_code,4,4
	.local	pending_command
	.comm	pending_command,4,4
	.local	main_cpu_vector_table_source
	.comm	main_cpu_vector_table_source,1,1
	.local	controller_select
	.comm	controller_select,1,1
	.local	save_ram_unlocked
	.comm	save_ram_unlocked,1,1
	.local	m68k_second_bank
	.comm	m68k_second_bank,4,4
	.local	z80_bank
	.comm	z80_bank,16,4
	.local	neogeo_cpu1_second_bank
	.comm	neogeo_cpu1_second_bank,4,4
	.local	neogeo_game_vectors
	.comm	neogeo_game_vectors,128,4
	.local	neogeo_vectors
	.comm	neogeo_vectors,8,4
	.align	1
	.type	neogeo_rng, %object
	.size	neogeo_rng, 2
neogeo_rng:
	.short	9029
	.text
	.align	2
	.type	neogeo_set_cpu1_second_bank, %function
neogeo_set_cpu1_second_bank:
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
	ldr	r3, .L3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	beq	.L1
	ldr	r3, .L3
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r3, .L3+4
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	sub	r3, r3, #2097152
	mov	r2, r3
	ldr	r3, .L3+8
	str	r2, [r3, #0]
	ldr	r3, .L3+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, .L3+12
	mov	r1, #2097152
	ldr	r2, .L3+16
	bl	C68k_Set_Fetch
.L1:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L4:
	.align	2
.L3:
	.word	m68k_second_bank
	.word	memory_region_cpu1
	.word	neogeo_cpu1_second_bank
	.word	C68K
	.word	3145727
	.fnend
	.size	neogeo_set_cpu1_second_bank, .-neogeo_set_cpu1_second_bank
	.align	2
	.type	neogeo_set_cpu2_bank, %function
neogeo_set_cpu2_bank:
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
	ldr	r3, .L12
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L5
	ldr	r3, .L12
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-12]
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L5
.L11:
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
.L7:
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	add	r2, r3, #32768
	ldr	r3, .L12+4
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #65536
	add	r3, r1, r3
	mov	ip, #16384
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	b	.L5
.L8:
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	add	r2, r3, #49152
	ldr	r3, .L12+4
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #65536
	add	r3, r1, r3
	mov	ip, #8192
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	b	.L5
.L9:
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	add	r2, r3, #57344
	ldr	r3, .L12+4
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #65536
	add	r3, r1, r3
	mov	ip, #4096
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	b	.L5
.L10:
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	add	r2, r3, #61440
	ldr	r3, .L12+4
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #65536
	add	r3, r1, r3
	mov	ip, #2048
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	mov	r0, r0	@ nop
.L5:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L13:
	.align	2
.L12:
	.word	z80_bank
	.word	memory_region_cpu2
	.fnend
	.size	neogeo_set_cpu2_bank, .-neogeo_set_cpu2_bank
	.align	2
	.global	neogeo_driver_init
	.type	neogeo_driver_init, %function
neogeo_driver_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	ldr	r2, .L17+4
	mov	ip, #128
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L17+8
	ldr	r2, [r3, #0]
	ldr	r3, .L17+12
	str	r2, [r3, #0]
	ldr	r3, .L17+12
	ldr	r2, .L17+4
	str	r2, [r3, #4]
	ldr	r3, .L17+16
	mvn	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L17+20
	mvn	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L17+20
	mvn	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L17+20
	mvn	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L17+20
	mvn	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L17+24
	ldr	r3, [r3, #0]
	cmp	r3, #1048576
	bls	.L15
	mov	r0, #1048576
	bl	neogeo_set_cpu1_second_bank
	b	.L16
.L15:
	mov	r0, #0
	bl	neogeo_set_cpu1_second_bank
.L16:
	mov	r0, #0
	mov	r1, #32768
	bl	neogeo_set_cpu2_bank
	mov	r0, #1
	mov	r1, #49152
	bl	neogeo_set_cpu2_bank
	mov	r0, #2
	mov	r1, #57344
	bl	neogeo_set_cpu2_bank
	mov	r0, #3
	mov	r1, #61440
	bl	neogeo_set_cpu2_bank
	bl	m68000_init
	bl	z80_init
	ldmfd	sp!, {fp, pc}
.L18:
	.align	2
.L17:
	.word	memory_region_cpu1
	.word	neogeo_game_vectors
	.word	memory_region_user1
	.word	neogeo_vectors
	.word	m68k_second_bank
	.word	z80_bank
	.word	memory_length_cpu1
	.fnend
	.size	neogeo_driver_init, .-neogeo_driver_init
	.align	2
	.global	neogeo_driver_reset
	.type	neogeo_driver_reset, %function
neogeo_driver_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r0, #0
	bl	time
	mov	r3, r0
	str	r3, [fp, #-12]
	sub	r3, fp, #12
	mov	r0, r3
	bl	localtime
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #0]
	ldr	r3, .L22
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, .L22
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #8]
	ldr	r3, .L22
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, .L22
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #24]
	ldr	r3, .L22
	str	r2, [r3, #24]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #16]
	add	r2, r3, #1
	ldr	r3, .L22
	str	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #20]
	ldr	r3, .L22+4
	smull	r1, r3, r2, r3
	mov	r1, r3, asr #5
	mov	r3, r2, asr #31
	rsb	r3, r3, r1
	mov	r1, #100
	mul	r3, r1, r3
	rsb	r3, r3, r2
	ldr	r2, .L22
	str	r3, [r2, #20]
	ldr	r3, .L22+8
	mov	r2, #65536
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L22+12
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L22+16
	ldr	r3, [r3, #0]
	mov	ip, #128
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r1, .L22+20
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	watchdog_reset_w
	ldr	r1, .L22+24
	mov	r3, #496
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, .L22+28
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+36
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+40
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+48
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+52
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+56
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L22+60
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r1, .L22+64
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r1, .L22+68
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r1, .L22+72
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r1, .L22+76
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r1, .L22+80
	ldr	r3, .L22+84
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	ldr	r1, .L22+88
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r1, .L22+92
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	bl	neogeo_reset_driver_type
	ldr	r3, .L22+96
	ldr	r3, [r3, #0]
	cmp	r3, #31
	beq	.L20
	ldr	r3, .L22+96
	ldr	r3, [r3, #0]
	cmp	r3, #32
	bne	.L21
.L20:
	ldr	r3, .L22+100
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, .L22+100
	ldr	r1, [r3, #0]
	ldr	r3, .L22+104
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
.L21:
	bl	m68000_reset
	bl	z80_reset
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L23:
	.align	2
.L22:
	.word	pd4990a
	.word	1374389535
	.word	neogeo_ram
	.word	memory_region_cpu1
	.word	neogeo_vectors
	.word	main_cpu_vector_table_source
	.word	raster_counter
	.word	scanline_read
	.word	display_position_interrupt_counter
	.word	display_position_interrupt_control
	.word	display_counter
	.word	vblank_interrupt_pending
	.word	display_position_interrupt_pending
	.word	sound_code
	.word	result_code
	.word	pending_command
	.word	auto_animation_frame_counter
	.word	auto_animation_speed
	.word	auto_animation_disabled
	.word	auto_animation_counter
	.word	neogeo_rng
	.word	9029
	.word	save_ram_unlocked
	.word	controller_select
	.word	machine_init_type
	.word	memory_region_user1
	.word	neogeo_hard_dipsw
	.fnend
	.size	neogeo_driver_reset, .-neogeo_driver_reset
	.align	2
	.global	neogeo_reset_driver_type
	.type	neogeo_reset_driver_type, %function
neogeo_reset_driver_type:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L31
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L31+4
	ldrh	r3, [r3, #0]
	cmp	r3, #3
	beq	.L25
	ldr	r3, .L31+4
	ldrh	r3, [r3, #0]
	cmp	r3, #56
	beq	.L25
	ldr	r3, .L31+4
	ldrh	r3, [r3, #0]
	cmp	r3, #98
	beq	.L25
	ldr	r3, .L31+4
	ldrh	r2, [r3, #0]
	ldr	r3, .L31+8
	cmp	r2, r3
	bne	.L26
.L25:
	ldr	r3, .L31+12
	mov	r2, #1
	str	r2, [r3, #0]
.L26:
	ldr	r3, .L31+12
	ldr	r2, [r3, #0]
	ldr	r3, .L31+16
	str	r2, [r3, #0]
	ldr	r3, .L31+20
	ldr	r3, [r3, #0]
	cmp	r3, #12
	ble	.L27
	ldr	r3, .L31+20
	ldr	r3, [r3, #0]
	cmp	r3, #23
	bgt	.L27
	ldr	r3, .L31+16
	mov	r2, #1
	str	r2, [r3, #0]
.L27:
	ldr	r3, .L31+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L28
	ldr	r3, .L31+4
	ldrh	r2, [r3, #0]
	ldr	r3, .L31+24
	cmp	r2, r3
	bne	.L29
	ldr	r3, .L31
	mov	r2, #1
	str	r2, [r3, #0]
.L29:
	ldr	r3, .L31+28
	mov	r2, #0
	str	r2, [r3, #0]
	b	.L30
.L28:
	ldr	r3, .L31+28
	mov	r2, #1
	str	r2, [r3, #0]
.L30:
	bl	timer_set_update_handler
	ldmfd	sp!, {fp, pc}
.L32:
	.align	2
.L31:
	.word	busy
	.word	neogeo_ngh
	.word	531
	.word	neogeo_raster_enable
	.word	raster_enable
	.word	neogeo_bios
	.word	515
	.word	neogeo_driver_type
	.fnend
	.size	neogeo_reset_driver_type, .-neogeo_reset_driver_type
	.align	2
	.type	adjust_display_position_interrupt, %function
adjust_display_position_interrupt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L35
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L33
	ldr	r3, .L35
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L35+4
	umull	r1, r3, r2, r3
	mov	r3, r3, lsr #8
	mov	r2, r3
	ldr	r3, .L35+8
	str	r2, [r3, #0]
.L33:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L36:
	.align	2
.L35:
	.word	display_counter
	.word	-1431655765
	.word	display_position_interrupt_counter
	.fnend
	.size	adjust_display_position_interrupt, .-adjust_display_position_interrupt
	.align	2
	.type	update_interrupts, %function
update_interrupts:
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
	str	r3, [fp, #-8]
	ldr	r3, .L42
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L38
	mov	r3, #1
	str	r3, [fp, #-8]
.L38:
	ldr	r3, .L42+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L39
	mov	r3, #2
	str	r3, [fp, #-8]
.L39:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L40
	ldr	r0, [fp, #-8]
	mov	r1, #1
	bl	m68000_set_irq_line
	b	.L37
.L40:
	mov	r0, #7
	mov	r1, #0
	bl	m68000_set_irq_line
.L37:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L43:
	.align	2
.L42:
	.word	vblank_interrupt_pending
	.word	display_position_interrupt_pending
	.fnend
	.size	update_interrupts, .-update_interrupts
	.align	2
	.global	neogeo_vblank_interrupt
	.type	neogeo_vblank_interrupt, %function
neogeo_vblank_interrupt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r1, .L47
	mov	r3, #496
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	bl	pd4990a_addretrace
	ldr	r3, .L47+4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L45
	ldr	r3, .L47+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L46
	ldr	r3, .L47+12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r1, .L47+8
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r3, .L47+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L47+16
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	b	.L45
.L46:
	ldr	r3, .L47+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L47+8
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
.L45:
	ldr	r3, .L47+20
	mov	r2, #1
	str	r2, [r3, #0]
	bl	update_interrupts
	ldmfd	sp!, {fp, pc}
.L48:
	.align	2
.L47:
	.word	raster_counter
	.word	auto_animation_disabled
	.word	auto_animation_frame_counter
	.word	auto_animation_speed
	.word	auto_animation_counter
	.word	vblank_interrupt_pending
	.fnend
	.size	neogeo_vblank_interrupt, .-neogeo_vblank_interrupt
	.align	2
	.global	neogeo_raster_interrupt
	.type	neogeo_raster_interrupt, %function
neogeo_raster_interrupt:
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
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-10]
	cmp	r3, #264
	bne	.L50
	mov	r3, #0
	strh	r3, [fp, #-10]	@ movhi
.L50:
	ldrh	r3, [fp, #-10]
	cmp	r3, #15
	bhi	.L51
	ldrh	r3, [fp, #-10]	@ movhi
	add	r3, r3, #496
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L62
	strh	r2, [r3, #0]	@ movhi
	b	.L52
.L51:
	ldrh	r3, [fp, #-10]	@ movhi
	add	r3, r3, #232
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L62
	strh	r2, [r3, #0]	@ movhi
.L52:
	ldr	r3, .L62+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L53
	ldr	r3, .L62+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L53
	ldr	r3, .L62+12
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, .L62+8
	mov	r2, #0
	str	r2, [r3, #0]
.L53:
	ldr	r3, .L62+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L54
	ldr	r3, .L62+16
	ldr	r3, [r3, #0]
	sub	r2, r3, #1
	ldr	r3, .L62+16
	str	r2, [r3, #0]
	ldr	r3, .L62+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L54
	ldr	r3, .L62+20
	ldr	r3, [r3, #0]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L55
	ldr	r3, .L62+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L56
	ldr	r3, .L62+12
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
.L56:
	ldr	r3, .L62+24
	mov	r2, #1
	str	r2, [r3, #0]
.L55:
	ldr	r3, .L62+20
	ldr	r3, [r3, #0]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L54
	bl	adjust_display_position_interrupt
.L54:
	ldr	r3, [fp, #-16]
	cmp	r3, #264
	bne	.L57
	ldr	r3, .L62+20
	ldr	r3, [r3, #0]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L58
	bl	adjust_display_position_interrupt
.L58:
	bl	pd4990a_addretrace
	ldr	r3, .L62+28
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L59
	ldr	r3, .L62+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L60
	ldr	r3, .L62+36
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r1, .L62+32
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldr	r3, .L62+40
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L62+40
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	b	.L59
.L60:
	ldr	r3, .L62+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L62+32
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
.L59:
	ldr	r3, .L62+44
	mov	r2, #1
	str	r2, [r3, #0]
.L57:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L61
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L61
	ldr	r3, .L62
	ldrh	r3, [r3, #0]
	sub	r3, r3, #256
	sub	r3, r3, #1
	mov	r0, r3
	bl	neogeo_partial_screenrefresh
.L61:
	bl	update_interrupts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L63:
	.align	2
.L62:
	.word	raster_counter
	.word	busy
	.word	scanline_read
	.word	neogeo_raster_enable
	.word	display_position_interrupt_counter
	.word	display_position_interrupt_control
	.word	display_position_interrupt_pending
	.word	auto_animation_disabled
	.word	auto_animation_frame_counter
	.word	auto_animation_speed
	.word	auto_animation_counter
	.word	vblank_interrupt_pending
	.fnend
	.size	neogeo_raster_interrupt, .-neogeo_raster_interrupt
	.align	2
	.type	set_main_cpu_vector_table_source, %function
set_main_cpu_vector_table_source:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldr	r3, .L70
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, .L70+4
	ldr	r3, [r3, r1, asl #2]
	mov	ip, #128
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L70+8
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #0]
	ldr	r3, .L70+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L65
	ldr	r1, .L70+16
	ldr	r3, .L70+20
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L64
.L65:
	ldr	r3, .L70+24
	ldr	r3, [r3, #0]
	cmp	r3, #12
	ble	.L67
	ldr	r3, .L70+24
	ldr	r3, [r3, #0]
	cmp	r3, #23
	bgt	.L67
	ldr	r1, .L70+16
	mov	r3, #32
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L64
.L67:
	ldr	r3, .L70+24
	ldr	r3, [r3, #0]
	cmp	r3, #11
	beq	.L68
	ldr	r3, .L70+24
	ldr	r3, [r3, #0]
	cmp	r3, #12
	beq	.L68
	ldr	r3, .L70+24
	ldr	r3, [r3, #0]
	cmp	r3, #24
	bne	.L69
.L68:
	ldr	r1, .L70+16
	ldr	r3, .L70+20
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
	b	.L64
.L69:
	ldr	r1, .L70+16
	mov	r3, #0
	mov	r2, r3	@ movhi
	mov	r3, r1
	strh	r2, [r3, #0]	@ movhi
.L64:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L71:
	.align	2
.L70:
	.word	memory_region_cpu1
	.word	neogeo_vectors
	.word	main_cpu_vector_table_source
	.word	display_position_interrupt_counter
	.word	max_sprite_number
	.word	381
	.word	neogeo_bios
	.fnend
	.size	set_main_cpu_vector_table_source, .-set_main_cpu_vector_table_source
	.align	2
	.type	neogeo_set_palette_bank, %function
neogeo_set_palette_bank:
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
	ldr	r3, .L74
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L72
	ldr	r3, .L74
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #0]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r2, r3, asl #13
	ldr	r3, .L74+4
	add	r2, r2, r3
	ldr	r3, .L74+8
	str	r2, [r3, #0]
.L72:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L75:
	.align	2
.L74:
	.word	palette_bank
	.word	video_palettebank
	.word	video_palette
	.fnend
	.size	neogeo_set_palette_bank, .-neogeo_set_palette_bank
	.align	2
	.type	set_videoram_offset, %function
set_videoram_offset:
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
	ldr	r3, .L77
	ldrh	r2, [fp, #-6]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, .L77
	ldrh	r3, [r3, #0]
	ldr	r2, .L77+4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, .L77+8
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L78:
	.align	2
.L77:
	.word	videoram_offset
	.word	neogeo_videoram
	.word	videoram_read_buffer
	.fnend
	.size	set_videoram_offset, .-set_videoram_offset
	.align	2
	.type	get_videoram_data, %function
get_videoram_data:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L80
	ldrh	r3, [r3, #0]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L81:
	.align	2
.L80:
	.word	videoram_read_buffer
	.fnend
	.size	get_videoram_data, .-get_videoram_data
	.align	2
	.type	set_videoram_data, %function
set_videoram_data:
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
	ldr	r3, .L83
	ldrh	r3, [r3, #0]
	ldr	r2, .L83+4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r2, [fp, #-6]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, .L83
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	bic	r3, r3, #32512
	bic	r3, r3, #255
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L83
	ldrh	r1, [r3, #0]
	ldr	r3, .L83+8
	ldrh	r3, [r3, #0]
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L83
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, .L83
	ldrh	r3, [r3, #0]
	ldr	r2, .L83+4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, .L83+12
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L84:
	.align	2
.L83:
	.word	videoram_offset
	.word	neogeo_videoram
	.word	videoram_modulo
	.word	videoram_read_buffer
	.fnend
	.size	set_videoram_data, .-set_videoram_data
	.align	2
	.type	get_videoram_modulo, %function
get_videoram_modulo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L86
	ldrh	r3, [r3, #0]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L87:
	.align	2
.L86:
	.word	videoram_modulo
	.fnend
	.size	get_videoram_modulo, .-get_videoram_modulo
	.align	2
	.type	set_videoram_modulo, %function
set_videoram_modulo:
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
	ldr	r3, .L89
	ldrh	r2, [fp, #-6]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L90:
	.align	2
.L89:
	.word	videoram_modulo
	.fnend
	.size	set_videoram_modulo, .-set_videoram_modulo
	.align	2
	.type	get_video_control, %function
get_video_control:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L95
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L95+4
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L92
	bl	timer_getscanline
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	cmp	r3, #264
	bne	.L93
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L93:
	ldrh	r3, [fp, #-6]
	cmp	r3, #15
	bhi	.L94
	ldrh	r3, [fp, #-6]	@ movhi
	add	r3, r3, #496
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L95+8
	strh	r2, [r3, #0]	@ movhi
	b	.L92
.L94:
	ldrh	r3, [fp, #-6]	@ movhi
	add	r3, r3, #232
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L95+8
	strh	r2, [r3, #0]	@ movhi
.L92:
	ldr	r3, .L95+8
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #7
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L95+12
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	and	r3, r3, #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L96:
	.align	2
.L95:
	.word	scanline_read
	.word	neogeo_driver_type
	.word	raster_counter
	.word	auto_animation_counter
	.fnend
	.size	get_video_control, .-get_video_control
	.align	2
	.type	set_video_control, %function
set_video_control:
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
	ldrh	r3, [fp, #-6]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #255
	ldr	r1, .L98
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldrh	r3, [fp, #-6]	@ movhi
	and	r3, r3, #255
	and	r3, r3, #8
	and	r3, r3, #255
	ldr	r1, .L98+4
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	ldrh	r3, [fp, #-6]
	and	r2, r3, #240
	ldr	r3, .L98+8
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L99:
	.align	2
.L98:
	.word	auto_animation_speed
	.word	auto_animation_disabled
	.word	display_position_interrupt_control
	.fnend
	.size	set_video_control, .-set_video_control
	.align	2
	.type	neogeo_set_display_counter_msb, %function
neogeo_set_display_counter_msb:
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
	ldr	r3, .L104
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L103
.L101:
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldrh	r2, [fp, #-6]
	mov	r2, r2, asl #16
	orr	r2, r3, r2
	ldr	r3, .L104+4
	str	r2, [r3, #0]
	b	.L100
.L103:
	mov	r0, r0	@ nop
.L100:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L105:
	.align	2
.L104:
	.word	neogeo_driver_type
	.word	display_counter
	.fnend
	.size	neogeo_set_display_counter_msb, .-neogeo_set_display_counter_msb
	.align	2
	.type	neogeo_set_display_counter_lsb, %function
neogeo_set_display_counter_lsb:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, .L110
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L109
.L107:
	ldr	r3, .L110+4
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	ldrh	r2, [fp, #-6]
	orr	r2, r3, r2
	ldr	r3, .L110+4
	str	r2, [r3, #0]
	ldr	r3, .L110+8
	ldr	r3, [r3, #0]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L106
	bl	adjust_display_position_interrupt
	b	.L106
.L109:
	mov	r0, r0	@ nop
.L106:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L111:
	.align	2
.L110:
	.word	neogeo_driver_type
	.word	display_counter
	.word	display_position_interrupt_control
	.fnend
	.size	neogeo_set_display_counter_lsb, .-neogeo_set_display_counter_lsb
	.align	2
	.type	neogeo_acknowledge_interrupt, %function
neogeo_acknowledge_interrupt:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L113
	ldr	r3, .L115
	mov	r2, #0
	str	r2, [r3, #0]
.L113:
	ldrh	r3, [fp, #-6]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L114
	ldr	r3, .L115+4
	mov	r2, #0
	str	r2, [r3, #0]
.L114:
	bl	update_interrupts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L116:
	.align	2
.L115:
	.word	display_position_interrupt_pending
	.word	vblank_interrupt_pending
	.fnend
	.size	neogeo_acknowledge_interrupt, .-neogeo_acknowledge_interrupt
	.align	2
	.global	neogeo_bankswitch_w
	.type	neogeo_bankswitch_w, %function
neogeo_bankswitch_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L122
	and	r3, r2, r3
	ldr	r2, .L122
	cmp	r3, r2
	bne	.L117
	ldr	r3, .L122+4
	ldr	r3, [r3, #0]
	cmp	r3, #1048576
	bls	.L121
.L119:
	ldrh	r3, [fp, #-18]	@ movhi
	and	r3, r3, #7
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-18]
	add	r3, r3, #1
	mov	r3, r3, asl #20
	str	r3, [fp, #-8]
	ldr	r3, .L122+4
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bcc	.L120
	mov	r3, #1048576
	str	r3, [fp, #-8]
.L120:
	ldr	r0, [fp, #-8]
	bl	neogeo_set_cpu1_second_bank
	b	.L117
.L121:
	mov	r0, r0	@ nop
.L117:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L123:
	.align	2
.L122:
	.word	1572856
	.word	memory_length_cpu1
	.fnend
	.size	neogeo_bankswitch_w, .-neogeo_bankswitch_w
	.align	2
	.global	watchdog_callback
	.type	watchdog_callback, %function
watchdog_callback:
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
	ldr	r3, .L126
	ldr	r3, [r3, #0]
	cmp	r3, #3
	bne	.L124
	ldr	r3, .L126
	mov	r2, #2
	str	r2, [r3, #0]
.L124:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L127:
	.align	2
.L126:
	.word	Loop
	.fnend
	.size	watchdog_callback, .-watchdog_callback
	.align	2
	.global	watchdog_reset_w
	.type	watchdog_reset_w, %function
watchdog_reset_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	mov	r0, #5
	ldr	r1, .L129
	mov	r2, #0
	ldr	r3, .L129+4
	bl	timer_set
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L130:
	.align	2
.L129:
	.word	128762
	.word	watchdog_callback
	.fnend
	.size	watchdog_reset_w, .-watchdog_reset_w
	.align	2
	.global	neogeo_controller2_r
	.type	neogeo_controller2_r, %function
neogeo_controller2_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, .L134
	ldrh	r2, [r3, #0]
	ldr	r3, .L134+4
	cmp	r2, r3
	bne	.L132
	ldr	r3, .L134+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L132
	ldr	r3, .L134+12
	ldr	r3, [r3, #4]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L133
.L132:
	ldr	r3, .L134+16
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L133:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L135:
	.align	2
.L134:
	.word	neogeo_ngh
	.word	567
	.word	controller_select
	.word	input_analog_value
	.word	neogeo_port_value
	.fnend
	.size	neogeo_controller2_r, .-neogeo_controller2_r
	.align	2
	.global	neogeo_controller3_r
	.type	neogeo_controller3_r, %function
neogeo_controller3_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, .L137
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	bic	r3, r3, #28672
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L138:
	.align	2
.L137:
	.word	neogeo_port_value
	.fnend
	.size	neogeo_controller3_r, .-neogeo_controller3_r
	.align	2
	.global	neogeo_controller1and4_r
	.type	neogeo_controller1and4_r, %function
neogeo_controller1and4_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-8]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L140
	ldr	r3, .L148
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	b	.L141
.L140:
	ldr	r3, .L148+4
	ldrh	r3, [r3, #0]
	ldr	r2, .L148+8
	cmp	r3, r2
	beq	.L143
	ldr	r2, .L148+12
	cmp	r3, r2
	beq	.L144
	b	.L142
.L143:
	ldr	r3, .L148+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L145
	ldr	r3, .L148+20
	ldr	r3, [r3, #4]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L148
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L141
.L145:
	ldr	r3, .L148+20
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L148
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L141
.L144:
	ldr	r3, .L148+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L147
	ldr	r3, .L148+20
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L148
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L141
.L147:
	mov	r0, r0	@ nop
.L142:
	ldr	r3, .L148
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L148
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L141:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L149:
	.align	2
.L148:
	.word	neogeo_port_value
	.word	neogeo_ngh
	.word	566
	.word	567
	.word	controller_select
	.word	input_analog_value
	.fnend
	.size	neogeo_controller1and4_r, .-neogeo_controller1and4_r
	.align	2
	.global	neogeo_timer_r
	.type	neogeo_timer_r, %function
neogeo_timer_r:
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
	mov	r3, r1
	strh	r3, [fp, #-26]	@ movhi
	mov	r0, #0
	bl	pd4990a_testbit_r
	mov	r3, r0
	str	r3, [fp, #-12]
	mov	r0, #0
	bl	pd4990a_databit_r
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, .L154
	ldrh	r3, [r3, #0]
	cmp	r3, #4096
	beq	.L151
	ldr	r3, .L154+4
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	b	.L152
.L151:
	mov	r3, #63
.L152:
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, .L154+8
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, .L154+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L153
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	strh	r3, [fp, #-6]	@ movhi
.L153:
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L155:
	.align	2
.L154:
	.word	neogeo_ngh
	.word	neogeo_port_value
	.word	result_code
	.word	pending_command
	.fnend
	.size	neogeo_timer_r, .-neogeo_timer_r
	.align	2
	.global	neogeo_sound_write
	.type	neogeo_sound_write, %function
neogeo_sound_write:
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
	ldr	r3, .L157
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	mov	r0, #127
	mov	r1, #3
	bl	z80_set_irq_line
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L158:
	.align	2
.L157:
	.word	sound_code
	.fnend
	.size	neogeo_sound_write, .-neogeo_sound_write
	.align	2
	.global	neogeo_z80_w
	.type	neogeo_z80_w, %function
neogeo_z80_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldr	r3, .L160
	mov	r2, #1
	str	r2, [r3, #0]
	ldrh	r3, [fp, #-10]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #255
	mov	r0, #2
	mov	r1, #0
	mov	r2, r3
	ldr	r3, .L160+4
	bl	timer_set
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L161:
	.align	2
.L160:
	.word	pending_command
	.word	neogeo_sound_write
	.fnend
	.size	neogeo_z80_w, .-neogeo_z80_w
	.align	2
	.global	io_control_w
	.type	io_control_w, %function
io_control_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldr	r3, [fp, #-8]
	and	r3, r3, #127
	cmp	r3, #0
	beq	.L164
	cmp	r3, #40
	beq	.L165
	b	.L162
.L164:
	ldrh	r3, [fp, #-10]	@ movhi
	and	r3, r3, #255
	and	r3, r3, #1
	and	r3, r3, #255
	ldr	r1, .L166
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	b	.L162
.L165:
	ldrh	r2, [fp, #-10]
	ldrh	r3, [fp, #-12]
	mov	r0, #0
	mov	r1, r2
	mov	r2, r3
	bl	pd4990a_control_w
	mov	r0, r0	@ nop
.L162:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L167:
	.align	2
.L166:
	.word	controller_select
	.fnend
	.size	io_control_w, .-io_control_w
	.align	2
	.global	system_control_w
	.type	system_control_w, %function
system_control_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrh	r3, [fp, #-20]
	and	r3, r3, #255
	cmp	r3, #255
	beq	.L168
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #3
	and	r3, r3, #255
	and	r3, r3, #1
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-16]
	and	r3, r3, #7
	sub	r3, r3, #1
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L168
.L174:
	.word	.L170
	.word	.L168
	.word	.L168
	.word	.L168
	.word	.L171
	.word	.L172
	.word	.L173
.L170:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	bl	set_main_cpu_vector_table_source
	b	.L168
.L171:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	bl	neogeo_set_fixed_layer_source
	b	.L168
.L172:
	ldr	r3, .L175
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #0]
	b	.L168
.L173:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	bl	neogeo_set_palette_bank
	mov	r0, r0	@ nop
.L168:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L176:
	.align	2
.L175:
	.word	save_ram_unlocked
	.fnend
	.size	system_control_w, .-system_control_w
	.align	2
	.global	neogeo_video_register_r
	.type	neogeo_video_register_r, %function
neogeo_video_register_r:
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
	ldrh	r3, [fp, #-10]
	cmp	r3, #65280
	bne	.L178
	mov	r3, #255
	b	.L179
.L178:
	ldr	r3, [fp, #-8]
	and	r3, r3, #3
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L180
.L184:
	.word	.L181
	.word	.L181
	.word	.L182
	.word	.L183
.L181:
	bl	get_videoram_data
	mov	r3, r0
	b	.L179
.L182:
	bl	get_videoram_modulo
	mov	r3, r0
	b	.L179
.L183:
	bl	get_video_control
	mov	r3, r0
	b	.L179
.L180:
	ldr	r3, .L185
.L179:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L186:
	.align	2
.L185:
	.word	65535
	.fnend
	.size	neogeo_video_register_r, .-neogeo_video_register_r
	.align	2
	.global	neogeo_video_register_w
	.type	neogeo_video_register_w, %function
neogeo_video_register_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldrh	r3, [fp, #-12]
	cmp	r3, #65280
	beq	.L187
	ldrh	r3, [fp, #-12]
	cmp	r3, #255
	bne	.L189
	ldrh	r3, [fp, #-10]
	bic	r3, r3, #255
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L189:
	ldr	r3, [fp, #-8]
	and	r3, r3, #7
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L187
.L198:
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
	.word	.L195
	.word	.L196
	.word	.L187
.L190:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	set_videoram_offset
	b	.L187
.L191:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	set_videoram_data
	b	.L187
.L192:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	set_videoram_modulo
	b	.L187
.L193:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	set_video_control
	b	.L187
.L194:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	neogeo_set_display_counter_msb
	b	.L187
.L195:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	neogeo_set_display_counter_lsb
	b	.L187
.L196:
	ldrh	r3, [fp, #-10]
	mov	r0, r3
	bl	neogeo_acknowledge_interrupt
	mov	r0, r0	@ nop
.L187:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	neogeo_video_register_w, .-neogeo_video_register_w
	.align	2
	.global	neogeo_paletteram_r
	.type	neogeo_paletteram_r, %function
neogeo_paletteram_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	str	r3, [fp, #-8]
	ldr	r3, .L200
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r1, .L200+4
	mov	r2, r3, asl #12
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r2, r1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L201:
	.align	2
.L200:
	.word	palette_bank
	.word	palettes
	.fnend
	.size	neogeo_paletteram_r, .-neogeo_paletteram_r
	.align	2
	.global	neogeo_paletteram_w
	.type	neogeo_paletteram_w, %function
neogeo_paletteram_w:
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
	str	r0, [fp, #-16]
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	str	r3, [fp, #-16]
	ldr	r3, .L204
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3, asl #12
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, .L204+4
	add	r3, r2, r3
	ldr	r2, .L204
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	mov	r1, r2, asl #12
	ldr	r2, [fp, #-16]
	add	r2, r1, r2
	mov	r1, r2, asl #1
	ldr	r2, .L204+4
	add	r2, r1, r2
	ldrh	r1, [r2, #0]
	ldrh	r2, [fp, #-20]	@ movhi
	and	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldrh	r2, [fp, #-20]	@ movhi
	mvn	r2, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r0, r2, lsr #16
	ldrh	r2, [fp, #-18]
	and	r2, r0, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	orr	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-16]
	and	r3, r3, #15
	cmp	r3, #0
	beq	.L202
	ldr	r3, .L204+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	add	r2, r2, r3
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	ldr	r1, .L204+12
	mov	r3, r3, asl #1
	add	r3, r1, r3
	ldrh	r3, [r3, #0]
	strh	r3, [r2, #0]	@ movhi
.L202:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L205:
	.align	2
.L204:
	.word	palette_bank
	.word	palettes
	.word	video_palette
	.word	video_clut16
	.fnend
	.size	neogeo_paletteram_w, .-neogeo_paletteram_w
	.align	2
	.global	neogeo_memcard16_r
	.type	neogeo_memcard16_r, %function
neogeo_memcard16_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #21
	mov	r3, r3, lsr #21
	ldr	r2, .L207
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mvn	r3, r3, asl #24
	mvn	r3, r3, lsr #24
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L208:
	.align	2
.L207:
	.word	neogeo_memcard
	.fnend
	.size	neogeo_memcard16_r, .-neogeo_memcard16_r
	.align	2
	.global	neogeo_memcard16_w
	.type	neogeo_memcard16_w, %function
neogeo_memcard16_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldrh	r3, [fp, #-12]
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L209
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #21
	mov	r3, r3, lsr #21
	ldrh	r2, [fp, #-10]	@ movhi
	and	r2, r2, #255
	ldr	r0, .L211
	mov	r1, r2
	mov	r2, r0
	strb	r1, [r2, r3]
.L209:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L212:
	.align	2
.L211:
	.word	neogeo_memcard
	.fnend
	.size	neogeo_memcard16_w, .-neogeo_memcard16_w
	.align	2
	.global	neogeo_sram16_w
	.type	neogeo_sram16_w, %function
neogeo_sram16_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldr	r3, .L215
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L213
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	mov	r2, r3, asl #1
	ldr	r3, .L215+4
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	mov	r1, r3, asl #1
	ldr	r3, .L215+4
	add	r3, r1, r3
	ldrh	r1, [r3, #0]
	ldrh	r3, [fp, #-12]	@ movhi
	and	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-12]	@ movhi
	mvn	r3, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, lsr #16
	ldrh	r3, [fp, #-10]
	and	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
.L213:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L216:
	.align	2
.L215:
	.word	save_ram_unlocked
	.word	neogeo_sram16
	.fnend
	.size	neogeo_sram16_w, .-neogeo_sram16_w
	.align	2
	.global	neogeo_z80_port_r
	.type	neogeo_z80_port_r, %function
neogeo_z80_port_r:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	and	r3, r3, #255
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L218
.L227:
	.word	.L219
	.word	.L218
	.word	.L218
	.word	.L218
	.word	.L220
	.word	.L221
	.word	.L222
	.word	.L218
	.word	.L223
	.word	.L224
	.word	.L225
	.word	.L226
.L219:
	ldr	r3, .L229
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L229+4
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	b	.L228
.L220:
	mov	r0, #0
	bl	YM2610_status_port_A_r
	mov	r3, r0
	b	.L228
.L221:
	mov	r0, #0
	bl	YM2610_read_port_r
	mov	r3, r0
	b	.L228
.L222:
	mov	r0, #0
	bl	YM2610_status_port_B_r
	mov	r3, r0
	b	.L228
.L223:
	ldrh	r3, [fp, #-6]
	and	r3, r3, #32512
	mov	r3, r3, asl #3
	mov	r0, #3
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	b	.L218
.L224:
	ldrh	r3, [fp, #-6]
	and	r3, r3, #16128
	mov	r3, r3, asl #4
	mov	r0, #2
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	b	.L218
.L225:
	ldrh	r3, [fp, #-6]
	and	r3, r3, #7936
	mov	r3, r3, asl #5
	mov	r0, #1
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	b	.L218
.L226:
	ldrh	r3, [fp, #-6]
	and	r3, r3, #3840
	mov	r3, r3, asl #6
	mov	r0, #0
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	mov	r0, r0	@ nop
.L218:
	mov	r3, #0
.L228:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L230:
	.align	2
.L229:
	.word	pending_command
	.word	sound_code
	.fnend
	.size	neogeo_z80_port_r, .-neogeo_z80_port_r
	.align	2
	.global	neogeo_z80_port_w
	.type	neogeo_z80_port_w, %function
neogeo_z80_port_w:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r2, r0
	mov	r3, r1
	strh	r2, [fp, #-6]	@ movhi
	strb	r3, [fp, #-7]
	ldrh	r3, [fp, #-6]
	and	r3, r3, #255
	sub	r3, r3, #4
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L231
.L238:
	.word	.L233
	.word	.L234
	.word	.L235
	.word	.L236
	.word	.L231
	.word	.L231
	.word	.L231
	.word	.L231
	.word	.L237
.L233:
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, r3
	bl	YM2610_control_port_A_w
	b	.L231
.L234:
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, r3
	bl	YM2610_data_port_A_w
	b	.L231
.L235:
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, r3
	bl	YM2610_control_port_B_w
	b	.L231
.L236:
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, r3
	bl	YM2610_data_port_B_w
	b	.L231
.L237:
	ldrb	r2, [fp, #-7]	@ zero_extendqisi2
	ldr	r3, .L239
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
.L231:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L240:
	.align	2
.L239:
	.word	result_code
	.fnend
	.size	neogeo_z80_port_w, .-neogeo_z80_port_w
	.align	2
	.global	neogeo_sound_irq
	.type	neogeo_sound_irq, %function
neogeo_sound_irq:
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
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	mov	r0, #0
	mov	r1, r3
	bl	z80_set_irq_line
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	neogeo_sound_irq, .-neogeo_sound_irq
	.align	2
	.global	mslugx_install_protection
	.type	mslugx_install_protection, %function
mslugx_install_protection:
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
	ldr	r3, .L246
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L243
.L245:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrh	r2, [r3, #0]
	ldr	r3, .L246+4
	cmp	r2, r3
	bne	.L244
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	cmp	r3, #1
	bne	.L244
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	cmp	r3, #26112
	bne	.L244
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
.L244:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L243:
	ldr	r2, [fp, #-8]
	ldr	r3, .L246+12
	cmp	r2, r3
	ble	.L245
	ldr	r3, [fp, #-12]
	add	r3, r3, #15296
	add	r3, r3, #28
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15296
	add	r3, r3, #30
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15296
	add	r3, r3, #32
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15360
	add	r3, r3, #12
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15360
	add	r3, r3, #14
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15360
	add	r3, r3, #16
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15360
	add	r3, r3, #54
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #15360
	add	r3, r3, #56
	ldr	r2, .L246+8
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L247:
	.align	2
.L246:
	.word	memory_region_cpu1
	.word	579
	.word	20081
	.word	524283
	.fnend
	.size	mslugx_install_protection, .-mslugx_install_protection
	.align	2
	.global	neogeo_secondbank_r
	.type	neogeo_secondbank_r, %function
neogeo_secondbank_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, .L249
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L250:
	.align	2
.L249:
	.word	neogeo_cpu1_second_bank
	.fnend
	.size	neogeo_secondbank_r, .-neogeo_secondbank_r
	.align	2
	.global	neogeo_secondbank_w
	.type	neogeo_secondbank_w, %function
neogeo_secondbank_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldrh	r2, [fp, #-10]
	ldrh	r3, [fp, #-12]
	ldr	r0, [fp, #-8]
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_bankswitch_w
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	neogeo_secondbank_w, .-neogeo_secondbank_w
	.local	neogeo_prot_data
	.comm	neogeo_prot_data,4,4
	.align	2
	.global	fatfury2_protection_r
	.type	fatfury2_protection_r, %function
fatfury2_protection_r:
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
	str	r0, [fp, #-16]
	mov	r3, r1
	strh	r3, [fp, #-18]	@ movhi
	ldr	r3, .L259
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #24
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-16]
	bic	r3, r3, #-16777216
	bic	r3, r3, #16252928
	ldr	r2, .L259+4
	cmp	r3, r2
	beq	.L254
	ldr	r2, .L259+4
	cmp	r3, r2
	bhi	.L256
	cmp	r3, #110592
	beq	.L254
	ldr	r2, .L259+8
	cmp	r3, r2
	beq	.L255
	cmp	r3, #0
	beq	.L254
	b	.L253
.L256:
	ldr	r2, .L259+12
	cmp	r3, r2
	beq	.L254
	ldr	r2, .L259+12
	cmp	r3, r2
	bhi	.L257
	ldr	r2, .L259+16
	cmp	r3, r2
	beq	.L255
	b	.L253
.L257:
	ldr	r2, .L259+20
	cmp	r3, r2
	beq	.L254
	ldr	r2, .L259+24
	cmp	r3, r2
	bne	.L253
.L254:
	ldrh	r3, [fp, #-6]
	b	.L258
.L255:
	ldrh	r3, [fp, #-6]
	and	r3, r3, #240
	mov	r3, r3, asr #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]
	mov	r3, r3, asl #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #255
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L258
.L253:
	mov	r3, #0
.L258:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L260:
	.align	2
.L259:
	.word	neogeo_prot_data
	.word	110596
	.word	110594
	.word	174760
	.word	110598
	.word	522240
	.word	524280
	.fnend
	.size	fatfury2_protection_r, .-fatfury2_protection_r
	.align	2
	.global	fatfury2_protection_w
	.type	fatfury2_protection_w, %function
fatfury2_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldr	r3, [fp, #-8]
	bic	r3, r3, #-16777216
	bic	r3, r3, #16252928
	ldr	r2, .L273
	cmp	r3, r2
	beq	.L266
	ldr	r2, .L273
	cmp	r3, r2
	bhi	.L270
	cmp	r3, #110592
	beq	.L265
	cmp	r3, #110592
	bhi	.L271
	ldr	r2, .L273+4
	cmp	r3, r2
	beq	.L263
	ldr	r2, .L273+8
	cmp	r3, r2
	beq	.L264
	b	.L261
.L271:
	ldr	r2, .L273+12
	cmp	r3, r2
	beq	.L265
	ldr	r2, .L273+16
	cmp	r3, r2
	beq	.L265
	ldr	r2, .L273+20
	cmp	r3, r2
	beq	.L265
	b	.L261
.L270:
	ldr	r2, .L273+24
	cmp	r3, r2
	beq	.L268
	ldr	r2, .L273+24
	cmp	r3, r2
	bhi	.L272
	ldr	r2, .L273+28
	cmp	r3, r2
	beq	.L267
	ldr	r2, .L273+32
	cmp	r3, r2
	beq	.L265
	b	.L261
.L272:
	ldr	r2, .L273+36
	cmp	r3, r2
	beq	.L265
	ldr	r2, .L273+40
	cmp	r3, r2
	beq	.L265
	ldr	r2, .L273+44
	cmp	r3, r2
	beq	.L269
	b	.L261
.L263:
	ldr	r3, .L273+48
	mov	r2, #-16777216
	str	r2, [r3, #0]
	b	.L261
.L264:
	ldr	r3, .L273+48
	ldr	r2, .L273+52
	str	r2, [r3, #0]
	b	.L261
.L267:
	ldr	r3, .L273+48
	mov	r2, #16711680
	str	r2, [r3, #0]
	b	.L261
.L268:
	ldr	r3, .L273+48
	ldr	r2, .L273+56
	str	r2, [r3, #0]
	b	.L261
.L269:
	ldr	r3, .L273+48
	ldr	r2, .L273+60
	str	r2, [r3, #0]
	b	.L261
.L266:
	ldr	r3, .L273+48
	ldr	r2, .L273+64
	str	r2, [r3, #0]
	b	.L261
.L265:
	ldr	r3, .L273+48
	ldr	r3, [r3, #0]
	mov	r2, r3, asl #8
	ldr	r3, .L273+48
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
.L261:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L274:
	.align	2
.L273:
	.word	136201
	.word	34953
	.word	104857
	.word	110596
	.word	110598
	.word	110594
	.word	174761
	.word	139809
	.word	174760
	.word	522240
	.word	524280
	.word	177089
	.word	neogeo_prot_data
	.word	65535
	.word	-16711936
	.word	-262523391
	.word	-2126371816
	.fnend
	.size	fatfury2_protection_w, .-fatfury2_protection_w
	.align	2
	.global	kof98_protection_w
	.type	kof98_protection_w, %function
kof98_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L281
	cmp	r2, r3
	bne	.L276
	ldr	r3, .L281+4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldrh	r3, [fp, #-18]
	cmp	r3, #144
	beq	.L278
	cmp	r3, #240
	beq	.L279
	b	.L275
.L278:
	ldr	r3, [fp, #-8]
	add	r3, r3, #256
	mov	r2, #194
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #256
	add	r3, r3, #2
	mov	r2, #253
	strh	r2, [r3, #0]	@ movhi
	mov	r0, r0	@ nop
	b	.L275
.L279:
	ldr	r3, [fp, #-8]
	add	r3, r3, #256
	ldr	r2, .L281+8
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #256
	add	r3, r3, #2
	ldr	r2, .L281+12
	strh	r2, [r3, #0]	@ movhi
	b	.L275
.L276:
	ldrh	r2, [fp, #-18]
	ldrh	r3, [fp, #-20]
	ldr	r0, [fp, #-16]
	mov	r1, r2
	mov	r2, r3
	bl	neogeo_bankswitch_w
.L275:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L282:
	.align	2
.L281:
	.word	1070421
	.word	memory_region_cpu1
	.word	20037
	.word	20269
	.fnend
	.size	kof98_protection_w, .-kof98_protection_w
	.align	2
	.type	sma_random_r, %function
sma_random_r:
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
	ldr	r3, .L284
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #11
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, lsr #15
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	eor	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
	ldr	r3, .L284
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-8]
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L284
	strh	r2, [r3, #0]	@ movhi
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L285:
	.align	2
.L284:
	.word	neogeo_rng
	.fnend
	.size	sma_random_r, .-sma_random_r
	.align	2
	.global	kof99_protection_r
	.type	kof99_protection_r, %function
kof99_protection_r:
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
	ldr	r2, .L293
	cmp	r3, r2
	beq	.L289
	ldr	r2, .L293+4
	cmp	r3, r2
	beq	.L290
	ldr	r2, .L293+8
	cmp	r3, r2
	bne	.L292
.L288:
	ldr	r3, .L293+12
	b	.L291
.L289:
	bl	sma_random_r
	mov	r3, r0
	b	.L291
.L290:
	bl	sma_random_r
	mov	r3, r0
	b	.L291
.L292:
	ldr	r3, .L293+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
.L291:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L294:
	.align	2
.L293:
	.word	1572860
	.word	1572861
	.word	1569315
	.word	39479
	.word	neogeo_cpu1_second_bank
	.fnend
	.size	kof99_protection_r, .-kof99_protection_r
	.align	2
	.global	kof99_protection_w
	.type	kof99_protection_w, %function
kof99_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L297
	cmp	r2, r3
	bne	.L295
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #14
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #10
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	and	r3, r3, #32
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r2, [fp, #-18]
	ldr	r3, .L297+4
	ldr	r3, [r3, r2, asl #2]
	add	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
.L295:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L298:
	.align	2
.L297:
	.word	1572856
	.word	bankoffset.7610
	.fnend
	.size	kof99_protection_w, .-kof99_protection_w
	.align	2
	.global	garou_protection_r
	.type	garou_protection_r, %function
garou_protection_r:
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
	ldr	r2, .L305
	cmp	r3, r2
	beq	.L302
	ldr	r2, .L305+4
	cmp	r3, r2
	beq	.L302
	ldr	r2, .L305+8
	cmp	r3, r2
	bne	.L304
.L301:
	ldr	r3, .L305+12
	b	.L303
.L302:
	bl	sma_random_r
	mov	r3, r0
	b	.L303
.L304:
	ldr	r3, .L305+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
.L303:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L306:
	.align	2
.L305:
	.word	1572838
	.word	1572856
	.word	1569315
	.word	39479
	.word	neogeo_cpu1_second_bank
	.fnend
	.size	garou_protection_r, .-garou_protection_r
	.align	2
	.global	garou_protection_w
	.type	garou_protection_w, %function
garou_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L309
	cmp	r2, r3
	bne	.L307
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #9
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #14
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r2, [fp, #-18]
	ldr	r3, .L309+4
	ldr	r3, [r3, r2, asl #2]
	add	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
.L307:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L310:
	.align	2
.L309:
	.word	1572832
	.word	bankoffset.7624
	.fnend
	.size	garou_protection_w, .-garou_protection_w
	.align	2
	.global	garouh_protection_w
	.type	garouh_protection_w, %function
garouh_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L313
	cmp	r2, r3
	bne	.L311
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #14
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #11
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #13
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r2, [fp, #-18]
	ldr	r3, .L313+4
	ldr	r3, [r3, r2, asl #2]
	add	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
.L311:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L314:
	.align	2
.L313:
	.word	1572832
	.word	bankoffset.7631
	.fnend
	.size	garouh_protection_w, .-garouh_protection_w
	.align	2
	.global	mslug3_protection_r
	.type	mslug3_protection_r, %function
mslug3_protection_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r2, [fp, #-8]
	ldr	r3, .L318
	cmp	r2, r3
	bne	.L316
	ldr	r3, .L318+4
	b	.L317
.L316:
	ldr	r3, .L318+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
.L317:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L319:
	.align	2
.L318:
	.word	1569331
	.word	39479
	.word	neogeo_cpu1_second_bank
	.fnend
	.size	mslug3_protection_r, .-mslug3_protection_r
	.align	2
	.global	mslug3_protection_w
	.type	mslug3_protection_w, %function
mslug3_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L322
	cmp	r2, r3
	bne	.L320
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #14
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #15
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #9
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r2, [fp, #-18]
	ldr	r3, .L322+4
	ldr	r3, [r3, r2, asl #2]
	add	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
.L320:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L323:
	.align	2
.L322:
	.word	1572850
	.word	bankoffset.7642
	.fnend
	.size	mslug3_protection_w, .-mslug3_protection_w
	.align	2
	.global	kof2000_protection_r
	.type	kof2000_protection_r, %function
kof2000_protection_r:
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
	ldr	r2, [fp, #-8]
	ldr	r3, .L330
	cmp	r2, r3
	beq	.L326
	ldr	r3, .L330
	cmp	r2, r3
	bcc	.L325
	ldr	r3, .L330+4
	add	r3, r2, r3
	cmp	r3, #1
	bhi	.L325
	b	.L329
.L326:
	ldr	r3, .L330+8
	b	.L328
.L329:
	bl	sma_random_r
	mov	r3, r0
	b	.L328
.L325:
	ldr	r3, .L330+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
.L328:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L331:
	.align	2
.L330:
	.word	1569315
	.word	-1572844
	.word	39479
	.word	neogeo_cpu1_second_bank
	.fnend
	.size	kof2000_protection_r, .-kof2000_protection_r
	.align	2
	.global	kof2000_protection_w
	.type	kof2000_protection_w, %function
kof2000_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, .L334
	cmp	r2, r3
	bne	.L332
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #15
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #14
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	and	r3, r3, #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]
	mov	r3, r3, lsr #10
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	and	r3, r3, #32
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r2, [fp, #-18]
	ldr	r3, .L334+4
	ldr	r3, [r3, r2, asl #2]
	add	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
.L332:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L335:
	.align	2
.L334:
	.word	1572854
	.word	bankoffset.7656
	.fnend
	.size	kof2000_protection_w, .-kof2000_protection_w
	.local	CartRAM
	.comm	CartRAM,8192,4
	.align	2
	.type	pvc_write_unpack_color, %function
pvc_write_unpack_color:
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
	ldr	r2, .L337
	ldr	r3, .L337+4
	ldrh	r3, [r2, r3]	@ movhi
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	and	r3, r3, #15
	mov	r3, r3, asl #1
	and	r2, r3, #255
	ldrh	r3, [fp, #-6]
	and	r3, r3, #4096
	mov	r3, r3, asr #12
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-7]
	ldrh	r3, [fp, #-6]
	and	r3, r3, #240
	mov	r3, r3, asr #3
	and	r2, r3, #255
	ldrh	r3, [fp, #-6]
	and	r3, r3, #8192
	mov	r3, r3, asr #13
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-8]
	ldrh	r3, [fp, #-6]
	and	r3, r3, #3840
	mov	r3, r3, asr #7
	and	r2, r3, #255
	ldrh	r3, [fp, #-6]
	and	r3, r3, #16384
	mov	r3, r3, asr #14
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-9]
	ldrh	r3, [fp, #-6]
	mov	r3, r3, lsr #15
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strb	r3, [fp, #-10]
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r2, .L337
	ldr	r3, .L337+8
	strh	r1, [r2, r3]	@ movhi
	ldrb	r3, [fp, #-10]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r2, .L337
	ldr	r3, .L337+12
	strh	r1, [r2, r3]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L338:
	.align	2
.L337:
	.word	CartRAM
	.word	8160
	.word	8162
	.word	8164
	.fnend
	.size	pvc_write_unpack_color, .-pvc_write_unpack_color
	.align	2
	.type	pvc_write_pack_color, %function
pvc_write_pack_color:
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
	ldr	r2, .L340
	ldr	r3, .L340+4
	ldrh	r3, [r2, r3]	@ movhi
	strh	r3, [fp, #-6]	@ movhi
	ldr	r2, .L340
	ldr	r3, .L340+8
	ldrh	r3, [r2, r3]	@ movhi
	strh	r3, [fp, #-8]	@ movhi
	ldrh	r3, [fp, #-6]
	and	r3, r3, #30
	mov	r3, r3, asr #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]
	and	r3, r3, #7680
	mov	r3, r3, asr #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-8]
	and	r3, r3, #30
	mov	r3, r3, asl #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]
	and	r3, r3, #1
	mov	r3, r3, asl #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]
	and	r3, r3, #256
	mov	r3, r3, asl #5
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-8]
	and	r3, r3, #1
	mov	r3, r3, asl #14
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-8]
	and	r3, r3, #256
	mov	r3, r3, asl #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r2, .L340
	ldr	r3, .L340+12
	strh	r1, [r2, r3]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L341:
	.align	2
.L340:
	.word	CartRAM
	.word	8168
	.word	8170
	.word	8172
	.fnend
	.size	pvc_write_pack_color, .-pvc_write_pack_color
	.align	2
	.type	pvc_write_bankswitch, %function
pvc_write_bankswitch:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r2, .L343
	ldr	r3, .L343+4
	ldrh	r3, [r2, r3]
	mov	r3, r3, lsr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldr	r1, .L343
	ldr	r3, .L343+8
	ldrh	r3, [r1, r3]
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, .L343
	ldr	r3, .L343+4
	ldrh	r3, [r2, r3]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	bic	r3, r3, #508
	bic	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r3, #160
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r2, .L343
	ldr	r3, .L343+4
	strh	r1, [r2, r3]	@ movhi
	ldr	r2, .L343
	ldr	r3, .L343+8
	ldrh	r3, [r2, r3]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r2, .L343
	ldr	r3, .L343+8
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1048576
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L344:
	.align	2
.L343:
	.word	CartRAM
	.word	8176
	.word	8178
	.fnend
	.size	pvc_write_bankswitch, .-pvc_write_bankswitch
	.align	2
	.global	pvc_protection_r
	.type	pvc_protection_r, %function
pvc_protection_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r2, [fp, #-8]
	ldr	r3, .L348
	cmp	r2, r3
	bls	.L346
	ldr	r2, [fp, #-8]
	ldr	r3, .L348+4
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, .L348+8
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	b	.L347
.L346:
	ldr	r3, .L348+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
.L347:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L349:
	.align	2
.L348:
	.word	1568767
	.word	-1568768
	.word	CartRAM
	.word	neogeo_cpu1_second_bank
	.fnend
	.size	pvc_protection_r, .-pvc_protection_r
	.align	2
	.global	pvc_protection_w
	.type	pvc_protection_w, %function
pvc_protection_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldr	r2, [fp, #-8]
	ldr	r3, .L354
	cmp	r2, r3
	bls	.L350
	ldr	r2, [fp, #-8]
	ldr	r3, .L354+4
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, r3, asl #1
	ldr	r3, .L354+8
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	mov	r1, r2, asl #1
	ldr	r2, .L354+8
	add	r2, r1, r2
	ldrh	r1, [r2, #0]
	ldrh	r2, [fp, #-12]	@ movhi
	and	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldrh	r2, [fp, #-12]	@ movhi
	mvn	r2, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r0, r2, lsr #16
	ldrh	r2, [fp, #-10]
	and	r2, r0, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	orr	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	cmp	r3, #4080
	bne	.L352
	bl	pvc_write_unpack_color
	b	.L350
.L352:
	ldr	r2, [fp, #-8]
	ldr	r3, .L354+12
	cmp	r2, r3
	bls	.L353
	ldr	r2, [fp, #-8]
	ldr	r3, .L354+16
	cmp	r2, r3
	bhi	.L353
	bl	pvc_write_pack_color
	b	.L350
.L353:
	ldr	r2, [fp, #-8]
	ldr	r3, .L354+20
	cmp	r2, r3
	bls	.L350
	bl	pvc_write_bankswitch
.L350:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L355:
	.align	2
.L354:
	.word	1568767
	.word	-1568768
	.word	CartRAM
	.word	4083
	.word	4085
	.word	4087
	.fnend
	.size	pvc_protection_w, .-pvc_protection_w
	.align	2
	.global	brza_sram_r
	.type	brza_sram_r, %function
brza_sram_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r2, [fp, #-8]
	ldr	r3, .L359
	cmp	r2, r3
	bhi	.L357
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	ldr	r2, .L359+4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	b	.L358
.L357:
	ldr	r3, .L359+8
.L358:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L360:
	.align	2
.L359:
	.word	1081343
	.word	CartRAM
	.word	65535
	.fnend
	.size	brza_sram_r, .-brza_sram_r
	.align	2
	.global	brza_sram_w
	.type	brza_sram_w, %function
brza_sram_w:
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
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldr	r2, [fp, #-8]
	ldr	r3, .L363
	cmp	r2, r3
	bhi	.L361
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1048576
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	mov	r2, r3, asl #1
	ldr	r3, .L363+4
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	mov	r1, r3, asl #1
	ldr	r3, .L363+4
	add	r3, r1, r3
	ldrh	r1, [r3, #0]
	ldrh	r3, [fp, #-12]	@ movhi
	and	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-12]	@ movhi
	mvn	r3, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r0, r3, lsr #16
	ldrh	r3, [fp, #-10]
	and	r3, r0, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	orr	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
.L361:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L364:
	.align	2
.L363:
	.word	1081343
	.word	CartRAM
	.fnend
	.size	brza_sram_w, .-brza_sram_w
	.align	2
	.global	vliner_r
	.type	vliner_r, %function
vliner_r:
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
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-8]
	and	r3, r3, #1540096
	cmp	r3, #1310720
	beq	.L368
	cmp	r3, #1441792
	beq	.L369
	cmp	r3, #1048576
	bne	.L371
.L367:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	ldr	r2, .L372
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	b	.L370
.L368:
	ldr	r3, .L372+4
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	b	.L370
.L369:
	mov	r3, #3
	b	.L370
.L371:
	ldr	r3, .L372+8
.L370:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L373:
	.align	2
.L372:
	.word	CartRAM
	.word	neogeo_port_value
	.word	65535
	.fnend
	.size	vliner_r, .-vliner_r
	.align	2
	.global	kof2000_AES_protection
	.type	kof2000_AES_protection, %function
kof2000_AES_protection:
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
	ldr	r3, .L375
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, .L375+4
	add	r3, r2, r3
	ldr	r2, .L375+8
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L376:
	.align	2
.L375:
	.word	memory_region_cpu1
	.word	664174
	.word	20085
	.fnend
	.size	kof2000_AES_protection, .-kof2000_AES_protection
	.align	2
	.global	mslug5_AES_protection
	.type	mslug5_AES_protection, %function
mslug5_AES_protection:
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
	ldr	r3, .L378
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4608
	add	r3, r3, #42
	ldr	r2, .L378+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L379:
	.align	2
.L378:
	.word	memory_region_cpu1
	.word	20085
	.fnend
	.size	mslug5_AES_protection, .-mslug5_AES_protection
	.align	2
	.global	nitd_AES_protection
	.type	nitd_AES_protection, %function
nitd_AES_protection:
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
	ldr	r3, .L381
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #104448
	add	r3, r3, #376
	ldr	r2, .L381+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L382:
	.align	2
.L381:
	.word	memory_region_cpu1
	.word	20085
	.fnend
	.size	nitd_AES_protection, .-nitd_AES_protection
	.align	2
	.global	zupapa_AES_protection
	.type	zupapa_AES_protection, %function
zupapa_AES_protection:
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
	ldr	r3, .L384
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #524288
	add	r3, r3, #656
	ldr	r2, .L384+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L385:
	.align	2
.L384:
	.word	memory_region_cpu1
	.word	20081
	.fnend
	.size	zupapa_AES_protection, .-zupapa_AES_protection
	.align	2
	.global	sengoku3_AES_protection
	.type	sengoku3_AES_protection, %function
sengoku3_AES_protection:
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
	ldr	r3, .L387
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3328
	add	r3, r3, #4
	ldr	r2, .L387+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L388:
	.align	2
.L387:
	.word	memory_region_cpu1
	.word	20081
	.fnend
	.size	sengoku3_AES_protection, .-sengoku3_AES_protection
	.align	2
	.global	mslug4_AES_protection
	.type	mslug4_AES_protection, %function
mslug4_AES_protection:
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
	ldr	r3, .L390
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #44288
	add	r3, r3, #140
	ldr	r2, .L390+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L391:
	.align	2
.L390:
	.word	memory_region_cpu1
	.word	20085
	.fnend
	.size	mslug4_AES_protection, .-mslug4_AES_protection
	.align	2
	.global	rotd_AES_protection
	.type	rotd_AES_protection, %function
rotd_AES_protection:
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
	ldr	r3, .L393
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4096
	add	r3, r3, #32
	ldr	r2, .L393+4
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #9216
	ldr	r2, .L393+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L394:
	.align	2
.L393:
	.word	memory_region_cpu1
	.word	20081
	.fnend
	.size	rotd_AES_protection, .-rotd_AES_protection
	.align	2
	.global	matrim_AES_protection
	.type	matrim_AES_protection, %function
matrim_AES_protection:
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
	ldr	r3, .L396
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4160
	add	r3, r3, #16
	ldr	r2, .L396+4
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L397:
	.align	2
.L396:
	.word	memory_region_cpu1
	.word	20085
	.fnend
	.size	matrim_AES_protection, .-matrim_AES_protection
	.align	2
	.global	state_save_driver
	.type	state_save_driver, %function
state_save_driver:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #2
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #2
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+20
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+24
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+28
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+32
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+36
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+40
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+44
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+48
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+52
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+56
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+60
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+64
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+68
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+72
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r2, .L399+76
	ldrb	r2, [r2, #0]	@ zero_extendqisi2
	strb	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+80
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+84
	mov	r2, r3
	mov	r3, r1
	mov	ip, #16
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #16
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+88
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+92
	mov	r2, r3
	mov	r3, r1
	mov	ip, #2
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #2
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	ldr	r1, .L399+96
	mov	r2, r3
	mov	r3, r1
	mov	ip, #8192
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L399
	ldr	r3, [r3, #0]
	add	r2, r3, #8192
	ldr	r3, .L399
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L400:
	.align	2
.L399:
	.word	state_buffer
	.word	neogeo_driver_type
	.word	raster_enable
	.word	scanline_read
	.word	raster_counter
	.word	display_counter
	.word	display_position_interrupt_counter
	.word	display_position_interrupt_control
	.word	display_position_interrupt_pending
	.word	vblank_interrupt_pending
	.word	sound_code
	.word	result_code
	.word	pending_command
	.word	auto_animation_speed
	.word	auto_animation_disabled
	.word	auto_animation_counter
	.word	auto_animation_frame_counter
	.word	main_cpu_vector_table_source
	.word	controller_select
	.word	save_ram_unlocked
	.word	m68k_second_bank
	.word	z80_bank
	.word	neogeo_prot_data
	.word	neogeo_rng
	.word	CartRAM
	.fnend
	.size	state_save_driver, .-state_save_driver
	.align	2
	.global	state_load_driver
	.type	state_load_driver, %function
state_load_driver:
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
	ldr	r3, .L402
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+16
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+24
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+28
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+32
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+36
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+40
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+44
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+48
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+52
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+56
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+60
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+64
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+68
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+72
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-32]
	bl	fread
	sub	r3, fp, #8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	sub	r3, fp, #24
	mov	r0, r3
	mov	r1, #1
	mov	r2, #16
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+76
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+80
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, .L402+84
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8192
	ldr	r3, [fp, #-32]
	bl	fread
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	neogeo_set_cpu1_second_bank
	ldr	r3, [fp, #-24]
	mov	r0, #0
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	ldr	r3, [fp, #-20]
	mov	r0, #1
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	ldr	r3, [fp, #-16]
	mov	r0, #2
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	ldr	r3, [fp, #-12]
	mov	r0, #3
	mov	r1, r3
	bl	neogeo_set_cpu2_bank
	ldr	r3, .L402+64
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	set_main_cpu_vector_table_source
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L403:
	.align	2
.L402:
	.word	neogeo_driver_type
	.word	raster_enable
	.word	scanline_read
	.word	raster_counter
	.word	display_counter
	.word	display_position_interrupt_counter
	.word	display_position_interrupt_control
	.word	display_position_interrupt_pending
	.word	vblank_interrupt_pending
	.word	sound_code
	.word	result_code
	.word	pending_command
	.word	auto_animation_counter
	.word	auto_animation_speed
	.word	auto_animation_disabled
	.word	auto_animation_frame_counter
	.word	main_cpu_vector_table_source
	.word	controller_select
	.word	save_ram_unlocked
	.word	neogeo_prot_data
	.word	neogeo_rng
	.word	CartRAM
	.fnend
	.size	state_load_driver, .-state_load_driver
	.data
	.align	2
	.type	bankoffset.7656, %object
	.size	bankoffset.7656, 256
bankoffset.7656:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	4159488
	.word	5208064
	.word	4192256
	.word	5240832
	.word	4225024
	.word	5273600
	.word	4257792
	.word	5306368
	.word	4286464
	.word	5335040
	.word	4315136
	.word	5363712
	.word	4341760
	.word	5390336
	.word	5388288
	.word	6436864
	.word	5398528
	.word	6447104
	.word	5406720
	.word	6455296
	.word	5414912
	.word	6463488
	.word	5421056
	.word	6469632
	.word	5427200
	.word	6475776
	.word	5433344
	.word	6481920
	.word	6389760
	.word	6393856
	.word	6397952
	.word	6400000
	.space	112
	.align	2
	.type	bankoffset.7642, %object
	.size	bankoffset.7642, 256
bankoffset.7642:
	.word	0
	.word	131072
	.word	262144
	.word	393216
	.word	458752
	.word	589824
	.word	720896
	.word	851968
	.word	917504
	.word	983040
	.word	1179648
	.word	1245184
	.word	1310720
	.word	1376256
	.word	1572864
	.word	1638400
	.word	1703936
	.word	1769472
	.word	1966080
	.word	2031616
	.word	2097152
	.word	2162688
	.word	2359296
	.word	2424832
	.word	2490368
	.word	2555904
	.word	2752512
	.word	2818048
	.word	2883584
	.word	2949120
	.word	3145728
	.word	3211264
	.word	3276800
	.word	3342336
	.word	3538944
	.word	3604480
	.word	3670016
	.word	3735552
	.word	3932160
	.word	3997696
	.word	4194304
	.word	4259840
	.word	4456448
	.word	4521984
	.word	4587520
	.word	4653056
	.word	4849664
	.word	4915200
	.word	4980736
	.space	60
	.align	2
	.type	bankoffset.7631, %object
	.size	bankoffset.7631, 256
bankoffset.7631:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	2621440
	.word	3670016
	.word	2949120
	.word	3997696
	.word	2916352
	.word	3964928
	.word	4194304
	.word	5242880
	.word	4325376
	.word	5373952
	.word	4456448
	.word	5505024
	.word	5865472
	.word	6914048
	.word	5898240
	.word	6946816
	.word	5931008
	.word	6979584
	.word	5963776
	.word	7012352
	.word	5996544
	.word	7045120
	.word	6029312
	.word	7077888
	.word	6062080
	.word	7110656
	.word	6094848
	.word	7143424
	.word	4554752
	.word	5603328
	.word	4587520
	.word	5636096
	.word	4620288
	.word	5668864
	.word	4653056
	.word	5701632
	.word	4685824
	.word	5734400
	.word	4718592
	.word	5767168
	.word	4751360
	.word	5799936
	.word	4784128
	.word	5832704
	.word	6127616
	.word	7176192
	.word	6160384
	.word	7208960
	.word	6193152
	.word	7241728
	.word	7241728
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align	2
	.type	bankoffset.7624, %object
	.size	bankoffset.7624, 256
bankoffset.7624:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	2621440
	.word	3670016
	.word	2949120
	.word	3997696
	.word	3080192
	.word	4128768
	.word	4194304
	.word	5242880
	.word	4325376
	.word	5373952
	.word	4456448
	.word	5505024
	.word	4816896
	.word	5865472
	.word	4849664
	.word	5898240
	.word	4882432
	.word	5931008
	.word	4915200
	.word	5963776
	.word	4947968
	.word	5996544
	.word	4980736
	.word	6029312
	.word	5013504
	.word	6062080
	.word	5046272
	.word	6094848
	.word	4554752
	.word	5603328
	.word	4587520
	.word	5636096
	.word	4620288
	.word	5668864
	.word	4653056
	.word	5701632
	.word	4685824
	.word	5734400
	.word	4718592
	.word	5767168
	.word	4751360
	.word	5799936
	.word	4784128
	.word	5832704
	.word	6094848
	.word	6127616
	.word	6160384
	.word	6193152
	.word	6225920
	.word	6258688
	.word	6291456
	.space	36
	.align	2
	.type	bankoffset.7610, %object
	.size	bankoffset.7610, 256
bankoffset.7610:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	3981312
	.word	5029888
	.word	4136960
	.word	5185536
	.word	4225024
	.word	5273600
	.word	4247552
	.word	5296128
	.word	4290560
	.word	5339136
	.word	4327424
	.word	5376000
	.word	4343808
	.word	5392384
	.word	4362240
	.word	5410816
	.word	4384768
	.word	5433344
	.word	4397056
	.word	5445632
	.word	5558272
	.word	5574656
	.word	5664768
	.word	5842944
	.word	5801984
	.word	5773312
	.word	5871616
	.word	5851136
	.word	5865472
	.space	124
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
