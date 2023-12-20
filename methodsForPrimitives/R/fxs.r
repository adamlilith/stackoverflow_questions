# generics
# if (!isGeneric("as.contour")) { methods::setGeneric(name = "as.contour", def = function(x) standardGeneric("as.contour")) }

methods::setGeneric(name = "as.contour", def = function(x) standardGeneric("as.contour"))

# class
#' @exportClass ExampleClass
ExampleClass <- methods::setClass(
     Class = "ExampleClass",
     slots = list(
          nums = list()
     ),
     prototype = prototype(
          nums = list()
     )
)

# method
#' @exportMethod as.contour
setMethod(
     f = "as.contour",
     signature = c("ExampleClass"),
     function(x) is.double(x@nums[[1]])
)
