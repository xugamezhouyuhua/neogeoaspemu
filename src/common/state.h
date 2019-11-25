/******************************************************************************

	state.c

	�X�e�[�g�Z�[�u/���[�h

******************************************************************************/

#ifndef STATE_H
#define STATE_H

#ifdef SAVE_STATE

#include <string.h>

#define STATE_BUFFER_SIZE	0x50000		// MVSPSP: 0x4f2b6

#define state_save_byte(v, n)	{ memcpy(state_buffer, v, 1 * n); state_buffer += 1 * n; }
#define state_save_word(v, n)	{ memcpy(state_buffer, v, 2 * n); state_buffer += 2 * n; }
#define state_save_long(v, n)	{ memcpy(state_buffer, v, 4 * n); state_buffer += 4 * n; }
#define state_save_float(v, n)	{ memcpy(state_buffer, v, 4 * n); state_buffer += 4 * n; }
#define state_save_double(v, n)	{ memcpy(state_buffer, v, 8 * n); state_buffer += 8 * n; }

#define state_load_byte(v, n)	fread(v, 1, 1*n, fp);
#define state_load_word(v, n)	fread(v, 1, 2*n, fp);
#define state_load_long(v, n)	fread(v, 1, 4*n, fp);
#define state_load_float(v, n)	fread(v, 1, 4*n, fp);
#define state_load_double(v, n)	fread(v, 1, 8*n, fp);
#define state_load_skip(n)		fseek(fp, n, SEEK_CUR);

#define STATE_SAVE(name)	void state_save_##name(void)
#define STATE_LOAD(name)	void state_load_##name(FILE *fp)

extern char date_str[16];
extern char time_str[16];
extern char stver_str[16];
extern int  current_state_version;
extern int  state_version;
extern UINT8 *state_buffer;
extern int  state_reload_bios;

int state_save(int slot);
int state_load(int slot);

void state_make_thumbnail(void);
int state_load_thumbnail(int slot);
void state_clear_thumbnail(void);

#endif /* SAVE_STATE */

#endif /* STATE_H */
