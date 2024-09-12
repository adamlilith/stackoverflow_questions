#' MyClass
#'
#' @aliases MyClass
#' @rdname MyClass
#' @exportClass MyClass
MyClass <- methods::setClass(
	Class = "MyClass",
	slots = list(
		table = "data.frame"
	),
	prototype = prototype(
		table = data.frame()
	)
)

