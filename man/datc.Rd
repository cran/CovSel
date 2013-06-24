\name{datc}
\alias{datc}
\docType{data}
\title{ Simulated Data, Continuous}
\description{This data is simulated. The covariates, X, are all generated from a standard normal distribution and they are all independent except for \eqn{x_7}{x7} and \eqn{x_8}{x8} (cor(\eqn{x_7}{x7},\eqn{x_8}{x8})=0.5). The code generating the data is \cr
\cr
\code{library(MASS)}\cr
\code{set.seed(9327529)}\cr
\code{n<-1000}\cr
\code{eta<-mvrnorm(n,rep(0,2),diag(1,2,2))}\cr
\code{Sigma=diag(1,10,10)}\cr
\code{Sigma[7,8]<-Sigma[8,7]<-0.5}\cr
\code{X<-mvrnorm(n,rep(0,10),Sigma)}\cr
\code{y0<-2+2*X[,1]+2*X[,2]+2*X[,5]+2*X[,6]+2*X[,8]+eta[,1]}\cr
\code{y1<-4+2*X[,1]+2*X[,2]+2*X[,5]+2*X[,6]+2*X[,8]+eta[,2]}\cr
\code{e<-1/(1+exp(-0.5*X[,1]-0.5*X[,2]-0.5*X[,3]-0.5*X[,4]-0.5*X[,7]))}\cr
\code{T<-rbinom(n,1,e)}\cr
\code{y<-y1*T+y0*(1-T)}\cr
\code{datc<-data.frame(x1=X[,1],x2=X[,2],x3=X[,3],x4=X[,4],x5=X[,5],x6=X[,6],}\cr
\code{x7=X[,7],x8=X[,8],x9=X[,9],x10=X[,10],y0,y1,y,T)}
}
\usage{data(datc)}
\format{
  A data frame with 1000 observations on the following 14 variables.
  \describe{
    \item{\code{x1  }}{a numeric vector}
    \item{\code{x2  }}{a numeric vector}
    \item{\code{x3  }}{a numeric vector}
    \item{\code{x4  }}{a numeric vector}
    \item{\code{x5  }}{a numeric vector}
    \item{\code{x6  }}{a numeric vector}
    \item{\code{x7  }}{a numeric vector}
    \item{\code{x8  }}{a numeric vector}
    \item{\code{x9  }}{a numeric vector}
    \item{\code{x10 }}{a numeric vector}
    \item{\code{y0  }}{a numeric vector}
    \item{\code{y1  }}{a numeric vector}
    \item{\code{y   }}{a numeric vector}
    \item{\code{T }}{a numeric vector}
  }
}

