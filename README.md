# agrideshr <img src="man/figures/logo.png" align="right" height="138" />

![agrideshr](https://raw.githubusercontent.com/emantzoo/emantzoo.github.io/master/images/agrideshr.jpg)


> Agricultural Experimental Designs in R

A tutorial R package demonstrating the analysis of five classical experimental
designs used in agricultural research. Each design includes a built-in dataset
and a detailed vignette covering the full analysis pipeline.

## Installation

```r
# Install from GitHub
devtools::install_github("emantzoo/agrideshr", build_vignettes = TRUE)
```

## Designs Covered

| # | Design | Vignette | When to Use |
|---|--------|----------|-------------|
| 1 | **Completely Randomized (CRD)** | `vignette("01-crd")` | Homogeneous units, one factor |
| 2 | **Randomized Complete Block (RCBD)** | `vignette("02-rcbd")` | One known source of variability |
| 3 | **Latin Square** | `vignette("03-latin-square")` | Two sources of variability (rows + columns) |
| 4 | **Factorial** | `vignette("04-factorial")` | Two+ crossed factors, interest in interactions |
| 5 | **Split-Plot** | `vignette("05-split-plot")` | Two factors with restricted randomisation |

## Which Design Should I Use?

```
Start
 |
 +-- How many treatment factors?
      |
      +-- ONE factor
      |    |
      |    +-- Are experimental units homogeneous?
      |         |
      |         +-- YES --> CRD
      |         |
      |         +-- NO, one source of variability --> RCBD
      |         |
      |         +-- NO, two sources (grid layout) --> Latin Square
      |
      +-- TWO or more factors
           |
           +-- Can all factors be fully randomised?
                |
                +-- YES --> Factorial Design
                |
                +-- NO, one factor is harder to change --> Split-Plot
```

## Each Vignette Covers

1. **When to Use** -- decision criteria
2. **The Design** -- model equation and layout
3. **Data** -- package dataset with `data()`
4. **Exploratory Visualization** -- ggplot2 plots
5. **Model Fitting** -- `aov()` or `lmer()`
6. **Assumption Checking** -- Q-Q plot, Shapiro-Wilk, Levene's test
7. **Post-hoc Comparisons** -- Tukey HSD and `emmeans` contrasts
8. **Conclusion** -- summary and links to the next design

## Datasets

```r
data(crd_data)           # 3 squash varieties, 3 replicates
data(rcbd_data)          # 6 fertilizer levels, 4 blocks
data(lsd_data)           # 4x4 Latin square
data(factorial_data)     # 3 temperatures x 3 fertilizers
data(split_plot_data)    # 6 whole-plot x 3 sub-plot, 6 replicates
```

## License

MIT
