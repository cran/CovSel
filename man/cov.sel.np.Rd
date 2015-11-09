\name{cov.sel.np}
\alias{cov.sel.np}
\title{ cov.sel.np }
\description{
 Function called by \code{cov.sel} if \code{type="np"}. Not meant to be used on its own.
}
\usage{cov.sel.np(T, Y, X, alg, scope, thru, thro, thrc, dat, data.0,
		data.1, covar, ...)
}
\arguments{
   \item{T  }{A vector, containing \code{0} and \code{1}, indicating the binary treatment variable.}
  \item{Y  }{A vector of observed outcomes.}
  \item{X  }{A matrix or data frame containing columns of covariates. The covariates may be a mix of continuous, unordered discrete
(to be specified in the data frame using \code{factor}), and ordered discrete (to be specified in the data frame using \code{ordered}).}
  \item{alg  }{Specifying which algorithm to be use. \code{1} 
  indicates Algorithm A, \code{2} indicates Algorithm B and 
  \code{3} runs them both. See Details. \code{alg = 3} is default.}
  \item{scope  }{A character string giving the name of one (or 
  several) covariate(s) that must not be removed.}
  \item{thru }{Bandwidth threshold for unordered discrete covariates. Values in \eqn{[0,1]} are valid. \code{thru=0} removes all unordered discrete covariates and \code{thru=1} removes none of them. Default is \code{thru=0.5}.}
   \item{thro }{Bandwidth threshold for ordered discrete covariates.  Values in \eqn{[0,1]} are valid. \code{thro=0} removes all unordered discrete covariates and \code{thro=1} removes none of them. Default is \code{thro=0.25}.}
   \item{thrc }{Bandwidth threshold for continuous covariates. Non-negative values are valid. Default is \code{thr=100}.}
\item{dat}{Passed on from \code{cov.sel} }
\item{data.0}{Passed on from \code{cov.sel}}
\item{data.1}{Passed on from \code{cov.sel}}
\item{covar}{Passed on from \code{cov.sel}}
\item{\dots  }{Additional arguments passed on to \code{npregbw}. \code{regtype} can be set to \code{"lc"} or \code{"ll"}, the first being default and \code{bwtype} can be set to \code{"fixed"}, \code{"generalized_nn"} or \code{"adaptive_nn"}, defaults to \code{"fixed"}.}

}
\details{
 See \code{cov.sel} for details.
}
\value{
	Function returns subsets, methods and removed covariates. See \code{cov.sel} for details.
    
}
\references{ 

de Luna, X., I. Waernbaum, and T. S. Richardson (2011). Covariate selection for the nonparametric estimation of an average treatment effect. \emph{Biometrika 98}. 861-875

Häggström, J., E. Persson, I. Waernbaum and X. de Luna (2015). An \code{R} Package for Covariate Selection When Estimating Average Causal Effects. \emph{Journal of Statistical Software 68}. 1-20

Hall, P., Q. Li and J.S. Racine (2007). Nonparametric estimation of regression functions in the presence of irrelevant regressors. \emph{The Review of Economics and Statistics, 89}. 784-789
}


\author{Jenny Häggström, <jenny.haggstrom@umu.se> }
\note{ \code{cov.sel.np} calls the function \code{npregbw} so the package \code{np} is required.
}
\seealso{\code{\link[np]{np}}}