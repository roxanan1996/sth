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
static unsigned int ng8[] = {4U, 0U};



static void Always_29_0(char *t0)
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

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 4304);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng1)));
    xsi_vlogtype_concat(t4, 9, 9, 3U, t6, 4, t7, 4, t5, 1);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 9);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1048U);
    t5 = *((char **)t3);
    xsi_vlogtype_concat(t4, 9, 9, 2U, t5, 4, t2, 5);
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 9);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1048U);
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
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 9);
    xsi_set_current_line(33, ng0);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB8:    t2 = (t0 + 2568);
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

LAB9:    xsi_set_current_line(33, ng0);

LAB11:    xsi_set_current_line(36, ng0);
    t8 = (t0 + 2088);
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
LAB21:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t28, 0, 8);
    xsi_vlog_signed_arith_rshift(t28, 9, t5, 9, t6, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t28, 0, 0, 9);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB8;

LAB13:    xsi_set_current_line(37, ng0);

LAB22:    goto LAB21;

LAB15:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 2088);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2248);
    t8 = (t7 + 56U);
    t19 = *((char **)t8);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 9, t6, 9, t19, 9);
    t20 = (t0 + 2088);
    xsi_vlogvar_assign_value(t20, t4, 0, 0, 9);
    goto LAB21;

LAB17:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 2088);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2408);
    t8 = (t7 + 56U);
    t19 = *((char **)t8);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 9, t6, 9, t19, 9);
    t20 = (t0 + 2088);
    xsi_vlogvar_assign_value(t20, t4, 0, 0, 9);
    goto LAB21;

LAB19:    xsi_set_current_line(40, ng0);

LAB23:    goto LAB21;

}

static void Cont_47_1(char *t0)
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

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2088);
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
    t14 = (t0 + 4416);
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
    t27 = (t0 + 4320);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Always_50_2(char *t0)
{
    char t7[8];
    char t10[8];
    char t23[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4336);
    *((int *)t2) = 1;
    t3 = (t0 + 4016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 1048U);
    t9 = *((char **)t8);
    memset(t10, 0, 8);
    t8 = (t9 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 & 15U);
    if (t15 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t8) != 0)
        goto LAB20;

LAB21:    t17 = (t10 + 4);
    t18 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB22;

LAB23:    memcpy(t30, t10, 8);

LAB24:    memset(t7, 0, 8);
    t62 = (t7 + 4);
    t63 = (t30 + 4);
    t64 = *((unsigned int *)t30);
    t65 = (~(t64));
    *((unsigned int *)t7) = t65;
    *((unsigned int *)t62) = 0;
    if (*((unsigned int *)t63) != 0)
        goto LAB33;

LAB32:    t70 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t70 & 255U);
    t71 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t71 & 255U);
    t72 = (t0 + 1928);
    xsi_vlogvar_assign_value(t72, t7, 0, 0, 8);
    goto LAB17;

LAB9:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    *((unsigned int *)t7) = t13;
    t3 = (t4 + 4);
    t9 = (t8 + 4);
    t16 = (t7 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t9);
    t18 = (t14 | t15);
    *((unsigned int *)t16) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB34;

LAB35:
LAB36:    t17 = (t0 + 1928);
    xsi_vlogvar_assign_value(t17, t7, 0, 0, 8);
    goto LAB17;

LAB11:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 8, t4, 4, t8, 4);
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 8);
    goto LAB17;

LAB13:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_minus(t7, 8, t4, 4, t8, 4);
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 8);
    goto LAB17;

LAB15:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB17;

LAB18:    *((unsigned int *)t10) = 1;
    goto LAB21;

LAB20:    t16 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB21;

LAB22:    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t21 = (t22 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (~(t24));
    t26 = *((unsigned int *)t22);
    t27 = (t26 & t25);
    t28 = (t27 & 15U);
    if (t28 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t21) != 0)
        goto LAB27;

LAB28:    t31 = *((unsigned int *)t10);
    t32 = *((unsigned int *)t23);
    t33 = (t31 & t32);
    *((unsigned int *)t30) = t33;
    t34 = (t10 + 4);
    t35 = (t23 + 4);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t35);
    t39 = (t37 | t38);
    *((unsigned int *)t36) = t39;
    t40 = *((unsigned int *)t36);
    t41 = (t40 != 0);
    if (t41 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB24;

LAB25:    *((unsigned int *)t23) = 1;
    goto LAB28;

LAB27:    t29 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB28;

LAB29:    t42 = *((unsigned int *)t30);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t30) = (t42 | t43);
    t44 = (t10 + 4);
    t45 = (t23 + 4);
    t46 = *((unsigned int *)t10);
    t47 = (~(t46));
    t48 = *((unsigned int *)t44);
    t49 = (~(t48));
    t50 = *((unsigned int *)t23);
    t51 = (~(t50));
    t52 = *((unsigned int *)t45);
    t53 = (~(t52));
    t54 = (t47 & t49);
    t55 = (t51 & t53);
    t56 = (~(t54));
    t57 = (~(t55));
    t58 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t58 & t56);
    t59 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t59 & t57);
    t60 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t60 & t56);
    t61 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t61 & t57);
    goto LAB31;

LAB33:    t66 = *((unsigned int *)t7);
    t67 = *((unsigned int *)t63);
    *((unsigned int *)t7) = (t66 | t67);
    t68 = *((unsigned int *)t62);
    t69 = *((unsigned int *)t63);
    *((unsigned int *)t62) = (t68 | t69);
    goto LAB32;

LAB34:    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t7) = (t24 | t25);
    goto LAB36;

}


extern void work_m_00000000001465072750_1755210615_init()
{
	static char *pe[] = {(void *)Always_29_0,(void *)Cont_47_1,(void *)Always_50_2};
	xsi_register_didat("work_m_00000000001465072750_1755210615", "isim/testestes_isim_beh.exe.sim/work/m_00000000001465072750_1755210615.didat");
	xsi_register_executes(pe);
}
