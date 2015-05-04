#ifndef __c1_B_double_simu_3states_h__
#define __c1_B_double_simu_3states_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc1_B_double_simu_3statesInstanceStruct
#define typedef_SFc1_B_double_simu_3statesInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c1_sfEvent;
  boolean_T c1_isStable;
  boolean_T c1_doneDoubleBufferReInit;
  uint8_T c1_is_active_c1_B_double_simu_3states;
  real_T *c1_phi2;
  real_T *c1_phi1;
  real_T *c1_v1;
  real_T *c1_phi2p;
  real_T *c1_L2;
  real_T *c1_L3;
  real_T *c1_v2;
} SFc1_B_double_simu_3statesInstanceStruct;

#endif                                 /*typedef_SFc1_B_double_simu_3statesInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray
  *sf_c1_B_double_simu_3states_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c1_B_double_simu_3states_get_check_sum(mxArray *plhs[]);
extern void c1_B_double_simu_3states_method_dispatcher(SimStruct *S, int_T
  method, void *data);

#endif
