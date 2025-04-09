\name{lalonde}
\alias{lalonde}
\docType{data}
\title{ Real data, Lalonde}
\description{In order for the code used to create this data frame to work text files available on Dehejia's webpage \url{https://users.nber.org/~rdehejia/nswdata2.html} need to be downloaded and stored in the working directory. The data frame consists of 185 treated units from a randomized evaluation of a labor training program, the National Supported Work (NSW) Demonstration, and 429 nonexperimental comparison units drawn from survey datasets.  \cr
\cr
\code{treated <- read.table(file = "nswre74_treated.txt")}\cr
\code{controls <- read.table(file = "cps3_controls.txt")}\cr
\code{nsw <- rbind(treated, controls)}\cr
\code{ue <- function(x) factor(ifelse(x > 0, 0, 1))}\cr
\code{UE74 <- mapply(ue, nsw[, 8])}\cr
\code{UE75 <- mapply(ue, nsw[, 9])}\cr
\code{nsw[, 4:7] <- lapply(nsw[, 4:7], factor)}\cr
\code{lalonde <- cbind(nsw[, 1:9], UE74, UE75, nsw[, 10])}\cr
\code{colnames(lalonde) <- c("treat", "age", "educ", "black", "hisp", "married",}\cr
\code{"nodegr", "re74", "re75", "u74", "u75", "re78")}
}
\usage{data(lalonde)}
\format{
  A data frame with 614 observations on the following 12 variables.
  \describe{
    \item{\code{treat }}{a numeric vector}
    \item{\code{age  }}{a numeric vector}
    \item{\code{educ  }}{a numeric vector}
    \item{\code{black  }}{a factor with two levels}
    \item{\code{hisp  }}{a factor with two levels}
    \item{\code{married  }}{a factor with two levels}
    \item{\code{nodegr  }}{a factor with two levels}
    \item{\code{re74  }}{a numeric vector}
    \item{\code{re75  }}{a numeric vector}
    \item{\code{u74  }}{a factor with two levels}
    \item{\code{u75   }}{a factor with two levels}
    \item{\code{re78 }}{a numeric vector}
  }
}
