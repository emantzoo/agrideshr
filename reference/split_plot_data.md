# Split-Plot Design Dataset

Yield data from a split-plot experiment with six whole-plot treatments,
three sub-plot treatments, and six replicates.

## Usage

``` r
split_plot_data
```

## Format

A data frame with 108 rows and 4 variables:

- Replicate:

  Factor with 6 levels (X1–X6)

- WholePlot:

  Factor with 6 levels representing the whole-plot treatment

- SubPlot:

  Factor with 3 levels (d1, d2, d3) representing the sub-plot treatment

- Yield:

  Numeric yield measurement

## Examples

``` r
data(split_plot_data)
str(split_plot_data)
#> tibble [108 × 4] (S3: tbl_df/tbl/data.frame)
#>  $ Replicate: Factor w/ 6 levels "X1","X2","X3",..: 1 2 3 4 5 6 1 2 3 4 ...
#>  $ WholePlot: Factor w/ 6 levels "1","2","3","4",..: 1 1 1 1 1 1 1 1 1 1 ...
#>  $ SubPlot  : Factor w/ 3 levels "d1","d2","d3": 1 1 1 1 1 1 2 2 2 2 ...
#>  $ Yield    : num [1:108] 58.6 64.8 63.2 58.5 60.1 63.4 54.6 53.8 54.4 57.6 ...
```
