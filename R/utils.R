#' Check ANOVA Assumptions
#'
#' Produces a 2x2 panel of diagnostic plots for an ANOVA or linear model:
#' residuals vs fitted, Q-Q plot, Shapiro-Wilk test result, and Levene's test
#' result (if a grouping variable is provided).
#'
#' @param model A fitted model object (from \code{aov} or \code{lm}).
#' @param data The data frame used to fit the model (required for Levene's test).
#' @param group A character string naming the grouping variable in \code{data}
#'   for Levene's test. If \code{NULL}, Levene's test is skipped.
#'
#' @return Invisibly returns a list with the Shapiro-Wilk p-value and
#'   (optionally) the Levene's test p-value.
#'
#' @examples
#' data(crd_data)
#' mod <- aov(Yield ~ Variety, data = crd_data)
#' check_assumptions(mod, data = crd_data, group = "Variety")
#'
#' @importFrom graphics abline par plot.new text plot
#' @export
check_assumptions <- function(model, data = NULL, group = NULL) {
  oldpar <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(oldpar))

  resid_vals <- stats::residuals(model)
  fitted_vals <- stats::fitted(model)

  # Shapiro-Wilk test
  sw <- stats::shapiro.test(resid_vals)

  # Levene's test (if group provided)
  lev <- NULL
  if (!is.null(group) && !is.null(data)) {
    f <- stats::as.formula(paste("~", group))
    lev <- car::leveneTest(resid_vals ~ data[[group]])
  }

  n_panels <- if (!is.null(lev)) 4 else 3
  par(mfrow = c(1, n_panels), mar = c(4, 4, 3, 1))

  # Residuals vs Fitted
  plot(fitted_vals, resid_vals,
       xlab = "Fitted values", ylab = "Residuals",
       main = "Residuals vs Fitted", pch = 16, col = "steelblue")
  abline(h = 0, lty = 2, col = "red")

  # Q-Q Plot
  stats::qqnorm(resid_vals, main = "Normal Q-Q Plot", pch = 16, col = "steelblue")
  stats::qqline(resid_vals, col = "red", lwd = 2)

  # Shapiro-Wilk result
  plot.new()
  text(0.5, 0.7, "Shapiro-Wilk Test", cex = 1.3, font = 2)
  text(0.5, 0.5, paste("W =", round(sw$statistic, 4)), cex = 1.1)
  text(0.5, 0.3, paste("p-value =", round(sw$p.value, 4)), cex = 1.1,
       col = if (sw$p.value < 0.05) "red" else "darkgreen")

  # Levene's test result
  if (!is.null(lev)) {
    plot.new()
    lev_p <- lev[["Pr(>F)"]][1]
    text(0.5, 0.7, "Levene's Test", cex = 1.3, font = 2)
    text(0.5, 0.5, paste("F =", round(lev[["F value"]][1], 4)), cex = 1.1)
    text(0.5, 0.3, paste("p-value =", round(lev_p, 4)), cex = 1.1,
         col = if (lev_p < 0.05) "red" else "darkgreen")
  }

  invisible(list(
    shapiro_p = sw$p.value,
    levene_p  = if (!is.null(lev)) lev[["Pr(>F)"]][1] else NULL
  ))
}
