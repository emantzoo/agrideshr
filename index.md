# agrideshr ![](reference/figures/logo.png)

![agrideshr](https://raw.githubusercontent.com/emantzoo/emantzoo.github.io/master/images/agrideshr.jpg)

agrideshr

> Agricultural Experimental Designs in R

A tutorial R package demonstrating the analysis of five classical
experimental designs used in agricultural research. Each design includes
a built-in dataset and a detailed vignette covering the full analysis
pipeline.

## Installation

``` r
# Install from GitHub
devtools::install_github("emantzoo/agrideshr", build_vignettes = TRUE)
```

## Designs Covered

| \#  | Design                               | Vignette                                                                                          | When to Use                                    |
|-----|--------------------------------------|---------------------------------------------------------------------------------------------------|------------------------------------------------|
| 1   | **Completely Randomized (CRD)**      | [`vignette("01-crd")`](https://emantzoo.github.io/agrideshr/articles/01-crd.md)                   | Homogeneous units, one factor                  |
| 2   | **Randomized Complete Block (RCBD)** | [`vignette("02-rcbd")`](https://emantzoo.github.io/agrideshr/articles/02-rcbd.md)                 | One known source of variability                |
| 3   | **Latin Square**                     | [`vignette("03-latin-square")`](https://emantzoo.github.io/agrideshr/articles/03-latin-square.md) | Two sources of variability (rows + columns)    |
| 4   | **Factorial**                        | [`vignette("04-factorial")`](https://emantzoo.github.io/agrideshr/articles/04-factorial.md)       | Two+ crossed factors, interest in interactions |
| 5   | **Split-Plot**                       | [`vignette("05-split-plot")`](https://emantzoo.github.io/agrideshr/articles/05-split-plot.md)     | Two factors with restricted randomisation      |

## Which Design Should I Use?

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

## Each Vignette Covers

1.  **When to Use** – decision criteria
2.  **The Design** – model equation and layout
3.  **Data** – package dataset with
    [`data()`](https://rdrr.io/r/utils/data.html)
4.  **Exploratory Visualization** – ggplot2 plots
5.  **Model Fitting** – [`aov()`](https://rdrr.io/r/stats/aov.html) or
    `lmer()`
6.  **Assumption Checking** – Q-Q plot, Shapiro-Wilk, Levene’s test
7.  **Post-hoc Comparisons** – Tukey HSD and `emmeans` contrasts
8.  **Conclusion** – summary and links to the next design

## Datasets

``` r
data(crd_data)           # 3 squash varieties, 3 replicates
data(rcbd_data)          # 6 fertilizer levels, 4 blocks
data(lsd_data)           # 4x4 Latin square
data(factorial_data)     # 3 temperatures x 3 fertilizers
data(split_plot_data)    # 6 whole-plot x 3 sub-plot, 6 replicates
```

## License

MIT
