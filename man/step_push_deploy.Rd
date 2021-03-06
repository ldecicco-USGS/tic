% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/steps-git.R
\name{step_push_deploy}
\alias{step_push_deploy}
\title{Step: Setup and perform push deploy}
\usage{
step_push_deploy(path = ".", branch = NULL, remote_url = NULL,
  commit_message = NULL, commit_paths = ".")
}
\arguments{
\item{path}{\code{[string]}\cr
Path to the repository, default \code{"."} which means setting up the current
repository.}

\item{branch}{\code{[string]}\cr
Target branch, default: current branch.}

\item{remote_url}{\code{[string]}\cr
The URL of the remote Git repository to push to, defaults to the
current GitHub repository.}

\item{commit_message}{\code{[string]}\cr
Commit message to use, defaults to a useful message linking to the CI build
and avoiding recursive CI runs.}

\item{commit_paths}{\code{[character]}\cr
Restrict the set of directories and/or files added to Git before deploying.
Default: deploy all files.}
}
\description{
Clones a repo, inits author information, sets up remotes,
commits, and pushes.
Combines \code{\link[=step_setup_push_deploy]{step_setup_push_deploy()}} with \code{checkout = FALSE} and
a suitable \code{orphan} argument,
and \code{\link[=step_do_push_deploy]{step_do_push_deploy()}}.
}
\details{
Setup and deployment are combined in one step,
the files to be deployed must be prepared in a previous step.
This poses some restrictions on how the repository can be initialized,
in particular for a nonstandard \code{path} argument only \code{orphan = TRUE}
can be supported (and will be used).

For more control, create two separate steps with
\code{step_setup_push_deploy()} and \code{step_do_push_deploy()},
and create the files to be deployed inbetween these steps.
}
\examples{
dsl_init()

get_stage("script") \%>\%
  add_step(step_push_deploy(commit_paths = c("NAMESPACE", "man")))

dsl_get()
}
\seealso{
Other deploy steps: \code{\link{step_do_push_deploy}},
  \code{\link{step_setup_push_deploy}}

Other steps: \code{\link{step_add_to_drat}},
  \code{\link{step_add_to_known_hosts}},
  \code{\link{step_build_pkgdown}},
  \code{\link{step_do_push_deploy}},
  \code{\link{step_hello_world}},
  \code{\link{step_install_pkg}},
  \code{\link{step_install_ssh_keys}},
  \code{\link{step_run_code}},
  \code{\link{step_setup_push_deploy}},
  \code{\link{step_setup_ssh}},
  \code{\link{step_test_ssh}},
  \code{\link{step_write_text_file}}
}
\concept{deploy steps}
\concept{steps}
