#' A csv file descriptor function
#'
#' This function allows you to do preliminary investigation of the dataset in csv format.
#' @param Do you love data? Defaults to TRUE
#' @keywords csv, data, head, tail, summary, dimension, structure, text report, pdf report.
#' @export
#' @examples no examples
#' CSVDescriptor("/path/to/file/file.csv")

#Function for description of the dataset 
DescribeCSV <- function(.csv) {
  #Taking the csv file.
  csv <- read.csv(.csv)
  dimValue <- dim(csv)
  print("The dimension of the dataset is:")
  print(dimValue)
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  #strValue <- str(csv)
  #Problem with structure printing.
  #Beautify the output
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  strValue <- utils:::capture.output(str(csv))
  print("The structure of the dataset is:")
  print(strValue)
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  headValue <- head(csv)
  print("The head of the dataset is:") # or print(headValue) if you prefer
  print(headValue)
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  tailValue <- tail(csv)
  print("The tail of the dataset is:")
  print(tailValue)
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  summaryValue <- summary(csv)
  print("The summary of the dataset is:")
  print(summaryValue)
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  description <- return(invisible(list(dimValue, strValue, headValue, tailValue,summaryValue)))
  
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  
  #Writing the output of the data in the text file.
  
}



GenTxtReport <- function(.csv)
{
  #Command to store the output of the function in a text file 
  sink('Report.txt')
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  
  #Taking the csv file.
  csv <- read.csv(.csv)
  dimValue <- dim(csv)
  print("The dimension of the dataset is:")
  print(dimValue)
  print("----------------------------------")
  print("                                  ")
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  #strValue <- str(csv)
  #Problem with structure printing.
  #Beautify the output
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  strValue <- utils:::capture.output(str(csv))
  print("The structure of the dataset is:")
  print(strValue)
  print("----------------------------------")
  print("                                  ")
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  headValue <- head(csv)
  print("The head of the dataset is:")# or print(headValue) if you prefer
  print(headValue)
  print("----------------------------------")
  print("                                  ")
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  tailValue <- tail(csv)
  print("The tail of the dataset is:")
  print("----------------------------------")
  print("                                  ")
  print(tailValue)
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  summaryValue <- summary(csv)
  print("The summary of the dataset is:")
  print(summaryValue)
  print("----------------------------------")
  print("                                  ")
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  description <- return(invisible(list(dimValue, strValue, headValue, tailValue,summaryValue)))
  sink('Report.txt', append=TRUE)
}



GenPdfReport<-function(.txt){
  require(rmarkdown)
  my_text <- readLines(.txt) 
  cat(my_text, sep="  \n", file = "Report.Rmd")
  render("Report.Rmd", pdf_document())
  file.remove("Report.Rmd") #cleanup
}

