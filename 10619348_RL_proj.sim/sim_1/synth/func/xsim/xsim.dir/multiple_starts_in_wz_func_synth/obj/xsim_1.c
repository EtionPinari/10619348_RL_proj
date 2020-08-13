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
extern void execute_501(char*, char *);
extern void execute_502(char*, char *);
extern void execute_503(char*, char *);
extern void execute_38(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_93(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_107(char*, char *);
extern void execute_116(char*, char *);
extern void execute_123(char*, char *);
extern void execute_126(char*, char *);
extern void execute_129(char*, char *);
extern void execute_135(char*, char *);
extern void execute_139(char*, char *);
extern void execute_143(char*, char *);
extern void execute_151(char*, char *);
extern void execute_153(char*, char *);
extern void execute_163(char*, char *);
extern void execute_167(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_183(char*, char *);
extern void execute_227(char*, char *);
extern void execute_229(char*, char *);
extern void execute_231(char*, char *);
extern void execute_235(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_299(char*, char *);
extern void execute_302(char*, char *);
extern void execute_304(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_308(char*, char *);
extern void execute_310(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_352(char*, char *);
extern void execute_355(char*, char *);
extern void execute_359(char*, char *);
extern void execute_373(char*, char *);
extern void execute_376(char*, char *);
extern void execute_380(char*, char *);
extern void execute_384(char*, char *);
extern void execute_386(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_421(char*, char *);
extern void execute_422(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_301(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_302(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_303(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_306(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_308(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_316(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_317(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_319(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_368(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_377(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_413(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_451(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_471(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_481(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_501(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_557(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_565(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_572(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_579(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_586(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_593(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_607(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_621(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_628(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[158] = {(funcp)execute_501, (funcp)execute_502, (funcp)execute_503, (funcp)execute_38, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_93, (funcp)execute_103, (funcp)execute_104, (funcp)execute_107, (funcp)execute_116, (funcp)execute_123, (funcp)execute_126, (funcp)execute_129, (funcp)execute_135, (funcp)execute_139, (funcp)execute_143, (funcp)execute_151, (funcp)execute_153, (funcp)execute_163, (funcp)execute_167, (funcp)execute_173, (funcp)execute_174, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_183, (funcp)execute_227, (funcp)execute_229, (funcp)execute_231, (funcp)execute_235, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_299, (funcp)execute_302, (funcp)execute_304, (funcp)execute_306, (funcp)execute_307, (funcp)execute_308, (funcp)execute_310, (funcp)execute_311, (funcp)execute_312, (funcp)execute_352, (funcp)execute_355, (funcp)execute_359, (funcp)execute_373, (funcp)execute_376, (funcp)execute_380, (funcp)execute_384, (funcp)execute_386, (funcp)execute_388, (funcp)execute_389, (funcp)execute_421, (funcp)execute_422, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_55, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_130, (funcp)transaction_139, (funcp)transaction_148, (funcp)transaction_157, (funcp)transaction_166, (funcp)transaction_175, (funcp)transaction_184, (funcp)transaction_193, (funcp)transaction_202, (funcp)transaction_211, (funcp)transaction_220, (funcp)transaction_229, (funcp)transaction_238, (funcp)transaction_245, (funcp)transaction_252, (funcp)transaction_270, (funcp)transaction_277, (funcp)transaction_285, (funcp)transaction_297, (funcp)transaction_298, (funcp)transaction_299, (funcp)transaction_300, (funcp)transaction_301, (funcp)transaction_302, (funcp)transaction_303, (funcp)transaction_304, (funcp)transaction_305, (funcp)transaction_306, (funcp)transaction_307, (funcp)transaction_308, (funcp)transaction_309, (funcp)transaction_310, (funcp)transaction_311, (funcp)transaction_312, (funcp)transaction_313, (funcp)transaction_314, (funcp)transaction_315, (funcp)transaction_316, (funcp)transaction_317, (funcp)transaction_318, (funcp)transaction_319, (funcp)transaction_321, (funcp)transaction_325, (funcp)transaction_359, (funcp)transaction_368, (funcp)transaction_377, (funcp)transaction_386, (funcp)transaction_395, (funcp)transaction_404, (funcp)transaction_413, (funcp)transaction_437, (funcp)transaction_444, (funcp)transaction_451, (funcp)transaction_461, (funcp)transaction_471, (funcp)transaction_481, (funcp)transaction_491, (funcp)transaction_501, (funcp)transaction_511, (funcp)transaction_521, (funcp)transaction_530, (funcp)transaction_557, (funcp)transaction_565, (funcp)transaction_572, (funcp)transaction_579, (funcp)transaction_586, (funcp)transaction_593, (funcp)transaction_600, (funcp)transaction_607, (funcp)transaction_614, (funcp)transaction_621, (funcp)transaction_628};
const int NumRelocateId= 158;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/multiple_starts_in_wz_func_synth/xsim.reloc",  (void **)funcTab, 158);
	iki_vhdl_file_variable_register(dp + 15866848);
	iki_vhdl_file_variable_register(dp + 15866904);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/multiple_starts_in_wz_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/multiple_starts_in_wz_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/multiple_starts_in_wz_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/multiple_starts_in_wz_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/multiple_starts_in_wz_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
