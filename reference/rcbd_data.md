# Randomized Complete Block Design (RCBD) Dataset

Yield data from a randomized complete block experiment testing six
fertilizer levels (X25, X50, X75, X100, X125, X150) across four blocks.

## Usage

``` r
rcbd_data
```

## Format

A data frame with 24 rows and 3 variables:

- Block:

  Factor with 4 levels indicating the block

- Treatment:

  Factor with 6 ordered levels: X25, X50, X75, X100, X125, X150

- Yield:

  Numeric yield measurement

## Examples

``` r
data(rcbd_data)
str(rcbd_data)
#> tibble [24 × 3] (S3: tbl_df/tbl/data.frame)
#>  $ Block    : Factor w/ 4 levels "1","2","3","4": 1 1 1 1 1 1 2 2 2 2 ...
#>  $ Treatment: Factor w/ 6 levels "X25","X50","X75",..: 1 2 3 4 5 6 1 2 3 4 ...
#>  $ Yield    : num [1:24] 5.1 5.3 5.3 5.2 4.8 5.3 5.4 6 5.7 4.8 ...
```
