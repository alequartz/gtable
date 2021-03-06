% Generated by roxygen2 (4.0.1.99): do not edit by hand
\name{gtable_add_grobs}
\alias{gtable_add_grobs}
\title{Add grobs, possibly spanning multiple rows or columns.}
\usage{
gtable_add_grobs(x, grobs, t, l, b = t, r = l, z = Inf, clip = "on",
  name = x$name)
}
\arguments{
\item{x}{a \code{\link{gtable}} object}

\item{grobs}{a single grob or a list of grobs}

\item{t}{a numeric vector giving the top extent of the grobs}

\item{l}{a numeric vector giving the left extent of the grobs}

\item{b}{a numeric vector giving the bottom extent of the grobs}

\item{r}{a numeric vector giving the right extent of the grobs}

\item{z}{a numeric vector giving the order in which the grobs should be
 plotted.  Use \code{Inf} (the default) to plot above or \code{-Inf}
 below all existing grobs. By default positions are on the integers,
giving plenty of room to insert new grobs between existing grobs.}

\item{clip}{should drawing be clipped to the specified cells
(\code{"on"}), the entire table (\code{"inherit"}), or not at all
(\code{"off"})}

\item{name}{name of the grob - used to modify the grob name before it's
plotted.}
}
\description{
This only adds grobs into the table - it doesn't affect the table in
any way.
}

