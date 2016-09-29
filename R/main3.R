GenPdfReport<-function(.txt){
  require(rmarkdown)
  my_text <- readLines(.txt) 
  cat(my_text, sep="  \n", file = "Report.Rmd")
  render("Report.Rmd", pdf_document())
  file.remove("Report.Rmd") #cleanup
}

