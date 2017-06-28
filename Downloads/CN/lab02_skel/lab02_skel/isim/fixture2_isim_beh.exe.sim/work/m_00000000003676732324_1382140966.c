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
static const char *ng0 = "C:/Users/Alex/Desktop/CN/lab02_skel/lab02_skel/lab12.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {1U, 1U};



static void Always_23_0(char *t0)
{
    char t4[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);

LAB5:    xsi_set_current_line(25, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 2, 2, 2U, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(26, ng0);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    goto LAB17;

LAB9:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t5, 0, 0, 1);
    goto LAB17;

LAB11:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1048U);
    t5 = *((char **)t3);
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t5, 0, 0, 1);
    goto LAB17;

LAB13:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1048U);
    t5 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t5 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t5);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB21;

LAB19:    if (*((unsigned int *)t3) == 0)
        goto LAB18;

LAB20:    t6 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t6) = 1;

LAB21:    t7 = (t11 + 4);
    t9 = (t5 + 4);
    t17 = *((unsigned int *)t5);
    t18 = (~(t17));
    *((unsigned int *)t11) = t18;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t9) != 0)
        goto LAB23;

LAB22:    t23 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t23 & 1U);
    t24 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t24 & 1U);
    t10 = (t0 + 1608);
    xsi_vlogvar_assign_value(t10, t11, 0, 0, 1);
    goto LAB17;

LAB18:    *((unsigned int *)t11) = 1;
    goto LAB21;

LAB23:    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t11) = (t19 | t20);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t7) = (t21 | t22);
    goto LAB22;

}


extern void work_m_00000000003676732324_1382140966_init()
{
	static char *pe[] = {(void *)Always_23_0};
	xsi_register_didat("work_m_00000000003676732324_1382140966", "isim/fixture2_isim_beh.exe.sim/work/m_00000000003676732324_1382140966.didat");
	xsi_register_executes(pe);
}
