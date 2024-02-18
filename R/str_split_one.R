#' Split a string
#'
#' @param string A character vector
#' @param pattern A regex pattern
#' @param n An integer
#' @inheritParams stringr::str_split
#'
#' @return A character vector
#' @export
#'
#' @examples
#' Made by Jason
#'
#' y <- "192.168.0.1"
#' str_split_one(y, pattern = stringr::fixed("."))
str_split_one <- function(string, pattern, n = Inf){
  stopifnot(is.character(string), length(string)<=1)
  if (length(string)==1){
    stringr::str_split(string = string,
                       pattern = pattern,
                       n = n)[[1]]
  }else{
    character()
  }
}
