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

#if defined(_WIN32)
 #include "stdio.h"
#endif
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

#if defined(_WIN32)
 #include "stdio.h"
#endif
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
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_50(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_120(char*, char *);
extern void execute_122(char*, char *);
extern void execute_124(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_181(char*, char *);
extern void execute_184(char*, char *);
extern void execute_189(char*, char *);
extern void execute_194(char*, char *);
extern void execute_199(char*, char *);
extern void execute_207(char*, char *);
extern void execute_211(char*, char *);
extern void execute_215(char*, char *);
extern void execute_220(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_226(char*, char *);
extern void execute_230(char*, char *);
extern void execute_234(char*, char *);
extern void execute_238(char*, char *);
extern void execute_242(char*, char *);
extern void execute_244(char*, char *);
extern void execute_255(char*, char *);
extern void execute_260(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_272(char*, char *);
extern void execute_316(char*, char *);
extern void execute_318(char*, char *);
extern void execute_319(char*, char *);
extern void execute_351(char*, char *);
extern void execute_352(char*, char *);
extern void execute_354(char*, char *);
extern void execute_360(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_459(char*, char *);
extern void execute_460(char*, char *);
extern void execute_468(char*, char *);
extern void execute_471(char*, char *);
extern void execute_477(char*, char *);
extern void execute_481(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_235(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_294(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_301(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_308(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_329(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_343(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_350(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_364(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_382(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_385(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_389(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_391(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_394(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_397(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_399(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_401(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_402(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_403(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_442(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_529(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_576(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_590(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_597(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_604(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_644(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_654(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[170] = {(funcp)execute_530, (funcp)execute_531, (funcp)execute_532, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_50, (funcp)execute_114, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_120, (funcp)execute_122, (funcp)execute_124, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_130, (funcp)execute_131, (funcp)execute_132, (funcp)execute_181, (funcp)execute_184, (funcp)execute_189, (funcp)execute_194, (funcp)execute_199, (funcp)execute_207, (funcp)execute_211, (funcp)execute_215, (funcp)execute_220, (funcp)execute_222, (funcp)execute_223, (funcp)execute_226, (funcp)execute_230, (funcp)execute_234, (funcp)execute_238, (funcp)execute_242, (funcp)execute_244, (funcp)execute_255, (funcp)execute_260, (funcp)execute_262, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_272, (funcp)execute_316, (funcp)execute_318, (funcp)execute_319, (funcp)execute_351, (funcp)execute_352, (funcp)execute_354, (funcp)execute_360, (funcp)execute_378, (funcp)execute_379, (funcp)execute_459, (funcp)execute_460, (funcp)execute_468, (funcp)execute_471, (funcp)execute_477, (funcp)execute_481, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_44, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_51, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_73, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_127, (funcp)transaction_136, (funcp)transaction_146, (funcp)transaction_156, (funcp)transaction_164, (funcp)transaction_173, (funcp)transaction_182, (funcp)transaction_191, (funcp)transaction_200, (funcp)transaction_209, (funcp)transaction_218, (funcp)transaction_227, (funcp)transaction_235, (funcp)transaction_242, (funcp)transaction_249, (funcp)transaction_279, (funcp)transaction_287, (funcp)transaction_294, (funcp)transaction_301, (funcp)transaction_308, (funcp)transaction_315, (funcp)transaction_322, (funcp)transaction_329, (funcp)transaction_336, (funcp)transaction_343, (funcp)transaction_350, (funcp)transaction_357, (funcp)transaction_364, (funcp)transaction_381, (funcp)transaction_382, (funcp)transaction_383, (funcp)transaction_384, (funcp)transaction_385, (funcp)transaction_386, (funcp)transaction_387, (funcp)transaction_388, (funcp)transaction_389, (funcp)transaction_390, (funcp)transaction_391, (funcp)transaction_392, (funcp)transaction_393, (funcp)transaction_394, (funcp)transaction_395, (funcp)transaction_396, (funcp)transaction_397, (funcp)transaction_398, (funcp)transaction_399, (funcp)transaction_400, (funcp)transaction_401, (funcp)transaction_402, (funcp)transaction_403, (funcp)transaction_404, (funcp)transaction_406, (funcp)transaction_410, (funcp)transaction_442, (funcp)transaction_452, (funcp)transaction_462, (funcp)transaction_472, (funcp)transaction_482, (funcp)transaction_492, (funcp)transaction_502, (funcp)transaction_521, (funcp)transaction_529, (funcp)transaction_538, (funcp)transaction_546, (funcp)transaction_576, (funcp)transaction_590, (funcp)transaction_597, (funcp)transaction_604, (funcp)transaction_614, (funcp)transaction_624, (funcp)transaction_634, (funcp)transaction_644, (funcp)transaction_654, (funcp)transaction_664, (funcp)transaction_674, (funcp)transaction_683};
const int NumRelocateId= 170;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/auto_tb_func_synth/xsim.reloc",  (void **)funcTab, 170);
	iki_vhdl_file_variable_register(dp + 1197560);
	iki_vhdl_file_variable_register(dp + 1197616);
	iki_vhdl_file_variable_register(dp + 1209080);
	iki_vhdl_file_variable_register(dp + 1733600);
	iki_vhdl_file_variable_register(dp + 1733712);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/auto_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/auto_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/auto_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/auto_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/auto_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
