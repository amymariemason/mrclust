% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/two_stage_plot.R
\name{two_stage_plot}
\alias{two_stage_plot}
\title{Plotting clustered ratio-estimates}
\usage{
two_stage_plot(res, bx, by, bxse, byse, obs_names)
}
\arguments{
\item{res}{table of results from mr_clust_em$results$best.}

\item{bx}{numeric vector of length the number of variants, the i-th element
is the estimated regression coefficient - i.e. beta-x value - relating the
i-th genetic variant to the risk-factor.}

\item{by}{numeric vector of length the number of variants, the i-th element
is the estimated regression coefficient - i.e. beta-y value - relating the
-th genetic variant to the outcome.}

\item{bxse}{numeric vector of length the number of variants, the i-th
element is the standard error of the estimated regression coefficient
relating the i-th genetic variant to the outcome.}

\item{byse}{numeric vector of length the number of variants, the i-th
element is the standard error of the estimated regression coefficient
relating the i-th genetic variant to the risk-factor.}

\item{obs_names}{character vector of length the number of variants, the i-th
element is the name of the i-th genetic variants - e.g. the rsID.}
}
\value{
Returned is a scatter plot of the two-stage association estimates
for each variant in which: clusters are colour coded and variants with larger
 assignement/inclusion probabilities appear larger.
}
\description{
Plot of the two-stage regression estimates, i.e. G-X and G-Y associations,
annotated with cluster allocation labels and cluster mean estimates.
}
