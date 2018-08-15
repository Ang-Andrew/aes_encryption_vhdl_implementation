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
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_20(char*, char *);
extern void execute_365(char*, char *);
extern void execute_364(char*, char *);
extern void execute_44(char*, char *);
extern void execute_75(char*, char *);
extern void execute_27(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_30(char*, char *);
extern void execute_47(char*, char *);
extern void execute_49(char*, char *);
extern void execute_51(char*, char *);
extern void execute_53(char*, char *);
extern void execute_78(char*, char *);
extern void execute_80(char*, char *);
extern void execute_82(char*, char *);
extern void execute_84(char*, char *);
extern void execute_292(char*, char *);
extern void execute_145(char*, char *);
extern void execute_281(char*, char *);
extern void execute_273(char*, char *);
extern void execute_275(char*, char *);
extern void execute_277(char*, char *);
extern void execute_279(char*, char *);
extern void execute_150(char*, char *);
extern void execute_152(char*, char *);
extern void execute_154(char*, char *);
extern void execute_156(char*, char *);
extern void execute_160(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_180(char*, char *);
extern void execute_182(char*, char *);
extern void execute_184(char*, char *);
extern void execute_186(char*, char *);
extern void execute_192(char*, char *);
extern void execute_194(char*, char *);
extern void execute_196(char*, char *);
extern void execute_198(char*, char *);
extern void execute_202(char*, char *);
extern void execute_204(char*, char *);
extern void execute_206(char*, char *);
extern void execute_208(char*, char *);
extern void execute_212(char*, char *);
extern void execute_214(char*, char *);
extern void execute_216(char*, char *);
extern void execute_218(char*, char *);
extern void execute_222(char*, char *);
extern void execute_224(char*, char *);
extern void execute_226(char*, char *);
extern void execute_228(char*, char *);
extern void execute_233(char*, char *);
extern void execute_235(char*, char *);
extern void execute_237(char*, char *);
extern void execute_239(char*, char *);
extern void execute_243(char*, char *);
extern void execute_245(char*, char *);
extern void execute_247(char*, char *);
extern void execute_249(char*, char *);
extern void execute_253(char*, char *);
extern void execute_255(char*, char *);
extern void execute_257(char*, char *);
extern void execute_259(char*, char *);
extern void execute_263(char*, char *);
extern void execute_265(char*, char *);
extern void execute_267(char*, char *);
extern void execute_269(char*, char *);
extern void execute_284(char*, char *);
extern void execute_286(char*, char *);
extern void execute_288(char*, char *);
extern void execute_290(char*, char *);
extern void execute_363(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[89] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_20, (funcp)execute_365, (funcp)execute_364, (funcp)execute_44, (funcp)execute_75, (funcp)execute_27, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_30, (funcp)execute_47, (funcp)execute_49, (funcp)execute_51, (funcp)execute_53, (funcp)execute_78, (funcp)execute_80, (funcp)execute_82, (funcp)execute_84, (funcp)execute_292, (funcp)execute_145, (funcp)execute_281, (funcp)execute_273, (funcp)execute_275, (funcp)execute_277, (funcp)execute_279, (funcp)execute_150, (funcp)execute_152, (funcp)execute_154, (funcp)execute_156, (funcp)execute_160, (funcp)execute_162, (funcp)execute_164, (funcp)execute_166, (funcp)execute_170, (funcp)execute_172, (funcp)execute_174, (funcp)execute_176, (funcp)execute_180, (funcp)execute_182, (funcp)execute_184, (funcp)execute_186, (funcp)execute_192, (funcp)execute_194, (funcp)execute_196, (funcp)execute_198, (funcp)execute_202, (funcp)execute_204, (funcp)execute_206, (funcp)execute_208, (funcp)execute_212, (funcp)execute_214, (funcp)execute_216, (funcp)execute_218, (funcp)execute_222, (funcp)execute_224, (funcp)execute_226, (funcp)execute_228, (funcp)execute_233, (funcp)execute_235, (funcp)execute_237, (funcp)execute_239, (funcp)execute_243, (funcp)execute_245, (funcp)execute_247, (funcp)execute_249, (funcp)execute_253, (funcp)execute_255, (funcp)execute_257, (funcp)execute_259, (funcp)execute_263, (funcp)execute_265, (funcp)execute_267, (funcp)execute_269, (funcp)execute_284, (funcp)execute_286, (funcp)execute_288, (funcp)execute_290, (funcp)execute_363, (funcp)vlog_transfunc_eventcallback, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_35};
const int NumRelocateId= 89;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/aes_encryption_implementation_tb_behav/xsim.reloc",  (void **)funcTab, 89);
	iki_vhdl_file_variable_register(dp + 35512);
	iki_vhdl_file_variable_register(dp + 35568);


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
