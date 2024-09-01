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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/New folder (6)/group no 14/group no 14/test bench/insmem.vhd";
extern char *IEEE_P_3499444699;



static void work_a_0123541133_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5200U);
    t3 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t2, t1);
    t4 = (t0 + 1608U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t1 = (t0 + 1608U);
    t4 = *((char **)t1);
    t3 = *((int *)t4);
    t6 = (t3 - 0);
    t7 = (t6 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t3);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 2992);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 2912);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_0123541133_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0123541133_3212880686_p_0};
	xsi_register_didat("work_a_0123541133_3212880686", "isim/PIPELINE_isim_beh.exe.sim/work/a_0123541133_3212880686.didat");
	xsi_register_executes(pe);
}
