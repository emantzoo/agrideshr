# Check ANOVA Assumptions

Produces a 2x2 panel of diagnostic plots for an ANOVA or linear model:
residuals vs fitted, Q-Q plot, Shapiro-Wilk test result, and Levene's
test result (if a grouping variable is provided).

## Usage

``` r
check_assumptions(model, data = NULL, group = NULL)
```

## Arguments

- model:

  A fitted model object (from `aov` or `lm`).

- data:

  The data frame used to fit the model (required for Levene's test).

- group:

  A character string naming the grouping variable in `data` for Levene's
  test. If `NULL`, Levene's test is skipped.

## Value

Invisibly returns a list with the Shapiro-Wilk p-value and (optionally)
the Levene's test p-value.

## Examples

``` r
data(crd_data)
mod <- aov(Yield ~ Variety, data = crd_data)
check_assumptions(mod, data = crd_data, group = "Variety")

```
