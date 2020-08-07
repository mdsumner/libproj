
// generated automatically by data-raw/update-libproj-api.R - do not edit by hand!
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

// defined in libproj-version.c
SEXP libproj_proj_version();
// defined in libprojmds-trans_xy.c
SEXP libprojmds_proj_trans_xy(SEXP, SEXP, SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
  {"libproj_proj_version", (DL_FUNC) &libproj_proj_version, 0},
  {"libprojmds_proj_trans_xy", (DL_FUNC) &libprojmds_proj_trans_xy, 4},
  {NULL, NULL, 0}
};


void R_init_libproj(DllInfo *dll) {
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
