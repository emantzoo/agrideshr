# Factorial Design Dataset

Yield data from a two-factor experiment crossing three temperature
levels (Tmp_A, Tmp_B, Tmp_C) with three fertilizer types (Frt_A, Frt_B,
Frt_C), with four replicates per combination.

## Usage

``` r
factorial_data
```

## Format

A data frame with 36 rows and 3 variables:

- Temperature:

  Factor with 3 levels: Tmp_A, Tmp_B, Tmp_C

- Fertilizer:

  Factor with 3 levels: Frt_A, Frt_B, Frt_C

- Yield:

  Numeric yield measurement

## Examples

``` r
data(factorial_data)
str(factorial_data)
#> tibble [36 × 3] (S3: tbl_df/tbl/data.frame)
#>  $ Temperature: Factor w/ 3 levels "Tmp_A","Tmp_B",..: 1 1 1 1 1 1 1 1 1 1 ...
#>  $ Fertilizer : Factor w/ 3 levels "Frt_A","Frt_B",..: 1 2 3 1 2 3 1 2 3 1 ...
#>  $ Yield      : num [1:36] 5 5.1 6 6 5.8 6.1 6.3 6 6.2 5.5 ...
```
