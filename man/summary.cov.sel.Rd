\name{summary.cov.sel}
\alias{summary.cov.sel}
\title{ Summary }
\description{
  This function produce a summary of the results of the covariate selection done by invoking \code{cov.sel}.
}
\usage{\method{summary}{cov.sel}(object, ...)
}
\arguments{
  \item{object }{ The list that \code{cov.sel} returns }
  \item{\dots }{ additional arg}

}
\details{
  Function gives subsets, method and removed variables.
}
\value{
  \item{X.T }{subset \code{X.T}}
  \item{X.0 }{subset \code{X.0}}
  \item{X.1 }{subset \code{X.1}}
  \item{Q.0 }{subset \code{Q.0}}
  \item{Q.1 }{subset \code{Q.1}}
  \item{Z.0 }{subset \code{Z.0}}
  \item{Z.1 }{subset \code{Z.1}}
  \item{method }{The method}
  \item{Q.0comp }{The complement subset of covariates to \code{Q.0}}
  \item{Q.1comp }{The complement subset of covariates to \code{Q.1}}
  \item{Z.0comp }{The complement subset of covariates to \code{Z.0}}
  \item{Z.1comp }{The complement subset of covariates to \code{Z.1}}
}
\author{ Emma Persson, <emma.persson@stat.umu.se> }