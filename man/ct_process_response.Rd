% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ct_process_response.R
\name{ct_process_response}
\alias{ct_process_response}
\title{Processes the response object}
\usage{
ct_process_response(resp, verbose = FALSE, tidy_cols)
}
\arguments{
\item{resp}{a valid httr2 response object created from the function \code{ct_perform_request()}}

\item{verbose}{If TRUE, sends status updates to the console. If FALSE, runs functions quietly. Default: FALSE.}

\item{tidy_cols}{If TRUE, returns tidy column names. If FALSE, returns raw column names. Default: TRUE.}
}
\value{
a data.frame object with the results
}
\description{
The function is internally called by \code{ct_get_data()} and processes the httr2response object returned by \code{ct_perform_request()}, it parses the JSON and adds the respective ISO codes for the reporter and partner countries, as well as the commodity code description.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
ct_get_data(commodity_code = NULL,
            reporter = 'CHN',
            partner = 'DEU',
            start_date = '2019',
            end_date = '2019',
            flow_direction = 'import')
req <- httr2::last_request()
resp <- comtradr:::ct_perform_request(req, requests_per_second = 10/60, verbose = FALSE)
data <- comtradr:::ct_process_response(resp)
\dontshow{\}) # examplesIf}
}
