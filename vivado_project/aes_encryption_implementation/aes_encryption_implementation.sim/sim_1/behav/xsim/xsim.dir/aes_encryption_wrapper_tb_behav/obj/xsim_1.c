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
extern void execute_357(char*, char *);
extern void execute_356(char*, char *);
extern void execute_36(char*, char *);
extern void execute_67(char*, char *);
extern void execute_19(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_22(char*, char *);
extern void execute_39(char*, char *);
extern void execute_41(char*, char *);
extern void execute_43(char*, char *);
extern void execute_45(char*, char *);
extern void execute_70(char*, char *);
extern void execute_72(char*, char *);
extern void execute_74(char*, char *);
extern void execute_76(char*, char *);
extern void execute_284(char*, char *);
extern void execute_137(char*, char *);
extern void execute_273(char*, char *);
extern void execute_265(char*, char *);
extern void execute_267(char*, char *);
extern void execute_269(char*, char *);
extern void execute_271(char*, char *);
extern void execute_142(char*, char *);
extern void execute_144(char*, char *);
extern void execute_146(char*, char *);
extern void execute_148(char*, char *);
extern void execute_152(char*, char *);
extern void execute_154(char*, char *);
extern void execute_156(char*, char *);
extern void execute_158(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_172(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_178(char*, char *);
extern void execute_184(char*, char *);
extern void execute_186(char*, char *);
extern void execute_188(char*, char *);
extern void execute_190(char*, char *);
extern void execute_194(char*, char *);
extern void execute_196(char*, char *);
extern void execute_198(char*, char *);
extern void execute_200(char*, char *);
extern void execute_204(char*, char *);
extern void execute_206(char*, char *);
extern void execute_208(char*, char *);
extern void execute_210(char*, char *);
extern void execute_214(char*, char *);
extern void execute_216(char*, char *);
extern void execute_218(char*, char *);
extern void execute_220(char*, char *);
extern void execute_225(char*, char *);
extern void execute_227(char*, char *);
extern void execute_229(char*, char *);
extern void execute_231(char*, char *);
extern void execute_235(char*, char *);
extern void execute_237(char*, char *);
extern void execute_239(char*, char *);
extern void execute_241(char*, char *);
extern void execute_245(char*, char *);
extern void execute_247(char*, char *);
extern void execute_249(char*, char *);
extern void execute_251(char*, char *);
extern void execute_255(char*, char *);
extern void execute_257(char*, char *);
extern void execute_259(char*, char *);
extern void execute_261(char*, char *);
extern void execute_276(char*, char *);
extern void execute_278(char*, char *);
extern void execute_280(char*, char *);
extern void execute_282(char*, char *);
extern void execute_355(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[80] = {(funcp)execute_11, (funcp)execute_357, (funcp)execute_356, (funcp)execute_36, (funcp)execute_67, (funcp)execute_19, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_22, (funcp)execute_39, (funcp)execute_41, (funcp)execute_43, (funcp)execute_45, (funcp)execute_70, (funcp)execute_72, (funcp)execute_74, (funcp)execute_76, (funcp)execute_284, (funcp)execute_137, (funcp)execute_273, (funcp)execute_265, (funcp)execute_267, (funcp)execute_269, (funcp)execute_271, (funcp)execute_142, (funcp)execute_144, (funcp)execute_146, (funcp)execute_148, (funcp)execute_152, (funcp)execute_154, (funcp)execute_156, (funcp)execute_158, (funcp)execute_162, (funcp)execute_164, (funcp)execute_166, (funcp)execute_168, (funcp)execute_172, (funcp)execute_174, (funcp)execute_176, (funcp)execute_178, (funcp)execute_184, (funcp)execute_186, (funcp)execute_188, (funcp)execute_190, (funcp)execute_194, (funcp)execute_196, (funcp)execute_198, (funcp)execute_200, (funcp)execute_204, (funcp)execute_206, (funcp)execute_208, (funcp)execute_210, (funcp)execute_214, (funcp)execute_216, (funcp)execute_218, (funcp)execute_220, (funcp)execute_225, (funcp)execute_227, (funcp)execute_229, (funcp)execute_231, (funcp)execute_235, (funcp)execute_237, (funcp)execute_239, (funcp)execute_241, (funcp)execute_245, (funcp)execute_247, (funcp)execute_249, (funcp)execute_251, (funcp)execute_255, (funcp)execute_257, (funcp)execute_259, (funcp)execute_261, (funcp)execute_276, (funcp)execute_278, (funcp)execute_280, (funcp)execute_282, (funcp)execute_355, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 80;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/aes_encryption_wrapper_tb_behav/xsim.reloc",  (void **)funcTab, 80);
	iki_vhdl_file_variable_register(dp + 30336);
	iki_vhdl_file_variable_register(dp + 30392);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/aes_encryption_wrapper_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/aes_encryption_wrapper_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/aes_encryption_wrapper_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/aes_encryption_wrapper_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/aes_encryption_wrapper_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
