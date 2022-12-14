% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_dags.R
\name{project_dags}
\alias{project_dags}
\title{Export REDCap user information}
\usage{
project_dags(conn)
}
\arguments{
\item{conn}{A REDCap API connection object (created with \code{\link{rconn}})}
}
\value{
A \code{\link[tibble:tbl_df-class]{tibble}}-style data frame with 2 columns:
\itemize{
\item \code{data_access_group_name}
\item \code{unique_group_name}
}
}
\description{
Execute an "Export Data Access Groups (DAGs)" API request to fetch the DAGs
(labels and code names) associated with a REDCap project.
}
\examples{
\dontrun{
conn <- rconn(
  url = "https://redcap.msf.fr/api/",
  token = Sys.getenv("MY_REDCAP_TOKEN")
)

project_dags(conn)
}

}
