\name{Picture}
\alias{Picture}
\alias{addPicture}
\title{Functions to manipulate images in a spreadsheet.}
\description{
Functions to manipulate images in a spreadsheet. 
}
\usage{

addPicture(file, sheet, scale=1, startRow=1, startColumn=1)

}
\arguments{
  \item{file}{the absolute path to the image file.}
  \item{sheet}{a worksheet object as returned by \code{createSheet} or
    by subsetting \code{getSheets}.  The picture will be added on this
    sheet at position \code{startRow}, \code{startColumn}.}
  \item{scale}{a numeric specifying the scale factor for the image.}
  \item{startRow}{a numeric specifying the row of the upper left corner
    of the image.}
  \item{startColumn}{a numeric specifying the column of the upper left corner
    of the image.}
}
\details{
  For now, the following image types are supported: dib, emf, jpeg,
  pict, png, wmf.  Please note, that scaling works correctly only
  for workbooks with the default font size (Calibri 11pt for .xlsx). If
  the default font is changed the resized image can be streched
  vertically or horizontally.

  Don't know how to remove an existing image yet.
}
\value{
  \code{addPicture} a java object references pointing to the picture.
}
\author{Adrian Dragulescu}
\examples{

file <- system.file("tests", "log_plot.jpeg", package = "xlsx")

wb <- createWorkbook()  
sheet <- createSheet(wb, "Sheet1")

addPicture(file, sheet)

# don't forget to save the workbook!

}

