printmessage <- function(x = 0) {
  if (x > 0) {
    message ("x greater than zero")
  } else {
    print ("is is less or equals than zero")
  }
  invisible(x)
}