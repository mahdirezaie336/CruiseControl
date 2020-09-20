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
static const char *ng0 = "C:/Users/Rezaie/Xilinx-workspace/LabProject/JK_FF.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};



static void Cont_31_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2248);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t6) == 0)
        goto LAB4;

LAB6:    t12 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    t13 = (t3 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t3) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB9;

LAB8:    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3832);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memset(t27, 0, 8);
    t28 = 1U;
    t29 = t28;
    t30 = (t3 + 4);
    t31 = *((unsigned int *)t3);
    t28 = (t28 & t31);
    t32 = *((unsigned int *)t30);
    t29 = (t29 & t32);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t34 | t28);
    t35 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t35 | t29);
    xsi_driver_vfirst_trans(t23, 0, 0);
    t36 = (t0 + 3736);
    *((int *)t36) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t3) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB8;

}

static void Always_33_1(char *t0)
{
    char t13[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t14;
    char *t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3752);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    xsi_vlogtype_concat(t13, 32, 2, 2U, t4, 1, t3, 1);

LAB12:    t2 = ((char*)((ng1)));
    t14 = xsi_vlog_unsigned_case_compare(t13, 32, t2, 32);
    if (t14 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng2)));
    t14 = xsi_vlog_unsigned_case_compare(t13, 32, t2, 32);
    if (t14 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t14 = xsi_vlog_unsigned_case_compare(t13, 32, t2, 32);
    if (t14 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t14 = xsi_vlog_unsigned_case_compare(t13, 32, t2, 32);
    if (t14 == 1)
        goto LAB19;

LAB20:
LAB21:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(35, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2248);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    goto LAB8;

LAB9:    xsi_set_current_line(38, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB11;

LAB13:    xsi_set_current_line(41, ng0);
    t5 = (t0 + 2248);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t15 = (t0 + 2248);
    xsi_vlogvar_assign_value(t15, t12, 0, 0, 1);
    goto LAB21;

LAB15:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB21;

LAB17:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB21;

LAB19:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t16, 0, 8);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB25;

LAB23:    if (*((unsigned int *)t11) == 0)
        goto LAB22;

LAB24:    t12 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t12) = 1;

LAB25:    t15 = (t16 + 4);
    t17 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t16) = t19;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB27;

LAB26:    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 1U);
    t25 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t25 & 1U);
    t26 = (t0 + 2248);
    xsi_vlogvar_assign_value(t26, t16, 0, 0, 1);
    goto LAB21;

LAB22:    *((unsigned int *)t16) = 1;
    goto LAB25;

LAB27:    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t20 | t21);
    t22 = *((unsigned int *)t15);
    t23 = *((unsigned int *)t17);
    *((unsigned int *)t15) = (t22 | t23);
    goto LAB26;

}


extern void work_m_00000000003472814732_3368711439_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Always_33_1};
	xsi_register_didat("work_m_00000000003472814732_3368711439", "isim/three_bit_test_isim_beh.exe.sim/work/m_00000000003472814732_3368711439.didat");
	xsi_register_executes(pe);
}
