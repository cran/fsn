\name{Confidence intervals for Rosenthal's fail-safe number assuming a half normal distribution with a random number of studies}
\alias{halfnorm.randomnr.ci}

\title{
Confidence intervals for Rosenthal's fail-safe number assuming a half normal
distribution with a random number of studies
}

\description{
Confidence intervals for Rosenthal's fail-safe number assuming a half normal
distribution with a random number of studies.
}

\usage{
halfnorm.randomnr.ci(stat, se, alpha = 0.05, type = "dist")
}

\arguments{
\item{stat}{
A vector with the statistics.
}
\item{se}{
A vector with the standard errors of the stat.
}
\item{alpha}{
The significance level, set to 0.05 by default.
}
\item{type}{
The type of confidence intervals to construct. Based on distributional
assumptions ("dist") or based on the method of moments ("mom") or both "both".
}
}

\details{
The function computes confidence intervals assuming a half normal distribution
assuming that the number of studies is random and estimating the variance
either via MLE or moments or bootstrap as described in Fragkos,
Tsagris & Frangos (2014).
}

\value{
A list including:
\item{Nr}{
Rosenthal's fail safe number.
}
\item{variance}{
The variance of Rosenthal's fail safe number.
}
\item{ci}{
The (1-alpha)\% confidence interval for the true Rosenthal's fail safe number.
}
}

\references{
Konstantinos C. Fragkos, Michail Tsagris and Christos C. Frangos (2014).
Publication Bias in Meta-Analysis: Confidence Intervals for Rosenthal's
Fail-Safe Number. International Scholarly Research Notices, Volume 2014.
}

\author{
Michail Tsagris and Constantinos Frangos

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}
and Constantinos Frangos \email{kfragkos@outlook.com}.
}

\seealso{
\code{ \link{halfnorm.fixednr.ci} \link{den.plot}, \link{rosenthal},
\link{convergence.rate} }
}

\examples{
stat <- rnorm(30, 3, 0.2)
se <- rchisq(30, 1)
halfnorm.fixednr.ci(stat, se)
}


