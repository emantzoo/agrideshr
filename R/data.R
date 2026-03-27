#' Completely Randomized Design (CRD) Dataset
#'
#' Yield data from a completely randomized experiment comparing three squash
#' varieties (Acorn, Butternut, Spaghetti) with three replicates each.
#'
#' @format A data frame with 9 rows and 3 variables:
#' \describe{
#'   \item{Variety}{Factor with 3 levels: Acorn, Butternut, Spaghetti}
#'   \item{Replicate}{Factor indicating the replicate (rep1, rep2, rep3)}
#'   \item{Yield}{Numeric yield measurement}
#' }
#'
#' @examples
#' data(crd_data)
#' str(crd_data)
"crd_data"

#' Randomized Complete Block Design (RCBD) Dataset
#'
#' Yield data from a randomized complete block experiment testing six fertilizer
#' levels (X25, X50, X75, X100, X125, X150) across four blocks.
#'
#' @format A data frame with 24 rows and 3 variables:
#' \describe{
#'   \item{Block}{Factor with 4 levels indicating the block}
#'   \item{Treatment}{Factor with 6 ordered levels: X25, X50, X75, X100, X125, X150}
#'   \item{Yield}{Numeric yield measurement}
#' }
#'
#' @examples
#' data(rcbd_data)
#' str(rcbd_data)
"rcbd_data"

#' Latin Square Design Dataset
#'
#' Yield data from a 4x4 Latin square experiment controlling for both row
#' and column effects while comparing four treatments.
#'
#' @format A data frame with 16 rows and 4 variables:
#' \describe{
#'   \item{Row}{Factor with 4 levels representing row blocks}
#'   \item{Column}{Factor with 4 levels representing column blocks}
#'   \item{Treatment}{Factor with 4 levels}
#'   \item{Yield}{Numeric yield measurement}
#' }
#'
#' @examples
#' data(lsd_data)
#' str(lsd_data)
"lsd_data"

#' Factorial Design Dataset
#'
#' Yield data from a two-factor experiment crossing three temperature levels
#' (Tmp_A, Tmp_B, Tmp_C) with three fertilizer types (Frt_A, Frt_B, Frt_C),
#' with four replicates per combination.
#'
#' @format A data frame with 36 rows and 3 variables:
#' \describe{
#'   \item{Temperature}{Factor with 3 levels: Tmp_A, Tmp_B, Tmp_C}
#'   \item{Fertilizer}{Factor with 3 levels: Frt_A, Frt_B, Frt_C}
#'   \item{Yield}{Numeric yield measurement}
#' }
#'
#' @examples
#' data(factorial_data)
#' str(factorial_data)
"factorial_data"

#' Split-Plot Design Dataset
#'
#' Yield data from a split-plot experiment with six whole-plot treatments,
#' three sub-plot treatments, and six replicates.
#'
#' @format A data frame with 108 rows and 4 variables:
#' \describe{
#'   \item{Replicate}{Factor with 6 levels (X1--X6)}
#'   \item{WholePlot}{Factor with 6 levels representing the whole-plot treatment}
#'   \item{SubPlot}{Factor with 3 levels (d1, d2, d3) representing the sub-plot treatment}
#'   \item{Yield}{Numeric yield measurement}
#' }
#'
#' @examples
#' data(split_plot_data)
#' str(split_plot_data)
"split_plot_data"
