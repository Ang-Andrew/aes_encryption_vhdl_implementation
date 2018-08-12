/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_11(char*, char *);
extern void execute_356(char*, char *);
extern void execute_355(char*, char *);
extern void execute_35(char*, char *);
extern void execute_66(char*, char *);
extern void execute_18(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_21(char*, char *);
extern void execute_38(char*, char *);
extern void execute_40(char*, char *);
extern void execute_42(char*, char *);
extern void execute_44(char*, char *);
extern void execute_69(char*, char *);
extern void execute_71(char*, char *);
extern void execute_73(char*, char *);
extern void execute_75(char*, char *);
extern void execute_283(char*, char *);
extern void execute_136(char*, char *);
extern void execute_272(char*, char *);
extern void execute_264(char*, char *);
extern void execute_266(char*, char *);
extern void execute_268(char*, char *);
extern void execute_270(char*, char *);
extern void execute_141(char*, char *);
extern void execute_143(char*, char *);
extern void execute_145(char*, char *);
extern void execute_147(char*, char *);
extern void execute_151(char*, char *);
extern void execute_153(char*, char *);
extern void execute_155(char*, char *);
extern void execute_157(char*, char *);
extern void execute_161(char*, char *);
extern void execute_163(char*, char *);
extern void execute_165(char*, char *);
extern void execute_167(char*, char *);
extern void execute_171(char*, char *);
extern void execute_173(char*, char *);
extern void execute_175(char*, char *);
extern void execute_177(char*, char *);
extern void execute_183(char*, char *);
extern void execute_185(char*, char *);
extern void execute_187(char*, char *);
extern void execute_189(char*, char *);
extern void execute_193(char*, char *);
extern void execute_195(char*, char *);
extern void execute_197(char*, char *);
extern void execute_199(char*, char *);
extern void execute_203(char*, char *);
extern void execute_205(char*, char *);
extern void execute_207(char*, char *);
extern void execute_209(char*, char *);
extern void execute_213(char*, char *);
extern void execute_215(char*, char *);
extern void execute_217(char*, char *);
extern void execute_219(char*, char *);
extern void execute_224(char*, char *);
extern void execute_226(char*, char *);
extern void execute_228(char*, char *);
extern void execute_230(char*, char *);
extern void execute_234(char*, char *);
extern void execute_236(char*, char *);
extern void execute_238(char*, char *);
extern void execute_240(char*, char *);
extern void execute_244(char*, char *);
extern void execute_246(char*, char *);
extern void execute_248(char*, char *);
extern void execute_250(char*, char *);
extern void execute_254(char*, char *);
extern void execute_256(char*, char *);
extern void execute_258(char*, char *);
extern void execute_260(char*, char *);
extern void execute_275(char*, char *);
extern void execute_277(char*, char *);
extern void execute_279(char*, char *);
extern void execute_281(char*, char *);
extern void execute_354(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[80] = {(funcp)execute_11, (funcp)execute_356, (funcp)execute_355, (funcp)execute_35, (funcp)execute_66, (funcp)execute_18, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_21, (funcp)execute_38, (funcp)execute_40, (funcp)execute_42, (funcp)execute_44, (funcp)execute_69, (funcp)execute_71, (funcp)execute_73, (funcp)execute_75, (funcp)execute_283, (funcp)execute_136, (funcp)execute_272, (funcp)execute_264, (funcp)execute_266, (funcp)execute_268, (funcp)execute_270, (funcp)execute_141, (funcp)execute_143, (funcp)execute_145, (funcp)execute_147, (funcp)execute_151, (funcp)execute_153, (funcp)execute_155, (funcp)execute_157, (funcp)execute_161, (funcp)execute_163, (funcp)execute_165, (funcp)execute_167, (funcp)execute_171, (funcp)execute_173, (funcp)execute_175, (funcp)execute_177, (funcp)execute_183, (funcp)execute_185, (funcp)execute_187, (funcp)execute_189, (funcp)execute_193, (funcp)execute_195, (funcp)execute_197, (funcp)execute_199, (funcp)execute_203, (funcp)execute_205, (funcp)execute_207, (funcp)execute_209, (funcp)execute_213, (funcp)execute_215, (funcp)execute_217, (funcp)execute_219, (funcp)execute_224, (funcp)execute_226, (funcp)execute_228, (funcp)execute_230, (funcp)execute_234, (funcp)execute_236, (funcp)execute_238, (funcp)execute_240, (funcp)execute_244, (funcp)execute_246, (funcp)execute_248, (funcp)execute_250, (funcp)execute_254, (funcp)execute_256, (funcp)execute_258, (funcp)execute_260, (funcp)execute_275, (funcp)execute_277, (funcp)execute_279, (funcp)execute_281, (funcp)execute_354, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_3};
const int NumRelocateId= 80;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/aes_encryption_implementation_tb_behav/xsim.reloc",  (void **)funcTab, 80);
	iki_vhdl_file_variable_register(dp + 30096);
	iki_vhdl_file_variable_register(dp + 30152);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/aes_encryption_implementation_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/aes_encryption_implementation_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern int xsim_argc_copy ;
extern char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/aes_encryption_implementation_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/aes_encryption_implementation_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/aes_encryption_implementation_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
