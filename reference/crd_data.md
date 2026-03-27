# Completely Randomized Design (CRD) Dataset

Yield data from a completely randomized experiment comparing three
squash varieties (Acorn, Butternut, Spaghetti) with three replicates
each.

## Usage

``` r
crd_data
```

## Format

A data frame with 9 rows and 3 variables:

- Variety:

  Factor with 3 levels: Acorn, Butternut, Spaghetti

- Replicate:

  Factor indicating the replicate (rep1, rep2, rep3)

- Yield:

  Numeric yield measurement

## Examples

``` r
data(crd_data)
str(crd_data)
#> tibble [9 × 3] (S3: tbl_df/tbl/data.frame)
#>  $ Variety  : Factor w/ 3 levels "Acorn","Butternut",..: 3 3 3 2 2 2 1 1 1
#>  $ Replicate: Factor w/ 3 levels "rep1","rep2",..: 1 2 3 1 2 3 1 2 3
#>  $ Yield    : num [1:9] 21.1 17.9 21.2 4.42 2.95 12.8 15.2 5.78 13.1
```
