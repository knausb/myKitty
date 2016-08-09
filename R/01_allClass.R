

#' @rdname classes
#' @aliases classes
#' @title classes
#'
#' @details classes
#'
#' @description classes described
#'
#' @examples
#' myTrack <- new("track")
#'
#' @import methods
#' @export
#'
track <- methods::setClass(
  Class="track",
  slots = c(x="numeric", y="numeric", names="character"),
  prototype = c( x=numeric(), y=numeric(), names=character())
)


