/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void simprim_a_3395610110_2220797900_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 1568);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void simprim_a_3395610110_2220797900_0183313365_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_0183313365", "isim/tb_neanderf_isim_par.exe.sim/simprim/a_3395610110_2220797900_0183313365.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_0028402920_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_0028402920", "isim/tb_neanderf_isim_par.exe.sim/simprim/a_3395610110_2220797900_0028402920.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_0007540447_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_0007540447", "isim/tb_neanderf_isim_par.exe.sim/simprim/a_3395610110_2220797900_0007540447.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_3072217653_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_3072217653", "isim/tb_neanderf_isim_par.exe.sim/simprim/a_3395610110_2220797900_3072217653.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_0433961640_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_0433961640", "isim/tb_neanderf_isim_par.exe.sim/simprim/a_3395610110_2220797900_0433961640.didat");
	xsi_register_executes(pe);
}
