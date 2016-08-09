

#' @rdname methods
#' @aliases track-methods
#' @title methods
#'
#' @description describe the methods
#'
#' @param x numeric
#' @param y numeric
#' @param value character
#' @param ... other stuff
#'
#' @examples
#' t1 <- new("track", x=1:20, y=(1:20)^2)
#' plot(t1)
#'
#'
#' @export
#'
setMethod("plot",
          signature(x="track", y="missing"),
          function(x,  y, ...){
            plot(slot(x, "x"),
            slot(x, "y"),
            ...)
          }
)


#' @rdname methods
#' @export
#'
setMethod("plot",
          signature(y = "track"),
          function(x, y, ...){
            plot(x, slot(y, "y"), ...)
          }
)


#' @rdname methods
#' @export
#'
setMethod("plot",
          "track",
          function(x, y, ...){
            plot(slot(x, "y"), y,  ...)
          }
)


#' @rdname methods
# @export
#'
setMethod(f="names<-",
          signature( x = "track", value = "character" ),
          function(x, value){
            if( length(value) >=1 ){
              x@names <- value[1]
            } else {
              x@names <- character()
            }
            return(x)
          }
)


