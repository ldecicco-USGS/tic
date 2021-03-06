% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run.R
\name{prepare_all_stages}
\alias{prepare_all_stages}
\title{Prepare all stages}
\usage{
prepare_all_stages(stages = dsl_load())
}
\arguments{
\item{stages}{\code{[named list]}
A named list of \code{TicStage} objects as returned by \code{\link[=dsl_load]{dsl_load()}},
by default loaded from \code{tic.R}.}
}
\description{
Run the \code{prepare()} method for all defined steps for which the
\code{check()} method returns \code{TRUE}.
}
\seealso{
\link{TicStep}

Other runners: \code{\link{run_all_stages}},
  \code{\link{run_stage}}
}
\concept{runners}
