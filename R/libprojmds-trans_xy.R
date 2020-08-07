#' Generic x/y coordinate transformation, source to target
#'
#' @param x  x coordinates (longitude or x)
#' @param y y coordinates (latitude or y)
#' @param source crs input projection string (EPSG:CODE not working rn, wkt or proj, urn ok)
#' @param target crs output projection string
#'
#' @return list of transformed x, y
#' @export
#'
#' @examples
#' proj_trans_xy(147, -42, source = "+proj=longlat +datum=WGS84", target = "+proj=merc")
proj_trans_xy <- function(x, y, source, target) {
  .Call("libprojmds_proj_trans_xy", x_ = x, y_ = y, src_ = source, tgt_ = target, PACKAGE = "libproj")
}


#' Create CRS string
#'
#' @param x input crs string
#' @param format (0 is WKT2)
#'
#' @return character string
#' @export
#'
#' @examples
#' proj_create("+proj=longlat +datum=WGS84")
proj_create <- function(x, format = 0L) {
  .Call("libprojmds_proj_create", crs_ = x, format = format, PACKAGE = "libproj")
}
