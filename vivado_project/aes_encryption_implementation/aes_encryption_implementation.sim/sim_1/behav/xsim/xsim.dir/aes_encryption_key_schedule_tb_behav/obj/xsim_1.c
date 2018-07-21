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
extern void execute_745(char*, char *);
extern void execute_746(char*, char *);
extern void execute_744(char*, char *);
extern void execute_17(char*, char *);
extern void execute_19(char*, char *);
extern void execute_21(char*, char *);
extern void execute_23(char*, char *);
extern void execute_29(char*, char *);
extern void execute_31(char*, char *);
extern void execute_33(char*, char *);
extern void execute_35(char*, char *);
extern void execute_41(char*, char *);
extern void execute_43(char*, char *);
extern void execute_45(char*, char *);
extern void execute_47(char*, char *);
extern void execute_53(char*, char *);
extern void execute_55(char*, char *);
extern void execute_57(char*, char *);
extern void execute_59(char*, char *);
extern void execute_65(char*, char *);
extern void execute_67(char*, char *);
extern void execute_69(char*, char *);
extern void execute_71(char*, char *);
extern void execute_94(char*, char *);
extern void execute_96(char*, char *);
extern void execute_98(char*, char *);
extern void execute_100(char*, char *);
extern void execute_104(char*, char *);
extern void execute_107(char*, char *);
extern void execute_109(char*, char *);
extern void execute_111(char*, char *);
extern void execute_113(char*, char *);
extern void execute_117(char*, char *);
extern void execute_120(char*, char *);
extern void execute_122(char*, char *);
extern void execute_124(char*, char *);
extern void execute_126(char*, char *);
extern void execute_130(char*, char *);
extern void execute_133(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_139(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_172(char*, char *);
extern void execute_175(char*, char *);
extern void execute_177(char*, char *);
extern void execute_179(char*, char *);
extern void execute_181(char*, char *);
extern void execute_185(char*, char *);
extern void execute_188(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_194(char*, char *);
extern void execute_198(char*, char *);
extern void execute_201(char*, char *);
extern void execute_203(char*, char *);
extern void execute_205(char*, char *);
extern void execute_207(char*, char *);
extern void execute_230(char*, char *);
extern void execute_232(char*, char *);
extern void execute_234(char*, char *);
extern void execute_236(char*, char *);
extern void execute_240(char*, char *);
extern void execute_243(char*, char *);
extern void execute_245(char*, char *);
extern void execute_247(char*, char *);
extern void execute_249(char*, char *);
extern void execute_253(char*, char *);
extern void execute_256(char*, char *);
extern void execute_258(char*, char *);
extern void execute_260(char*, char *);
extern void execute_262(char*, char *);
extern void execute_266(char*, char *);
extern void execute_269(char*, char *);
extern void execute_271(char*, char *);
extern void execute_273(char*, char *);
extern void execute_275(char*, char *);
extern void execute_298(char*, char *);
extern void execute_300(char*, char *);
extern void execute_302(char*, char *);
extern void execute_304(char*, char *);
extern void execute_308(char*, char *);
extern void execute_311(char*, char *);
extern void execute_313(char*, char *);
extern void execute_315(char*, char *);
extern void execute_317(char*, char *);
extern void execute_321(char*, char *);
extern void execute_324(char*, char *);
extern void execute_326(char*, char *);
extern void execute_328(char*, char *);
extern void execute_330(char*, char *);
extern void execute_334(char*, char *);
extern void execute_337(char*, char *);
extern void execute_339(char*, char *);
extern void execute_341(char*, char *);
extern void execute_343(char*, char *);
extern void execute_366(char*, char *);
extern void execute_368(char*, char *);
extern void execute_370(char*, char *);
extern void execute_372(char*, char *);
extern void execute_376(char*, char *);
extern void execute_379(char*, char *);
extern void execute_381(char*, char *);
extern void execute_383(char*, char *);
extern void execute_385(char*, char *);
extern void execute_389(char*, char *);
extern void execute_392(char*, char *);
extern void execute_394(char*, char *);
extern void execute_396(char*, char *);
extern void execute_398(char*, char *);
extern void execute_402(char*, char *);
extern void execute_405(char*, char *);
extern void execute_407(char*, char *);
extern void execute_409(char*, char *);
extern void execute_411(char*, char *);
extern void execute_434(char*, char *);
extern void execute_436(char*, char *);
extern void execute_438(char*, char *);
extern void execute_440(char*, char *);
extern void execute_444(char*, char *);
extern void execute_447(char*, char *);
extern void execute_449(char*, char *);
extern void execute_451(char*, char *);
extern void execute_453(char*, char *);
extern void execute_457(char*, char *);
extern void execute_460(char*, char *);
extern void execute_462(char*, char *);
extern void execute_464(char*, char *);
extern void execute_466(char*, char *);
extern void execute_470(char*, char *);
extern void execute_473(char*, char *);
extern void execute_475(char*, char *);
extern void execute_477(char*, char *);
extern void execute_479(char*, char *);
extern void execute_502(char*, char *);
extern void execute_504(char*, char *);
extern void execute_506(char*, char *);
extern void execute_508(char*, char *);
extern void execute_512(char*, char *);
extern void execute_515(char*, char *);
extern void execute_517(char*, char *);
extern void execute_519(char*, char *);
extern void execute_521(char*, char *);
extern void execute_525(char*, char *);
extern void execute_528(char*, char *);
extern void execute_530(char*, char *);
extern void execute_532(char*, char *);
extern void execute_534(char*, char *);
extern void execute_538(char*, char *);
extern void execute_541(char*, char *);
extern void execute_543(char*, char *);
extern void execute_545(char*, char *);
extern void execute_547(char*, char *);
extern void execute_570(char*, char *);
extern void execute_572(char*, char *);
extern void execute_574(char*, char *);
extern void execute_576(char*, char *);
extern void execute_580(char*, char *);
extern void execute_583(char*, char *);
extern void execute_585(char*, char *);
extern void execute_587(char*, char *);
extern void execute_589(char*, char *);
extern void execute_593(char*, char *);
extern void execute_596(char*, char *);
extern void execute_598(char*, char *);
extern void execute_600(char*, char *);
extern void execute_602(char*, char *);
extern void execute_606(char*, char *);
extern void execute_609(char*, char *);
extern void execute_611(char*, char *);
extern void execute_613(char*, char *);
extern void execute_615(char*, char *);
extern void execute_638(char*, char *);
extern void execute_640(char*, char *);
extern void execute_642(char*, char *);
extern void execute_644(char*, char *);
extern void execute_648(char*, char *);
extern void execute_651(char*, char *);
extern void execute_653(char*, char *);
extern void execute_655(char*, char *);
extern void execute_657(char*, char *);
extern void execute_661(char*, char *);
extern void execute_664(char*, char *);
extern void execute_666(char*, char *);
extern void execute_668(char*, char *);
extern void execute_670(char*, char *);
extern void execute_674(char*, char *);
extern void execute_677(char*, char *);
extern void execute_679(char*, char *);
extern void execute_681(char*, char *);
extern void execute_683(char*, char *);
extern void execute_706(char*, char *);
extern void execute_708(char*, char *);
extern void execute_710(char*, char *);
extern void execute_712(char*, char *);
extern void execute_716(char*, char *);
extern void execute_719(char*, char *);
extern void execute_721(char*, char *);
extern void execute_723(char*, char *);
extern void execute_725(char*, char *);
extern void execute_729(char*, char *);
extern void execute_732(char*, char *);
extern void execute_734(char*, char *);
extern void execute_736(char*, char *);
extern void execute_738(char*, char *);
extern void execute_742(char*, char *);
extern void execute_75(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_78(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[215] = {(funcp)execute_745, (funcp)execute_746, (funcp)execute_744, (funcp)execute_17, (funcp)execute_19, (funcp)execute_21, (funcp)execute_23, (funcp)execute_29, (funcp)execute_31, (funcp)execute_33, (funcp)execute_35, (funcp)execute_41, (funcp)execute_43, (funcp)execute_45, (funcp)execute_47, (funcp)execute_53, (funcp)execute_55, (funcp)execute_57, (funcp)execute_59, (funcp)execute_65, (funcp)execute_67, (funcp)execute_69, (funcp)execute_71, (funcp)execute_94, (funcp)execute_96, (funcp)execute_98, (funcp)execute_100, (funcp)execute_104, (funcp)execute_107, (funcp)execute_109, (funcp)execute_111, (funcp)execute_113, (funcp)execute_117, (funcp)execute_120, (funcp)execute_122, (funcp)execute_124, (funcp)execute_126, (funcp)execute_130, (funcp)execute_133, (funcp)execute_135, (funcp)execute_137, (funcp)execute_139, (funcp)execute_162, (funcp)execute_164, (funcp)execute_166, (funcp)execute_168, (funcp)execute_172, (funcp)execute_175, (funcp)execute_177, (funcp)execute_179, (funcp)execute_181, (funcp)execute_185, (funcp)execute_188, (funcp)execute_190, (funcp)execute_192, (funcp)execute_194, (funcp)execute_198, (funcp)execute_201, (funcp)execute_203, (funcp)execute_205, (funcp)execute_207, (funcp)execute_230, (funcp)execute_232, (funcp)execute_234, (funcp)execute_236, (funcp)execute_240, (funcp)execute_243, (funcp)execute_245, (funcp)execute_247, (funcp)execute_249, (funcp)execute_253, (funcp)execute_256, (funcp)execute_258, (funcp)execute_260, (funcp)execute_262, (funcp)execute_266, (funcp)execute_269, (funcp)execute_271, (funcp)execute_273, (funcp)execute_275, (funcp)execute_298, (funcp)execute_300, (funcp)execute_302, (funcp)execute_304, (funcp)execute_308, (funcp)execute_311, (funcp)execute_313, (funcp)execute_315, (funcp)execute_317, (funcp)execute_321, (funcp)execute_324, (funcp)execute_326, (funcp)execute_328, (funcp)execute_330, (funcp)execute_334, (funcp)execute_337, (funcp)execute_339, (funcp)execute_341, (funcp)execute_343, (funcp)execute_366, (funcp)execute_368, (funcp)execute_370, (funcp)execute_372, (funcp)execute_376, (funcp)execute_379, (funcp)execute_381, (funcp)execute_383, (funcp)execute_385, (funcp)execute_389, (funcp)execute_392, (funcp)execute_394, (funcp)execute_396, (funcp)execute_398, (funcp)execute_402, (funcp)execute_405, (funcp)execute_407, (funcp)execute_409, (funcp)execute_411, (funcp)execute_434, (funcp)execute_436, (funcp)execute_438, (funcp)execute_440, (funcp)execute_444, (funcp)execute_447, (funcp)execute_449, (funcp)execute_451, (funcp)execute_453, (funcp)execute_457, (funcp)execute_460, (funcp)execute_462, (funcp)execute_464, (funcp)execute_466, (funcp)execute_470, (funcp)execute_473, (funcp)execute_475, (funcp)execute_477, (funcp)execute_479, (funcp)execute_502, (funcp)execute_504, (funcp)execute_506, (funcp)execute_508, (funcp)execute_512, (funcp)execute_515, (funcp)execute_517, (funcp)execute_519, (funcp)execute_521, (funcp)execute_525, (funcp)execute_528, (funcp)execute_530, (funcp)execute_532, (funcp)execute_534, (funcp)execute_538, (funcp)execute_541, (funcp)execute_543, (funcp)execute_545, (funcp)execute_547, (funcp)execute_570, (funcp)execute_572, (funcp)execute_574, (funcp)execute_576, (funcp)execute_580, (funcp)execute_583, (funcp)execute_585, (funcp)execute_587, (funcp)execute_589, (funcp)execute_593, (funcp)execute_596, (funcp)execute_598, (funcp)execute_600, (funcp)execute_602, (funcp)execute_606, (funcp)execute_609, (funcp)execute_611, (funcp)execute_613, (funcp)execute_615, (funcp)execute_638, (funcp)execute_640, (funcp)execute_642, (funcp)execute_644, (funcp)execute_648, (funcp)execute_651, (funcp)execute_653, (funcp)execute_655, (funcp)execute_657, (funcp)execute_661, (funcp)execute_664, (funcp)execute_666, (funcp)execute_668, (funcp)execute_670, (funcp)execute_674, (funcp)execute_677, (funcp)execute_679, (funcp)execute_681, (funcp)execute_683, (funcp)execute_706, (funcp)execute_708, (funcp)execute_710, (funcp)execute_712, (funcp)execute_716, (funcp)execute_719, (funcp)execute_721, (funcp)execute_723, (funcp)execute_725, (funcp)execute_729, (funcp)execute_732, (funcp)execute_734, (funcp)execute_736, (funcp)execute_738, (funcp)execute_742, (funcp)execute_75, (funcp)execute_89, (funcp)execute_90, (funcp)execute_78, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_2};
const int NumRelocateId= 215;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/aes_encryption_key_schedule_tb_behav/xsim.reloc",  (void **)funcTab, 215);
	iki_vhdl_file_variable_register(dp + 103976);
	iki_vhdl_file_variable_register(dp + 104032);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/aes_encryption_key_schedule_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/aes_encryption_key_schedule_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/aes_encryption_key_schedule_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/aes_encryption_key_schedule_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/aes_encryption_key_schedule_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
