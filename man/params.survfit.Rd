\name{params.survfit}
\alias{params.survfit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
parameter estimates from survfit
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
params.survfit(fit, alpha = getOption("qwraps.alpha", 0.05), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fit}{
%%     ~~Describe \code{fit} here~~
}
  \item{alpha}{
%%     ~~Describe \code{alpha} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (fit, alpha = getOption("qwraps.alpha", 0.05), ...) 
{
    if (1 - alpha != fit$conf.int) {
        warning("Refitting survfit with requested confidence level")
        fit <- update(fit, conf.int = 1 - alpha)
    }
    rtn <- summary(fit)$table[, c(5:7, 7)]
    rtn[, 4] <- NA
    show.pval <- FALSE
    return(params_frmtr(rtn, ...))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line