#' A csv file descriptor function
#'
#' This function allows you to do preliminary investigation of the dataset in csv format.
#' @param Do you love data? Defaults to TRUE
#' @keywords csv, data, head, tail, summary, dimension
#' @export
#' @examples no examples
#' CSVDescriptor("/path/to/file/file.csv")

CSVDescriptor <- function(.csv) {
  csv <- read.csv(.csv)
  dimValue <- dim(csv)
  print("The dimension of the dataset is:")
  headValue <- head(csv)
  print("The head of the dataset is:") # or print(headValue) if you prefer
  tailValue <- tail(csv)
  print("The tail of the dataset is:")
  summaryValue <- summary(csv)
  print("The summary of the dataset is:")
  # or print(headValue) if you prefer
  return(list(dimValue,headValue, tailValue,summaryValue))
}
