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
static const char *ng0 = "D:/New folder (6)/group no 14/group no 14/test bench/datamem.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1833817950_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t3 = (t0 + 6188U);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t3);
    t9 = (t8 - 268500992);
    t10 = (t0 + 2288U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    *((int *)t10) = t9;
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 / 4);
    t12 = (t9 - 0);
    t13 = (t12 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t1 = (t0 + 3672);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t16 = *((char **)t11);
    memcpy(t16, t3, 32U);
    xsi_driver_first_trans_delta(t1, t15, 32U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 6188U);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t9 = (t8 - 268500992);
    t7 = (t0 + 2288U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t9;
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 / 4);
    t12 = (t9 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t9);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t7 = (t0 + 3736);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t16 = (t11 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB9;

}


extern void work_a_1833817950_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1833817950_3212880686_p_0};
	xsi_register_didat("work_a_1833817950_3212880686", "isim/PIPELINE_isim_beh.exe.sim/work/a_1833817950_3212880686.didat");
	xsi_register_executes(pe);
}
