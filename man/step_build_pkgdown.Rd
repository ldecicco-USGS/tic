% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/steps-pkgdown.R
\name{step_build_pkgdown}
\alias{step_build_pkgdown}
\title{Step: Build pkgdown documentation}
\usage{
step_build_pkgdown(...)
}
\arguments{
\item{...}{Arguments passed on to \code{pkgdown::build_site}
\describe{
  \item{pkg}{Path to package.}
  \item{examples}{Run examples?}
  \item{document}{If \code{TRUE}, will run \code{\link[devtools:document]{devtools::document()}} before
updating the site.}
  \item{run_dont_run}{Run examples that are surrounded in \\dontrun?}
  \item{seed}{Seed used to initialize so that random examples are
reproducible.}
  \item{lazy}{If \code{TRUE}, will only rebuild articles and reference pages
if the source is newer than the destination.}
  \item{override}{An optional named list used to temporarily override
values in \code{_pkgdown.yml}}
  \item{preview}{If \code{TRUE}, or \code{is.na(preview) && interactive()}, will preview
freshly generated section in browser.}
  \item{new_process}{If \code{TRUE}, will run \code{build_site()} in a separate process.
This enhances reproducibility by ensuring nothing that you have loaded
in the current process affects the build process.}
}}
}
\description{
Builds package documentation with the \pkg{pkgdown} package.
Calls \code{pkgdown::clean_site()} and then \code{pkgdown::build_site(...)}.
}
\examples{
dsl_init()

get_stage("script") \%>\%
  add_step(step_build_pkgdown())

dsl_get()
}
\seealso{
Other steps: \code{\link{step_add_to_drat}},
  \code{\link{step_add_to_known_hosts}},
  \code{\link{step_do_push_deploy}},
  \code{\link{step_hello_world}},
  \code{\link{step_install_pkg}},
  \code{\link{step_install_ssh_keys}},
  \code{\link{step_push_deploy}},
  \code{\link{step_run_code}},
  \code{\link{step_setup_push_deploy}},
  \code{\link{step_setup_ssh}},
  \code{\link{step_test_ssh}},
  \code{\link{step_write_text_file}}
}
\concept{steps}
