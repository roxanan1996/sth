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
static const char *ng0 = "C:/Users/Alex/Desktop/CN/lab08_skel/lab08_skel/ual.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static int ng4[] = {4, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};



static void Always_26_0(char *t0)
{
    char t4[8];
    char t9[16];
    char t18[8];
    char t28[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    int t27;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t0 + 1368U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng1)));
    xsi_vlogtype_concat(t4, 9, 9, 3U, t6, 4, t7, 4, t5, 1);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 9);
    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    xsi_vlogtype_concat(t4, 9, 9, 2U, t5, 4, t2, 5);
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 9);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t3 = (t4 + 4);
    t6 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (~(t10));
    *((unsigned int *)t4) = t11;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t6) != 0)
        goto LAB7;

LAB6:    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 4294967295U);
    t17 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t17 & 4294967295U);
    t7 = ((char*)((ng2)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 32, t4, 32, t7, 32);
    xsi_vlogtype_concat(t9, 37, 37, 2U, t18, 32, t2, 5);
    t8 = (t0 + 2248);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 9);
    xsi_set_current_line(30, ng0);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB8:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB9;

LAB10:    goto LAB2;

LAB7:    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t4) = (t12 | t13);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t3) = (t14 | t15);
    goto LAB6;

LAB9:    xsi_set_current_line(30, ng0);

LAB11:    xsi_set_current_line(33, ng0);
    t8 = (t0 + 1928);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    memset(t18, 0, 8);
    t21 = (t18 + 4);
    t22 = (t20 + 4);
    t15 = *((unsigned int *)t20);
    t16 = (t15 >> 0);
    *((unsigned int *)t18) = t16;
    t17 = *((unsigned int *)t22);
    t23 = (t17 >> 0);
    *((unsigned int *)t21) = t23;
    t24 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t24 & 3U);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t25 & 3U);

LAB12:    t26 = ((char*)((ng1)));
    t27 = xsi_vlog_unsigned_case_compare(t18, 2, t26, 2);
    if (t27 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t27 = xsi_vlog_unsigned_case_compare(t18, 2, t2, 2);
    if (t27 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t27 = xsi_vlog_unsigned_case_compare(t18, 2, t2, 2);
    if (t27 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t27 = xsi_vlog_unsigned_case_compare(t18, 2, t2, 2);
    if (t27 == 1)
        goto LAB19;

LAB20:
LAB21:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t28, 0, 8);
    xsi_vlog_signed_arith_rshift(t28, 9, t5, 9, t6, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t28, 0, 0, 9);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB8;

LAB13:    xsi_set_current_line(34, ng0);

LAB22:    goto LAB21;

LAB15:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1928);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2088);
    t8 = (t7 + 56U);
    t19 = *((char **)t8);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 9, t6, 9, t19, 9);
    t20 = (t0 + 1928);
    xsi_vlogvar_assign_value(t20, t4, 0, 0, 9);
    goto LAB21;

LAB17:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1928);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2248);
    t8 = (t7 + 56U);
    t19 = *((char **)t8);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 9, t6, 9, t19, 9);
    t20 = (t0 + 1928);
    xsi_vlogvar_assign_value(t20, t4, 0, 0, 9);
    goto LAB21;

LAB19:    xsi_set_current_line(37, ng0);

LAB23:    goto LAB21;

}

static void Cont_44_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1928);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 1);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 255U);
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = (t0 + 3992);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 255U;
    t20 = t19;
    t21 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 7);
    t27 = (t0 + 3912);
    *((int *)t27) = 1;

LAB1:    return;
}


extern void work_m_00000000000588389788_1755210615_init()
{
	static char *pe[] = {(void *)Always_26_0,(void *)Cont_44_1};
	xsi_register_didat("work_m_00000000000588389788_1755210615", "isim/ualfix_isim_beh.exe.sim/work/m_00000000000588389788_1755210615.didat");
	xsi_register_executes(pe);
}
