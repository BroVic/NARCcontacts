% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/harmonise.R
\name{harmonise_narc_excel}
\alias{harmonise_narc_excel}
\title{Harmonise Nehemiah's Data}
\usage{
harmonise_narc_excel(dir, dest = "./data", newcols, dbTable = "NARC_mail",
  quiet = FALSE)
}
\arguments{
\item{dir}{character vector of length 1; the path to the folder contains
the Excel files.}

\item{dest}{directory where the data will be stored.}

\item{newcols}{The new columns that are to be created.}

\item{dbTable}{The database table where the end-product are stored.}

\item{quiet}{logical; whether to print informative output or not.}
}
\description{
Merge mailing list belonging to Nehemiah Apostolic Resource Centre
}
\details{
Mailing list data that exist in different MS Excel files are
nto one are discovered and combined into a single SQLite database file.
Necessary transformations are carried out to ensure fitness.
}
