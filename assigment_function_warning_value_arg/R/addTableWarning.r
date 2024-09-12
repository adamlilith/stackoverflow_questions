#' Attach or detach MyClass's data table (warning version)
#'
#' @description `addTableWarning()` adds a table to a `MyClass` object. When `devtools::check()` is run on this package, this version of the function *does* give the warning, "The argument of a replacement function which corresponds to the right hand side must be named 'value'."
#'
#' @param x A `MyClass`.
#' @param value A `data.frame`.
#'
#' @returns A `MyClass` object.
#'
#' @aliases addTableWarning<-
#' @rdname addTableWarning
#' @exportMethod addTableWarning<-
methods::setMethod(
	f = "addTableWarning<-",
	signature = c(x = "MyClass", value = "data.frame"),
	function(x, value) {
	
	x@table <- value
	x
	
	}
)

