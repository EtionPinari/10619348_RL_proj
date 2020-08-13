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
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_524(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_42(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_109(char*, char *);
extern void execute_115(char*, char *);
extern void execute_127(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_137(char*, char *);
extern void execute_141(char*, char *);
extern void execute_145(char*, char *);
extern void execute_149(char*, char *);
extern void execute_153(char*, char *);
extern void execute_155(char*, char *);
extern void execute_166(char*, char *);
extern void execute_171(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_183(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_236(char*, char *);
extern void execute_239(char*, char *);
extern void execute_245(char*, char *);
extern void execute_249(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_307(char*, char *);
extern void execute_309(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_366(char*, char *);
extern void execute_369(char*, char *);
extern void execute_374(char*, char *);
extern void execute_379(char*, char *);
extern void execute_384(char*, char *);
extern void execute_392(char*, char *);
extern void execute_396(char*, char *);
extern void execute_400(char*, char *);
extern void execute_405(char*, char *);
extern void execute_407(char*, char *);
extern void execute_409(char*, char *);
extern void execute_410(char*, char *);
extern void execute_442(char*, char *);
extern void execute_443(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_225(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_286(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_323(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_329(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_414(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_512(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_551(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_581(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_589(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_596(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_603(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_617(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_631(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_638(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_645(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_659(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[169] = {(funcp)execute_522, (funcp)execute_523, (funcp)execute_524, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_42, (funcp)execute_106, (funcp)execute_107, (funcp)execute_109, (funcp)execute_115, (funcp)execute_127, (funcp)execute_133, (funcp)execute_134, (funcp)execute_137, (funcp)execute_141, (funcp)execute_145, (funcp)execute_149, (funcp)execute_153, (funcp)execute_155, (funcp)execute_166, (funcp)execute_171, (funcp)execute_173, (funcp)execute_174, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_183, (funcp)execute_227, (funcp)execute_228, (funcp)execute_236, (funcp)execute_239, (funcp)execute_245, (funcp)execute_249, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)execute_302, (funcp)execute_303, (funcp)execute_307, (funcp)execute_309, (funcp)execute_311, (funcp)execute_312, (funcp)execute_313, (funcp)execute_315, (funcp)execute_316, (funcp)execute_317, (funcp)execute_366, (funcp)execute_369, (funcp)execute_374, (funcp)execute_379, (funcp)execute_384, (funcp)execute_392, (funcp)execute_396, (funcp)execute_400, (funcp)execute_405, (funcp)execute_407, (funcp)execute_409, (funcp)execute_410, (funcp)execute_442, (funcp)execute_443, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_43, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_63, (funcp)transaction_66, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_72, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_82, (funcp)transaction_85, (funcp)transaction_125, (funcp)transaction_134, (funcp)transaction_144, (funcp)transaction_154, (funcp)transaction_162, (funcp)transaction_171, (funcp)transaction_180, (funcp)transaction_189, (funcp)transaction_198, (funcp)transaction_207, (funcp)transaction_216, (funcp)transaction_225, (funcp)transaction_233, (funcp)transaction_240, (funcp)transaction_247, (funcp)transaction_264, (funcp)transaction_271, (funcp)transaction_279, (funcp)transaction_286, (funcp)transaction_300, (funcp)transaction_301, (funcp)transaction_302, (funcp)transaction_303, (funcp)transaction_304, (funcp)transaction_305, (funcp)transaction_306, (funcp)transaction_307, (funcp)transaction_308, (funcp)transaction_309, (funcp)transaction_310, (funcp)transaction_311, (funcp)transaction_312, (funcp)transaction_313, (funcp)transaction_314, (funcp)transaction_315, (funcp)transaction_316, (funcp)transaction_317, (funcp)transaction_318, (funcp)transaction_319, (funcp)transaction_320, (funcp)transaction_321, (funcp)transaction_322, (funcp)transaction_323, (funcp)transaction_325, (funcp)transaction_329, (funcp)transaction_360, (funcp)transaction_369, (funcp)transaction_378, (funcp)transaction_387, (funcp)transaction_396, (funcp)transaction_405, (funcp)transaction_414, (funcp)transaction_444, (funcp)transaction_458, (funcp)transaction_465, (funcp)transaction_472, (funcp)transaction_482, (funcp)transaction_492, (funcp)transaction_502, (funcp)transaction_512, (funcp)transaction_522, (funcp)transaction_532, (funcp)transaction_542, (funcp)transaction_551, (funcp)transaction_581, (funcp)transaction_589, (funcp)transaction_596, (funcp)transaction_603, (funcp)transaction_610, (funcp)transaction_617, (funcp)transaction_624, (funcp)transaction_631, (funcp)transaction_638, (funcp)transaction_645, (funcp)transaction_652, (funcp)transaction_659, (funcp)transaction_666};
const int NumRelocateId= 169;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/in_first_wz_func_synth/xsim.reloc",  (void **)funcTab, 169);
	iki_vhdl_file_variable_register(dp + 1194336);
	iki_vhdl_file_variable_register(dp + 1194392);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/in_first_wz_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/in_first_wz_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/in_first_wz_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/in_first_wz_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/in_first_wz_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
