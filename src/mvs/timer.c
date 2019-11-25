/******************************************************************************

	timer.c

	�^�C�}�[�Ǘ�

	�����x�����コ���邽�߁A���x�𗎂Ƃ���int�^�őS�ď������Ă��܂��B
	  float/double���ƁA�N���X�X�H�[�h�̑��x���啝�ɒቺ���܂��B
	  (YM2610�̃^�C�}���荞�݉񐔂��ɒ[�ɑ�������)

******************************************************************************/

#include "mvs.h"


#define CPU_NOTACTIVE	-1


/******************************************************************************
	�}�N��
******************************************************************************/

/*------------------------------------------------------
	CPU�̏�������Ԃ��擾 (�P��:�}�C�N���b)
------------------------------------------------------*/

#define cpu_elapsed_time(cpunum)	\
	(cpu[cpunum].cycles - *cpu[cpunum].icount) / cpu[cpunum].cycles_per_usec


/******************************************************************************
	���[�J���\����
******************************************************************************/

typedef struct timer_t
{
	int expire;
	int enable;
	int param;
	void (*callback)(int param);
} TIMER;

typedef struct cpuinfo_t
{
	int (*execute)(int cycles);
	int *icount;
	int cycles_per_usec;
	int cycles;
	int suspended;
} CPUINFO;


static TIMER ALIGN_DATA timer[MAX_TIMER];
static CPUINFO ALIGN_DATA cpu[MAX_CPU];


/******************************************************************************
	���[�J���ϐ�
******************************************************************************/

static int global_offset;
static int base_time;
static int frame_base;
static int timer_ticks;
static int timer_left;
static int active_cpu;
static int scanline;


/******************************************************************************
	�v���g�^�C�v
******************************************************************************/

void (*timer_update_cpu)(void);
static void timer_update_cpu_normal(void);
static void timer_update_cpu_raster(void);


/******************************************************************************
	���[�J���֐�
******************************************************************************/

/*------------------------------------------------------
	CPU�����s
------------------------------------------------------*/

static void cpu_execute(int cpunum)
{
	if (!cpu[cpunum].suspended)
	{
		active_cpu = cpunum;
		cpu[cpunum].cycles = timer_ticks * cpu[cpunum].cycles_per_usec;
		cpu[cpunum].execute(cpu[cpunum].cycles);
		active_cpu = CPU_NOTACTIVE;
	}
}


/*------------------------------------------------------
	CPU�̃X�s��������(�g���K)
------------------------------------------------------*/

static void cpu_spin_trigger(int param)
{
	timer_suspend_cpu(param, 1, SUSPEND_REASON_SPIN);
}


/*------------------------------------------------------
	���݂̕b�ȉ��̎��Ԃ��擾 (�P��:�}�C�N���b)
------------------------------------------------------*/

static int getabsolutetime(void)
{
	int time = base_time + frame_base;

	if (active_cpu != CPU_NOTACTIVE)
		time += cpu_elapsed_time(active_cpu);

	return time;
}


/******************************************************************************
	�O���[�o���֐�
******************************************************************************/

/*------------------------------------------------------
	�^�C�}�[�����Z�b�g
------------------------------------------------------*/

void timer_reset(void)
{
	global_offset = 0;
	base_time     = 0;
	frame_base    = 0;

	active_cpu = CPU_NOTACTIVE;
	memset(&timer, 0, sizeof(timer));

	cpu[CPU_M68000].execute   = m68000_execute;
	cpu[CPU_M68000].icount    = &C68K.ICount;
	cpu[CPU_M68000].cycles    = 0;
	cpu[CPU_M68000].suspended = 0;
	cpu[CPU_M68000].cycles_per_usec = 12000000 / 1000000;

	cpu[CPU_Z80].execute   = z80_execute;
	cpu[CPU_Z80].icount    = &CZ80.ICount;
	cpu[CPU_Z80].cycles    = 0;
	cpu[CPU_Z80].suspended = 0;
	cpu[CPU_Z80].cycles_per_usec = 4000000 / 1000000;
}


/*------------------------------------------------------
	CPU�X�V�n���h����ݒ�
------------------------------------------------------*/

void timer_set_update_handler(void)
{
	if (neogeo_driver_type == NORMAL)
		timer_update_cpu = timer_update_cpu_normal;
	else
		timer_update_cpu = timer_update_cpu_raster;
}


/*------------------------------------------------------
	CPU���T�X�y���h����
------------------------------------------------------*/

void timer_suspend_cpu(int cpunum, int state, int reason)
{
	if (state == 0)
		cpu[cpunum].suspended |= reason;
	else
		cpu[cpunum].suspended &= ~reason;
}


/*------------------------------------------------------
	�^�C�}�[��L��/�����ɂ���
------------------------------------------------------*/

int timer_enable(int which, int enable)
{
	int old = timer[which].enable;

	timer[which].enable = enable;
	return old;
}


/*------------------------------------------------------
	�^�C�}�[���Z�b�g
------------------------------------------------------*/

void timer_adjust(int which, int duration, int param, void (*callback)(int param))
{
	int time = getabsolutetime();

	timer[which].expire = time + duration;
	timer[which].param = param;
	timer[which].callback = callback;

	if (active_cpu != CPU_NOTACTIVE)
	{
		// CPU���s���̏ꍇ�́A�c��T�C�N����j��
		int cycles_left = *cpu[active_cpu].icount;
		int time_left = cycles_left / cpu[active_cpu].cycles_per_usec;

		if (duration < timer_left)
		{
			timer_ticks -= time_left;
			cpu[active_cpu].cycles -= cycles_left;
			*cpu[active_cpu].icount = 0;

			if (active_cpu == CPU_Z80)
			{
				// CPU2�̏ꍇ��CPU1���~��CPU1��������]���ȃT�C�N���𒲐�����
				if (!timer[CPUSPIN_TIMER].enable)
				{
					timer_suspend_cpu(CPU_M68000, 0, SUSPEND_REASON_SPIN);
					timer[CPUSPIN_TIMER].enable = 1;
					timer[CPUSPIN_TIMER].expire = time + time_left;
					timer[CPUSPIN_TIMER].param = CPU_M68000;
					timer[CPUSPIN_TIMER].callback = cpu_spin_trigger;
				}
			}
		}
	}
}


/*------------------------------------------------------
	�^�C�}�[���Z�b�g
------------------------------------------------------*/

void timer_set(int which, int duration, int param, void (*callback)(int param))
{
	timer[which].enable = 1;
	timer_adjust(which, duration, param, callback);
}


/*------------------------------------------------------
	���݂̃G�~�����[�V�������Ԃ��擾 (�P��:�b)
------------------------------------------------------*/

float timer_get_time(void)
{
	int time = getabsolutetime();

	return (float)global_offset + (float)time / 1000000.0;
}


/*------------------------------------------------------
	���݂̃X�L�������C�����擾
------------------------------------------------------*/

int timer_getscanline(void)
{
	if (neogeo_driver_type == RASTER)
		return scanline;
	else
		return 1 + (frame_base >> 6);
}


/*------------------------------------------------------
	CPU���X�V
------------------------------------------------------*/

static void timer_update_cpu_normal(void)
{
	int i, time;

	frame_base = 0;
	timer_left = TICKS_PER_FRAME;

	while (timer_left > 0)
	{
		timer_ticks = timer_left;
		time = base_time + frame_base;

		for (i = 0; i < MAX_TIMER; i++)
		{
			if (timer[i].enable)
			{
				if (timer[i].expire - time <= 0)
				{
					timer[i].enable = 0;
					timer[i].callback(timer[i].param);
				}
			}
			if (timer[i].enable)
			{
				if (timer[i].expire - time < timer_ticks)
					timer_ticks = timer[i].expire - time;
			}
		}

		if (Loop != LOOP_EXEC) return;

		cpu_execute(CPU_M68000);
		cpu_execute(CPU_Z80);

		frame_base += timer_ticks;
		timer_left -= timer_ticks;
	}

	neogeo_vblank_interrupt();

	base_time += TICKS_PER_FRAME;
	if (base_time >= 1000000)
	{
		global_offset++;
		base_time -= 1000000;

		for (i = 0; i < MAX_TIMER; i++)
		{
			if (timer[i].enable)
				timer[i].expire -= 1000000;
		}
	}

	if (!skip_this_frame()) neogeo_screenrefresh();
}


/*------------------------------------------------------
	CPU���X�V (���X�^�h���C�o�p)
------------------------------------------------------*/

static void timer_update_cpu_raster(void)
{
	int i, time;

	frame_base = 0;
	timer_left = 0;

	for (scanline = 1; scanline <= RASTER_LINES; scanline++)
	{
		timer_left += USECS_PER_SCANLINE;

		while (timer_left > 0)
		{
			timer_ticks = timer_left;
			time = base_time + frame_base;

			for (i = 0; i < MAX_TIMER; i++)
			{
				if (timer[i].enable)
				{
					if (timer[i].expire - time <= 0)
					{
						timer[i].enable = 0;
						timer[i].callback(timer[i].param);
					}
				}
				if (timer[i].enable)
				{
					if (timer[i].expire - time < timer_ticks)
						timer_ticks = timer[i].expire - time;
				}
			}

			if (Loop != LOOP_EXEC) return;

			cpu_execute(CPU_M68000);
			cpu_execute(CPU_Z80);

			frame_base += timer_ticks;
			timer_left -= timer_ticks;
		}

		neogeo_raster_interrupt(scanline);
	}

	base_time += TICKS_PER_FRAME;
	if (base_time >= 1000000)
	{
		global_offset++;
		base_time -= 1000000;

		for (i = 0; i < MAX_TIMER; i++)
		{
			if (timer[i].enable)
				timer[i].expire -= 1000000;
		}
	}

	if (!skip_this_frame()) neogeo_screenrefresh();
}


/******************************************************************************
	�Z�[�u/���[�h �X�e�[�g
******************************************************************************/

#ifdef SAVE_STATE

STATE_SAVE( timer )
{
	int i;

	state_save_long(&global_offset, 1);
	state_save_long(&base_time, 1);

	state_save_long(&cpu[0].suspended, 1);
	state_save_long(&cpu[1].suspended, 1);

	for (i = 0; i < MAX_TIMER; i++)
	{
		state_save_long(&timer[i].expire, 1);
		state_save_long(&timer[i].enable, 1);
		state_save_long(&timer[i].param, 1);
	}
}

STATE_LOAD( timer )
{
	int i;

	state_load_long(&global_offset, 1);
	state_load_long(&base_time, 1);

	state_load_long(&cpu[0].suspended, 1);
	state_load_long(&cpu[1].suspended, 1);

	for (i = 0; i < MAX_TIMER; i++)
	{
		state_load_long(&timer[i].expire, 1);
		state_load_long(&timer[i].enable, 1);
		state_load_long(&timer[i].param, 1);
	}

	timer_left  = 0;
	timer_ticks = 0;
	frame_base  = 0;
	active_cpu = CPU_NOTACTIVE;

	timer[YM2610_TIMERA].callback    = timer_callback_2610;
	timer[YM2610_TIMERB].callback    = timer_callback_2610;
	timer[SOUNDLATCH_TIMER].callback = neogeo_sound_write;
	timer[CPUSPIN_TIMER].callback    = cpu_spin_trigger;
	timer[WATCHDOG_TIMER].callback   = watchdog_callback;
}

#endif /* SAVE_STATE */
