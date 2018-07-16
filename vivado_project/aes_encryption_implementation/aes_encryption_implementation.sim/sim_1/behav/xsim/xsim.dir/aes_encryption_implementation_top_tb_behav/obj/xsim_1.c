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
extern void execute_1034(char*, char *);
extern void execute_1035(char*, char *);
extern void execute_1033(char*, char *);
extern void execute_1032(char*, char *);
extern void execute_746(char*, char *);
extern void execute_19(char*, char *);
extern void execute_21(char*, char *);
extern void execute_23(char*, char *);
extern void execute_25(char*, char *);
extern void execute_31(char*, char *);
extern void execute_33(char*, char *);
extern void execute_35(char*, char *);
extern void execute_37(char*, char *);
extern void execute_43(char*, char *);
extern void execute_45(char*, char *);
extern void execute_47(char*, char *);
extern void execute_49(char*, char *);
extern void execute_55(char*, char *);
extern void execute_57(char*, char *);
extern void execute_59(char*, char *);
extern void execute_61(char*, char *);
extern void execute_67(char*, char *);
extern void execute_69(char*, char *);
extern void execute_71(char*, char *);
extern void execute_73(char*, char *);
extern void execute_96(char*, char *);
extern void execute_98(char*, char *);
extern void execute_100(char*, char *);
extern void execute_102(char*, char *);
extern void execute_106(char*, char *);
extern void execute_109(char*, char *);
extern void execute_111(char*, char *);
extern void execute_113(char*, char *);
extern void execute_115(char*, char *);
extern void execute_119(char*, char *);
extern void execute_122(char*, char *);
extern void execute_124(char*, char *);
extern void execute_126(char*, char *);
extern void execute_128(char*, char *);
extern void execute_132(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_139(char*, char *);
extern void execute_141(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_170(char*, char *);
extern void execute_174(char*, char *);
extern void execute_177(char*, char *);
extern void execute_179(char*, char *);
extern void execute_181(char*, char *);
extern void execute_183(char*, char *);
extern void execute_187(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_194(char*, char *);
extern void execute_196(char*, char *);
extern void execute_200(char*, char *);
extern void execute_203(char*, char *);
extern void execute_205(char*, char *);
extern void execute_207(char*, char *);
extern void execute_209(char*, char *);
extern void execute_232(char*, char *);
extern void execute_234(char*, char *);
extern void execute_236(char*, char *);
extern void execute_238(char*, char *);
extern void execute_242(char*, char *);
extern void execute_245(char*, char *);
extern void execute_247(char*, char *);
extern void execute_249(char*, char *);
extern void execute_251(char*, char *);
extern void execute_255(char*, char *);
extern void execute_258(char*, char *);
extern void execute_260(char*, char *);
extern void execute_262(char*, char *);
extern void execute_264(char*, char *);
extern void execute_268(char*, char *);
extern void execute_271(char*, char *);
extern void execute_273(char*, char *);
extern void execute_275(char*, char *);
extern void execute_277(char*, char *);
extern void execute_300(char*, char *);
extern void execute_302(char*, char *);
extern void execute_304(char*, char *);
extern void execute_306(char*, char *);
extern void execute_310(char*, char *);
extern void execute_313(char*, char *);
extern void execute_315(char*, char *);
extern void execute_317(char*, char *);
extern void execute_319(char*, char *);
extern void execute_323(char*, char *);
extern void execute_326(char*, char *);
extern void execute_328(char*, char *);
extern void execute_330(char*, char *);
extern void execute_332(char*, char *);
extern void execute_336(char*, char *);
extern void execute_339(char*, char *);
extern void execute_341(char*, char *);
extern void execute_343(char*, char *);
extern void execute_345(char*, char *);
extern void execute_368(char*, char *);
extern void execute_370(char*, char *);
extern void execute_372(char*, char *);
extern void execute_374(char*, char *);
extern void execute_378(char*, char *);
extern void execute_381(char*, char *);
extern void execute_383(char*, char *);
extern void execute_385(char*, char *);
extern void execute_387(char*, char *);
extern void execute_391(char*, char *);
extern void execute_394(char*, char *);
extern void execute_396(char*, char *);
extern void execute_398(char*, char *);
extern void execute_400(char*, char *);
extern void execute_404(char*, char *);
extern void execute_407(char*, char *);
extern void execute_409(char*, char *);
extern void execute_411(char*, char *);
extern void execute_413(char*, char *);
extern void execute_436(char*, char *);
extern void execute_438(char*, char *);
extern void execute_440(char*, char *);
extern void execute_442(char*, char *);
extern void execute_446(char*, char *);
extern void execute_449(char*, char *);
extern void execute_451(char*, char *);
extern void execute_453(char*, char *);
extern void execute_455(char*, char *);
extern void execute_459(char*, char *);
extern void execute_462(char*, char *);
extern void execute_464(char*, char *);
extern void execute_466(char*, char *);
extern void execute_468(char*, char *);
extern void execute_472(char*, char *);
extern void execute_475(char*, char *);
extern void execute_477(char*, char *);
extern void execute_479(char*, char *);
extern void execute_481(char*, char *);
extern void execute_504(char*, char *);
extern void execute_506(char*, char *);
extern void execute_508(char*, char *);
extern void execute_510(char*, char *);
extern void execute_514(char*, char *);
extern void execute_517(char*, char *);
extern void execute_519(char*, char *);
extern void execute_521(char*, char *);
extern void execute_523(char*, char *);
extern void execute_527(char*, char *);
extern void execute_530(char*, char *);
extern void execute_532(char*, char *);
extern void execute_534(char*, char *);
extern void execute_536(char*, char *);
extern void execute_540(char*, char *);
extern void execute_543(char*, char *);
extern void execute_545(char*, char *);
extern void execute_547(char*, char *);
extern void execute_549(char*, char *);
extern void execute_572(char*, char *);
extern void execute_574(char*, char *);
extern void execute_576(char*, char *);
extern void execute_578(char*, char *);
extern void execute_582(char*, char *);
extern void execute_585(char*, char *);
extern void execute_587(char*, char *);
extern void execute_589(char*, char *);
extern void execute_591(char*, char *);
extern void execute_595(char*, char *);
extern void execute_598(char*, char *);
extern void execute_600(char*, char *);
extern void execute_602(char*, char *);
extern void execute_604(char*, char *);
extern void execute_608(char*, char *);
extern void execute_611(char*, char *);
extern void execute_613(char*, char *);
extern void execute_615(char*, char *);
extern void execute_617(char*, char *);
extern void execute_640(char*, char *);
extern void execute_642(char*, char *);
extern void execute_644(char*, char *);
extern void execute_646(char*, char *);
extern void execute_650(char*, char *);
extern void execute_653(char*, char *);
extern void execute_655(char*, char *);
extern void execute_657(char*, char *);
extern void execute_659(char*, char *);
extern void execute_663(char*, char *);
extern void execute_666(char*, char *);
extern void execute_668(char*, char *);
extern void execute_670(char*, char *);
extern void execute_672(char*, char *);
extern void execute_676(char*, char *);
extern void execute_679(char*, char *);
extern void execute_681(char*, char *);
extern void execute_683(char*, char *);
extern void execute_685(char*, char *);
extern void execute_708(char*, char *);
extern void execute_710(char*, char *);
extern void execute_712(char*, char *);
extern void execute_714(char*, char *);
extern void execute_718(char*, char *);
extern void execute_721(char*, char *);
extern void execute_723(char*, char *);
extern void execute_725(char*, char *);
extern void execute_727(char*, char *);
extern void execute_731(char*, char *);
extern void execute_734(char*, char *);
extern void execute_736(char*, char *);
extern void execute_738(char*, char *);
extern void execute_740(char*, char *);
extern void execute_744(char*, char *);
extern void execute_77(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_80(char*, char *);
extern void execute_749(char*, char *);
extern void execute_751(char*, char *);
extern void execute_753(char*, char *);
extern void execute_755(char*, char *);
extern void execute_816(char*, char *);
extern void execute_944(char*, char *);
extern void execute_946(char*, char *);
extern void execute_948(char*, char *);
extern void execute_950(char*, char *);
extern void execute_821(char*, char *);
extern void execute_823(char*, char *);
extern void execute_825(char*, char *);
extern void execute_827(char*, char *);
extern void execute_831(char*, char *);
extern void execute_833(char*, char *);
extern void execute_835(char*, char *);
extern void execute_837(char*, char *);
extern void execute_841(char*, char *);
extern void execute_843(char*, char *);
extern void execute_845(char*, char *);
extern void execute_847(char*, char *);
extern void execute_851(char*, char *);
extern void execute_853(char*, char *);
extern void execute_855(char*, char *);
extern void execute_857(char*, char *);
extern void execute_863(char*, char *);
extern void execute_865(char*, char *);
extern void execute_867(char*, char *);
extern void execute_869(char*, char *);
extern void execute_873(char*, char *);
extern void execute_875(char*, char *);
extern void execute_877(char*, char *);
extern void execute_879(char*, char *);
extern void execute_883(char*, char *);
extern void execute_885(char*, char *);
extern void execute_887(char*, char *);
extern void execute_889(char*, char *);
extern void execute_893(char*, char *);
extern void execute_895(char*, char *);
extern void execute_897(char*, char *);
extern void execute_899(char*, char *);
extern void execute_904(char*, char *);
extern void execute_906(char*, char *);
extern void execute_908(char*, char *);
extern void execute_910(char*, char *);
extern void execute_914(char*, char *);
extern void execute_916(char*, char *);
extern void execute_918(char*, char *);
extern void execute_920(char*, char *);
extern void execute_924(char*, char *);
extern void execute_926(char*, char *);
extern void execute_928(char*, char *);
extern void execute_930(char*, char *);
extern void execute_934(char*, char *);
extern void execute_936(char*, char *);
extern void execute_938(char*, char *);
extern void execute_940(char*, char *);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[274] = {(funcp)execute_1034, (funcp)execute_1035, (funcp)execute_1033, (funcp)execute_1032, (funcp)execute_746, (funcp)execute_19, (funcp)execute_21, (funcp)execute_23, (funcp)execute_25, (funcp)execute_31, (funcp)execute_33, (funcp)execute_35, (funcp)execute_37, (funcp)execute_43, (funcp)execute_45, (funcp)execute_47, (funcp)execute_49, (funcp)execute_55, (funcp)execute_57, (funcp)execute_59, (funcp)execute_61, (funcp)execute_67, (funcp)execute_69, (funcp)execute_71, (funcp)execute_73, (funcp)execute_96, (funcp)execute_98, (funcp)execute_100, (funcp)execute_102, (funcp)execute_106, (funcp)execute_109, (funcp)execute_111, (funcp)execute_113, (funcp)execute_115, (funcp)execute_119, (funcp)execute_122, (funcp)execute_124, (funcp)execute_126, (funcp)execute_128, (funcp)execute_132, (funcp)execute_135, (funcp)execute_137, (funcp)execute_139, (funcp)execute_141, (funcp)execute_164, (funcp)execute_166, (funcp)execute_168, (funcp)execute_170, (funcp)execute_174, (funcp)execute_177, (funcp)execute_179, (funcp)execute_181, (funcp)execute_183, (funcp)execute_187, (funcp)execute_190, (funcp)execute_192, (funcp)execute_194, (funcp)execute_196, (funcp)execute_200, (funcp)execute_203, (funcp)execute_205, (funcp)execute_207, (funcp)execute_209, (funcp)execute_232, (funcp)execute_234, (funcp)execute_236, (funcp)execute_238, (funcp)execute_242, (funcp)execute_245, (funcp)execute_247, (funcp)execute_249, (funcp)execute_251, (funcp)execute_255, (funcp)execute_258, (funcp)execute_260, (funcp)execute_262, (funcp)execute_264, (funcp)execute_268, (funcp)execute_271, (funcp)execute_273, (funcp)execute_275, (funcp)execute_277, (funcp)execute_300, (funcp)execute_302, (funcp)execute_304, (funcp)execute_306, (funcp)execute_310, (funcp)execute_313, (funcp)execute_315, (funcp)execute_317, (funcp)execute_319, (funcp)execute_323, (funcp)execute_326, (funcp)execute_328, (funcp)execute_330, (funcp)execute_332, (funcp)execute_336, (funcp)execute_339, (funcp)execute_341, (funcp)execute_343, (funcp)execute_345, (funcp)execute_368, (funcp)execute_370, (funcp)execute_372, (funcp)execute_374, (funcp)execute_378, (funcp)execute_381, (funcp)execute_383, (funcp)execute_385, (funcp)execute_387, (funcp)execute_391, (funcp)execute_394, (funcp)execute_396, (funcp)execute_398, (funcp)execute_400, (funcp)execute_404, (funcp)execute_407, (funcp)execute_409, (funcp)execute_411, (funcp)execute_413, (funcp)execute_436, (funcp)execute_438, (funcp)execute_440, (funcp)execute_442, (funcp)execute_446, (funcp)execute_449, (funcp)execute_451, (funcp)execute_453, (funcp)execute_455, (funcp)execute_459, (funcp)execute_462, (funcp)execute_464, (funcp)execute_466, (funcp)execute_468, (funcp)execute_472, (funcp)execute_475, (funcp)execute_477, (funcp)execute_479, (funcp)execute_481, (funcp)execute_504, (funcp)execute_506, (funcp)execute_508, (funcp)execute_510, (funcp)execute_514, (funcp)execute_517, (funcp)execute_519, (funcp)execute_521, (funcp)execute_523, (funcp)execute_527, (funcp)execute_530, (funcp)execute_532, (funcp)execute_534, (funcp)execute_536, (funcp)execute_540, (funcp)execute_543, (funcp)execute_545, (funcp)execute_547, (funcp)execute_549, (funcp)execute_572, (funcp)execute_574, (funcp)execute_576, (funcp)execute_578, (funcp)execute_582, (funcp)execute_585, (funcp)execute_587, (funcp)execute_589, (funcp)execute_591, (funcp)execute_595, (funcp)execute_598, (funcp)execute_600, (funcp)execute_602, (funcp)execute_604, (funcp)execute_608, (funcp)execute_611, (funcp)execute_613, (funcp)execute_615, (funcp)execute_617, (funcp)execute_640, (funcp)execute_642, (funcp)execute_644, (funcp)execute_646, (funcp)execute_650, (funcp)execute_653, (funcp)execute_655, (funcp)execute_657, (funcp)execute_659, (funcp)execute_663, (funcp)execute_666, (funcp)execute_668, (funcp)execute_670, (funcp)execute_672, (funcp)execute_676, (funcp)execute_679, (funcp)execute_681, (funcp)execute_683, (funcp)execute_685, (funcp)execute_708, (funcp)execute_710, (funcp)execute_712, (funcp)execute_714, (funcp)execute_718, (funcp)execute_721, (funcp)execute_723, (funcp)execute_725, (funcp)execute_727, (funcp)execute_731, (funcp)execute_734, (funcp)execute_736, (funcp)execute_738, (funcp)execute_740, (funcp)execute_744, (funcp)execute_77, (funcp)execute_91, (funcp)execute_92, (funcp)execute_80, (funcp)execute_749, (funcp)execute_751, (funcp)execute_753, (funcp)execute_755, (funcp)execute_816, (funcp)execute_944, (funcp)execute_946, (funcp)execute_948, (funcp)execute_950, (funcp)execute_821, (funcp)execute_823, (funcp)execute_825, (funcp)execute_827, (funcp)execute_831, (funcp)execute_833, (funcp)execute_835, (funcp)execute_837, (funcp)execute_841, (funcp)execute_843, (funcp)execute_845, (funcp)execute_847, (funcp)execute_851, (funcp)execute_853, (funcp)execute_855, (funcp)execute_857, (funcp)execute_863, (funcp)execute_865, (funcp)execute_867, (funcp)execute_869, (funcp)execute_873, (funcp)execute_875, (funcp)execute_877, (funcp)execute_879, (funcp)execute_883, (funcp)execute_885, (funcp)execute_887, (funcp)execute_889, (funcp)execute_893, (funcp)execute_895, (funcp)execute_897, (funcp)execute_899, (funcp)execute_904, (funcp)execute_906, (funcp)execute_908, (funcp)execute_910, (funcp)execute_914, (funcp)execute_916, (funcp)execute_918, (funcp)execute_920, (funcp)execute_924, (funcp)execute_926, (funcp)execute_928, (funcp)execute_930, (funcp)execute_934, (funcp)execute_936, (funcp)execute_938, (funcp)execute_940, (funcp)transaction_1, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 274;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/aes_encryption_implementation_top_tb_behav/xsim.reloc",  (void **)funcTab, 274);
	iki_vhdl_file_variable_register(dp + 107456);
	iki_vhdl_file_variable_register(dp + 107512);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/aes_encryption_implementation_top_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/aes_encryption_implementation_top_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/aes_encryption_implementation_top_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/aes_encryption_implementation_top_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/aes_encryption_implementation_top_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
