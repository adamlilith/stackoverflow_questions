#' Attach or detach MyClass's data table (no warning version)
#'
#' @description `addTableNoWarning()` adds a table to a `MyClass` object. When `devtools::check()` is run on this package, this version of the function does *not* give the warning, "The argument of a replacement function which corresponds to the right hand side must be named 'value'."
#'
#' @param x A `MyClass`.
#' @param ... Extra arguments (ignored).
#' @param value A `data.frame`.
#'
#' @returns A `MyClass` object.
#'
#' @aliases addTableNoWarning<-
#' @rdname addTableNoWarning
#' @exportMethod addTableNoWarning<-
methods::setMethod(
	f = "addTableNoWarning<-",
	signature = c(x = "MyClass", value = "data.frame"),
	function(x, ..., value) {
	
	x@table <- value
	x
	
	}
)

