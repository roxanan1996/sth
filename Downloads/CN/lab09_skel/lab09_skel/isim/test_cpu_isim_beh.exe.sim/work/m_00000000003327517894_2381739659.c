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
static const char *ng0 = "C:/Users/Alex/Desktop/CN/lab09_skel/lab09_skel/memory.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {65793U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {131586U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {197379U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {263172U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {328965U, 0U};
static unsigned int ng12[] = {6U, 0U};
static unsigned int ng13[] = {394758U, 0U};
static unsigned int ng14[] = {7U, 0U};
static unsigned int ng15[] = {460551U, 0U};



static void Always_9_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:
LAB8:    t2 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng10)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng12)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng14)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t7 == 1)
        goto LAB21;

LAB22:
LAB7:    xsi_set_current_line(15, ng0);
    t4 = ((char*)((ng1)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);

LAB23:    goto LAB2;

LAB9:    xsi_set_current_line(17, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(19, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(21, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(23, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(25, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(27, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB21:    xsi_set_current_line(29, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

}


extern void work_m_00000000003327517894_2381739659_init()
{
	static char *pe[] = {(void *)Always_9_0};
	xsi_register_didat("work_m_00000000003327517894_2381739659", "isim/test_cpu_isim_beh.exe.sim/work/m_00000000003327517894_2381739659.didat");
	xsi_register_executes(pe);
}
