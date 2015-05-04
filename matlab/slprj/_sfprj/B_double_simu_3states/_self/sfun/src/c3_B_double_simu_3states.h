#ifndef __c3_B_double_simu_3states_h__
#define __c3_B_double_simu_3states_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc3_B_double_simu_3statesInstanceStruct
#define typedef_SFc3_B_double_simu_3statesInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c3_sfEvent;
  boolean_T c3_isStable;
  boolean_T c3_doneDoubleBufferReInit;
  uint8_T c3_is_active_c3_B_double_simu_3states;
  real_T *c3_phi3;
  real_T *c3_phi2;
  real_T *c3_v2;
  real_T *c3_L3;
  real_T *c3_phi3p;
  real_T *c3_L4;
  real_T *c3_v3;
} SFc3_B_double_simu_3statesInstanceStruct;

#endif                                 /*typedef_SFc3_B_double_simu_3statesInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray
  *sf_c3_B_double_simu_3states_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c3_B_double_simu_3states_get_check_sum(mxArray *plhs[]);
extern void c3_B_double_simu_3states_method_dispatcher(SimStruct *S, int_T
  method, void *data);

#endif
