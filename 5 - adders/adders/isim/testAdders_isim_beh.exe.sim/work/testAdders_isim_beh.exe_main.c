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

char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_0296546773_2486610892_init();
    work_a_4094647134_2486610892_init();
    work_a_3798783386_0632001823_init();
    work_a_1447267994_2486610892_init();
    work_a_1130988942_0632001823_init();
    work_a_3898804508_0632001823_init();
    work_a_4176295737_3212880686_init();
    work_a_0734482308_0632001823_init();
    work_a_0968965769_0632001823_init();
    work_a_3614601828_3212880686_init();
    work_a_1170951316_2372691052_init();


    xsi_register_tops("work_a_1170951316_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
