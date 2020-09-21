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
static const char *ng0 = "C:/Users/Rezaie/Xilinx-workspace/LabProject/five_bit_ROM.v";
static int ng1[] = {1, 0};
static int ng2[] = {15, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {2, 0};
static int ng5[] = {0, 0};
static int ng6[] = {4, 0};
static int ng7[] = {8, 0};
static int ng8[] = {3, 0};
static int ng9[] = {16, 0};
static int ng10[] = {17, 0};



static void Always_27_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);

LAB12:    t2 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t30 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t30 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t30 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);

LAB25:
LAB11:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(29, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1448);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 1);
    goto LAB11;

LAB13:    xsi_set_current_line(32, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1448);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB15:    xsi_set_current_line(33, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 1448);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB17:    xsi_set_current_line(34, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1448);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB19:    xsi_set_current_line(35, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 1448);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

LAB21:    xsi_set_current_line(36, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t0 + 1448);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB25;

}


extern void work_m_00000000001111279924_0872624662_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000001111279924_0872624662", "isim/rom_tb_isim_beh.exe.sim/work/m_00000000001111279924_0872624662.didat");
	xsi_register_executes(pe);
}
