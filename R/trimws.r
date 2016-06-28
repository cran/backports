#' @title Backport of trimws
#' @rdname trimws
#'
#' @description
#' See the original description in \code{base::trimws}.
#'
#' @param x
#'  See description.
#' @param which
#'  See description.
#' @rawNamespace if (getRversion() < "3.2.0") export(trimws)
trimws = function(x, which = c("both", "left", "right")) {
  which = match.arg(which)
  if (which %in% c("left", "both"))
    x = gsub("^[[:space:]]", "", x)
  if (which %in% c("right", "both"))
    x = gsub("[[:space:]]$", "", x)
  return(x)
}
