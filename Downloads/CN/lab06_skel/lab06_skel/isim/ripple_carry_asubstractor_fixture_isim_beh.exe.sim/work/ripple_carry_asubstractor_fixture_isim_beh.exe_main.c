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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003393107831_4122600708_init();
    work_m_00000000001034413735_3190593924_init();
    work_m_00000000003858397520_1844174774_init();
    work_m_00000000002283441945_0302648681_init();
    work_m_00000000001904776554_4271022812_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001904776554_4271022812");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
