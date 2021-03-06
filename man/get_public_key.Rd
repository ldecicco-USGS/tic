% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keys.R
\name{get_public_key}
\alias{get_public_key}
\title{Get public RSA key}
\usage{
get_public_key(key)
}
\arguments{
\item{key}{RSA key, as returned by \code{openssl::rsa_keygen()}}
}
\description{
Extracts the public key from a public-private key pair
generated by \code{\link[openssl:rsa_keygen]{openssl::rsa_keygen()}}.
This key can be installed as a deploy key for a GitHub repository.
}
\keyword{internal}
