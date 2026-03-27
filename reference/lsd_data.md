# Latin Square Design Dataset

Yield data from a 4x4 Latin square experiment controlling for both row
and column effects while comparing four treatments.

## Usage

``` r
lsd_data
```

## Format

A data frame with 16 rows and 4 variables:

- Row:

  Factor with 4 levels representing row blocks

- Column:

  Factor with 4 levels representing column blocks

- Treatment:

  Factor with 4 levels

- Yield:

  Numeric yield measurement

## Examples

``` r
data(lsd_data)
str(lsd_data)
#> tibble [16 × 4] (S3: tbl_df/tbl/data.frame)
#>  $ Row      : Factor w/ 4 levels "1","2","3","4": 1 2 3 4 1 2 3 4 1 2 ...
#>  $ Column   : Factor w/ 4 levels "1","2","3","4": 1 4 3 2 2 1 4 3 3 2 ...
#>  $ Treatment: Factor w/ 4 levels "1","2","3","4": 1 1 1 1 2 2 2 2 3 3 ...
#>  $ Yield    : num [1:16] 8.7 7.3 5.1 8.7 9.2 7.5 6.7 4 11.6 12.7 ...
```
