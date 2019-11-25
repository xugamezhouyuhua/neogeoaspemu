/******************************************************************************

	dipsw.c

	MVS DIP�����å��O��

******************************************************************************/

#include "mvs.h"

#define MENU_BLANK		{ "\n", 0, 0x00, 0, 0, { NULL } }

#define MENU_RETURN_CHS	{ "�������˵�", 1, 0x00, 0, 0, { NULL } }

#define MENU_RETURN_CHT	{ "�������ˆ�", 1, 0x00, 0, 0, { NULL } }

#define MENU_RETURN_JP	{ "�ᥤ���˥�`�ˑ���", 1, 0x00, 0, 0, { NULL } }

#define MENU_RETURN		{ "Return to main menu", 1, 0x00, 0, 0, { NULL } }

#define MENU_END		{ "\0", 0, 0x00, 0, 0, { NULL } }


/******************************************************************************
	����`�Х����
******************************************************************************/

int neogeo_hard_dipsw;


/******************************************************************************
	��`���똋����
******************************************************************************/

/*--------------------------------------
  �˜�
--------------------------------------*/

static dipswitch_t dipswitch_default[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Autofire (in some games)",	1, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	MENU_BLANK,
	MENU_RETURN,
	MENU_END,
};
static dipswitch_t dipswitch_default_jp[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Autofire (in some games)",	1, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	MENU_BLANK,
	MENU_RETURN_JP,
	MENU_END,
};
static dipswitch_t dipswitch_default_chs[] =
{
	{ "���Կ���",					1, 0x01, 0, 1, { "��","��" } },
	{ "Ͷ�Ҳ�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�Զ�����(������Ϸ)",			1, 0x04, 0, 1, { "��","��" } },
	{ "��������",					1, 0x38, 0, 4, { "��","1","2","3","4" } },
	{ "�������",					1, 0x40, 0, 1, { "��","��" } },
	{ "����",						1, 0x80, 0, 1, { "��","��" } },
	MENU_BLANK,
	MENU_RETURN_CHS,
	MENU_END,
};
static dipswitch_t dipswitch_default_cht[] =
{
	{ "�yԇ�_�P",					1, 0x01, 0, 1, { "�P","�_" } },
	{ "Ͷ�Ų�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�Ԅ��B�l(�����[��)",			1, 0x04, 0, 1, { "�P","�_" } },
	{ "�C�O��",					1, 0x38, 0, 4, { "�P","1","2","3","4" } },
	{ "���M�[��",					1, 0x40, 0, 1, { "�P","�_" } },
	{ "�i��",						1, 0x80, 0, 1, { "�P","�_" } },
	MENU_BLANK,
	MENU_RETURN_CHT,
	MENU_END,
};

/*--------------------------------------
  PCB
--------------------------------------*/

static dipswitch_t dipswitch_pcb[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Autofire (in some games)",	1, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	{ "Hard Dip 3 (Region)",		1, 0x01, 0, 1, { "Asia","Japan" } },
	MENU_BLANK,
	MENU_RETURN,
	MENU_END,
};
static dipswitch_t dipswitch_pcb_jp[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Autofire (in some games)",	1, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	{ "Hard Dip 3 (Region)",		1, 0x01, 0, 1, { "Asia","Japan" } },
	MENU_BLANK,
	MENU_RETURN_JP,
	MENU_END,
};
static dipswitch_t dipswitch_pcb_chs[] =
{
	{ "���Կ���",					1, 0x01, 0, 1, { "��","��" } },
	{ "Ͷ�Ҳ�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�Զ�����(������Ϸ)",			1, 0x04, 0, 1, { "��","��" } },
	{ "��������",					1, 0x38, 0, 4, { "��","1","2","3","4" } },
	{ "�������",					1, 0x40, 0, 1, { "��","��" } },
	{ "����",						1, 0x80, 0, 1, { "��","��" } },
	{ "Ӳ��Dip 3(����)",			1, 0x01, 0, 1, { "�ǰ�","�հ�" } },
	MENU_BLANK,
	MENU_RETURN_CHS,
	MENU_END,
};
static dipswitch_t dipswitch_pcb_cht[] =
{
	{ "�yԇ�_�P",					1, 0x01, 0, 1, { "�P","�_" } },
	{ "Ͷ�Ų�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�Ԅ��B�l(�����[��)",			1, 0x04, 0, 1, { "�P","�_" } },
	{ "�C�O��",					1, 0x38, 0, 4, { "�P","1","2","3","4" } },
	{ "���M�[��",					1, 0x40, 0, 1, { "�P","�_" } },
	{ "�i��",						1, 0x80, 0, 1, { "�P","�_" } },
	{ "Ӳ��Dip 3(�^��)",			1, 0x01, 0, 1, { "����","�հ�" } },
	MENU_BLANK,
	MENU_RETURN_CHT,
	MENU_END,
};

/*--------------------------------------
  ��ȸ
--------------------------------------*/

static dipswitch_t dipswitch_mjneogeo[] =
{	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Mahjong Control Panel",		0, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	MENU_BLANK,
	MENU_RETURN,
	MENU_END,
};
static dipswitch_t dipswitch_mjneogeo_jp[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Mahjong Control Panel",		0, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	MENU_BLANK,
	MENU_RETURN_JP,
	MENU_END,
};
static dipswitch_t dipswitch_mjneogeo_chs[] =
{
	{ "���Կ���",					1, 0x01, 0, 1, { "��","��" } },
	{ "Ͷ�Ҳ�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�齫������",					1, 0x04, 0, 1, { "��","��" } },
	{ "��������",					1, 0x38, 0, 4, { "��","1","2","3","4" } },
	{ "�������",					1, 0x40, 0, 1, { "��","��" } },
	{ "����",						1, 0x80, 0, 1, { "��","��" } },
	MENU_BLANK,
	MENU_RETURN_CHS,
	MENU_END,
};
static dipswitch_t dipswitch_mjneogeo_cht[] =
{
	{ "�yԇ�_�P",					1, 0x01, 0, 1, { "�P","�_" } },
	{ "Ͷ�Ų�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�錢������",					1, 0x04, 0, 1, { "�P","�_" } },
	{ "�C�O��",					1, 0x38, 0, 4, { "�P","1","2","3","4" } },
	{ "���M�[��",					1, 0x40, 0, 1, { "�P","�_" } },
	{ "�i��",						1, 0x80, 0, 1, { "�P","�_" } },
	MENU_BLANK,
	MENU_RETURN_CHT,
	MENU_END,
};


/*--------------------------------------
  kog
--------------------------------------*/

#if !RELEASE
static dipswitch_t dipswitch_kog[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Autofire (in some games)",	1, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	{ "Title Language",				1, 0x01, 0, 1, { "Chinese","English" } },
	MENU_BLANK,
	MENU_RETURN,
	MENU_END,
};
static dipswitch_t dipswitch_kog_jp[] =
{
	{ "Test Switch",				1, 0x01, 0, 1, { "Off","On" } },
	{ "Coin Chutes",				1, 0x02, 0, 1, { "1", "2" } },
	{ "Mahjong Control Panel",		0, 0x04, 0, 1, { "Off","On" } },
	{ "COMM Settings",				1, 0x38, 0, 4, { "Off","1","2","3","4" } },
	{ "Free Play",					1, 0x40, 0, 1, { "Off","On" } },
	{ "Freeze",						1, 0x80, 0, 1, { "Off","On" } },
	{ "Title Language",				1, 0x01, 0, 1, { "Chinese","English" } },
	MENU_BLANK,
	MENU_RETURN_JP,
	MENU_END,
};
static dipswitch_t dipswitch_kog_chs[] =
{
	{ "���Կ���",					1, 0x01, 0, 1, { "��","��" } },
	{ "Ͷ�Ҳ�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�Զ�����(������Ϸ)",			1, 0x04, 0, 1, { "��","��" } },
	{ "��������",					1, 0x38, 0, 4, { "��","1","2","3","4" } },
	{ "�������",					1, 0x40, 0, 1, { "��","��" } },
	{ "����",						1, 0x80, 0, 1, { "��","��" } },
	{ "��������",					1, 0x01, 0, 1, { "����","Ӣ��" } },
	MENU_BLANK,
	MENU_RETURN_CHS,
	MENU_END,
};
static dipswitch_t dipswitch_kog_cht[] =
{
	{ "�yԇ�_�P",					1, 0x01, 0, 1, { "�P","�_" } },
	{ "Ͷ�Ų�",						1, 0x02, 0, 1, { "1", "2" } },
	{ "�Ԅ��B�l(�����[��)",			1, 0x04, 0, 1, { "�P","�_" } },
	{ "�C�O��",					1, 0x38, 0, 4, { "�P","1","2","3","4" } },
	{ "���M�[��",					1, 0x40, 0, 1, { "�P","�_" } },
	{ "�i��",						1, 0x80, 0, 1, { "�P","�_" } },
	{ "���}�Z��",					1, 0x01, 0, 1, { "����","Ӣ��" } },
	MENU_BLANK,
	MENU_RETURN_CHT,
	MENU_END,
};
#endif


dipswitch_t *load_dipswitch(void)
{
	UINT8 value = ~neogeo_dipswitch;
	dipswitch_t *dipswitch = NULL;
	if (ui_text_get_language() == LANG_JAPANESE)
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo_jp;
			break;

		default:
			dipswitch = dipswitch_default_jp;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb_jp;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog_jp;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
	}
#endif
	else if (ui_text_get_language() == LANG_CHINESE_SIMPLIFIED)
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo_chs;
			break;

		default:
			dipswitch = dipswitch_default_chs;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb_chs;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog_chs;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
	}
#endif
	else if (ui_text_get_language() == LANG_CHINESE_TRADITIONAL)
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo_cht;
			break;

		default:
			dipswitch = dipswitch_default_cht;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb_cht;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog_cht;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
	}
#endif
	else
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo;
			break;

		default:
			dipswitch = dipswitch_default;
			break;
	}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog;
			dipswitch[6].value = neogeo_hard_dipsw;
		}
#endif
	}

	dipswitch[0].value = (value & 0x01) != 0;
	dipswitch[1].value = (value & 0x02) != 0;
	dipswitch[2].value = (value & 0x04) != 0;
	dipswitch[4].value = (value & 0x40) != 0;
	dipswitch[5].value = (value & 0x80) != 0;

	switch (neogeo_dipswitch & 0x38)
	{
	case 0x00: dipswitch[3].value = 4; break;
	case 0x10: dipswitch[3].value = 3; break;
	case 0x20: dipswitch[3].value = 2; break;
	case 0x30: dipswitch[3].value = 1; break;
	case 0x38: dipswitch[3].value = 0; break;
	}

	return dipswitch;
}


void save_dipswitch(void)
{
	UINT8 value;
	dipswitch_t *dipswitch = NULL;
	if (ui_text_get_language() == LANG_JAPANESE)
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo_jp;
			break;

		default:
			dipswitch = dipswitch_default_jp;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb_jp;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog_jp;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#endif
	}
	else if (ui_text_get_language() == LANG_CHINESE_SIMPLIFIED)
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo_chs;
			break;

		default:
			dipswitch = dipswitch_default_chs;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb_chs;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog_chs;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#endif
	}
	else if (ui_text_get_language() == LANG_CHINESE_TRADITIONAL)
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo_cht;
			break;

		default:
			dipswitch = dipswitch_default_cht;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb_cht;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog_cht;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#endif
	}
	else
	{
		switch (neogeo_ngh)
		{
		case NGH_mahretsu:
		case NGH_janshin:
		case NGH_minasan:
		case NGH_bakatono:
		case NGH_fr2ch:
			dipswitch = dipswitch_mjneogeo;
			break;

		default:
			dipswitch = dipswitch_default;
			break;
		}

		if (machine_init_type == INIT_ms5pcb
		||	machine_init_type == INIT_svcpcb)
		{
			dipswitch = dipswitch_pcb;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#if !RELEASE
		else if (machine_init_type == INIT_kog)
		{
			dipswitch = dipswitch_kog;
			neogeo_hard_dipsw = dipswitch[6].value;
		}
#endif
	}
	value = 0;
	value |= (dipswitch[0].value != 0) ? 0x00: 0x01;
	value |= (dipswitch[1].value != 0) ? 0x00: 0x02;
	value |= (dipswitch[2].value != 0) ? 0x00: 0x04;
	value |= (dipswitch[4].value != 0) ? 0x00: 0x40;
	value |= (dipswitch[5].value != 0) ? 0x00: 0x80;
	switch (dipswitch[3].value)
	{
	case 0: value |= 0x38; break;
	case 1: value |= 0x30; break;
	case 2: value |= 0x20; break;
	case 3: value |= 0x10; break;
	case 4: value |= 0x00; break;
	}

	neogeo_dipswitch = value;
}
