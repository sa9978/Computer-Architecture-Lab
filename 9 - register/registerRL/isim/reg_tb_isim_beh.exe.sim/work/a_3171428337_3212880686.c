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
static const char *ng0 = "C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/9/register/registerRL/register.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3171428337_3212880686_p_0(char *t0)
{
    char t17[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 6101);
    t6 = (t0 + 3552);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6105);
    t12 = xsi_mem_cmp(t1, t2, 2U);
    if (t12 == 1)
        goto LAB11;

LAB14:    t6 = (t0 + 6107);
    t13 = xsi_mem_cmp(t6, t2, 2U);
    if (t13 == 1)
        goto LAB12;

LAB15:
LAB13:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 3616);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB10:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t2 = (t0 + 3616);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(56, ng0);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t14 = (3 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t8 = (t9 + t16);
    t18 = ((IEEE_P_2592010699) + 4024);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 3;
    t21 = (t20 + 4U);
    *((int *)t21) = 1;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (1 - 3);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t23;
    t10 = xsi_base_array_concat(t10, t17, t18, (char)99, (unsigned char)2, (char)97, t8, t19, (char)101);
    t23 = (1U + 3U);
    t3 = (4U != t23);
    if (t3 == 1)
        goto LAB17;

LAB18:    t21 = (t0 + 3616);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t10, 4U);
    xsi_driver_first_trans_fast(t21);
    goto LAB10;

LAB12:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t14 = (3 - 2);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 2;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t12 = (0 - 2);
    t23 = (t12 * -1);
    t23 = (t23 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t23;
    t5 = xsi_base_array_concat(t5, t17, t6, (char)97, t1, t19, (char)99, (unsigned char)2, (char)101);
    t23 = (3U + 1U);
    t3 = (4U != t23);
    if (t3 == 1)
        goto LAB19;

LAB20:    t8 = (t0 + 3616);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t18 = (t10 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t5, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB10;

LAB16:;
LAB17:    xsi_size_not_matching(4U, t23, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(4U, t23, 0);
    goto LAB20;

}


extern void work_a_3171428337_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3171428337_3212880686_p_0};
	xsi_register_didat("work_a_3171428337_3212880686", "isim/reg_tb_isim_beh.exe.sim/work/a_3171428337_3212880686.didat");
	xsi_register_executes(pe);
}
