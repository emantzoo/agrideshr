# Prepare package datasets from Excel files
# Run this script from the package root directory

library(readxl)
library(dplyr)
library(tidyr)

# CRD data: 3 varieties, 3 replicates
crd_raw <- read_excel("data-raw/crd_data.xlsx")
crd_data <- crd_raw %>%
  select(-any_of("Sums")) %>%
  pivot_longer(-Variety, names_to = "Replicate", values_to = "Yield") %>%
  mutate(Variety = as.factor(Variety),
         Replicate = as.factor(Replicate))
usethis::use_data(crd_data, overwrite = TRUE)

# RCBD data: 6 fertilizer treatments, 3 blocks
rcbd_raw <- read_excel("data-raw/rcbd_data.xlsx")
rcbd_data <- rcbd_raw %>%
  pivot_longer(-block, names_to = "Treatment", values_to = "Yield") %>%
  mutate(Treatment = factor(Treatment,
                            levels = c("X25", "X50", "X75", "X100", "X125", "X150")),
         Block = as.factor(block)) %>%
  select(Block, Treatment, Yield)
usethis::use_data(rcbd_data, overwrite = TRUE)

# LSD data: 4x4 Latin square
lsd_raw <- read_excel("data-raw/lsd_data.xlsx")
lsd_data <- lsd_raw %>%
  mutate(Treatment = as.factor(X),
         Row = as.factor(R),
         Column = as.factor(C)) %>%
  select(Row, Column, Treatment, Yield = Y)
usethis::use_data(lsd_data, overwrite = TRUE)

# Factorial data: Temperature x Fertilizer
fact_raw <- read_excel("data-raw/factorial_data.xlsx")
factorial_data <- fact_raw %>%
  pivot_longer(-Tmp, names_to = "Fertilizer", values_to = "Yield") %>%
  mutate(Temperature = as.factor(Tmp),
         Fertilizer = as.factor(Fertilizer)) %>%
  select(Temperature, Fertilizer, Yield)
usethis::use_data(factorial_data, overwrite = TRUE)

# Split-plot data: Whole-plot (A) x Sub-plot (B), 6 replicates
split_raw <- read_excel("data-raw/split_plot_data.xlsx")
split_plot_data <- split_raw %>%
  pivot_longer(-c(A, B), names_to = "Replicate", values_to = "Yield") %>%
  mutate(WholePlot = as.factor(A),
         SubPlot = as.factor(B),
         Replicate = as.factor(Replicate)) %>%
  select(Replicate, WholePost = WholePost, SubPlot, Yield)
# Fix: keep original names but cleaner
split_plot_data <- split_raw %>%
  pivot_longer(-c(A, B), names_to = "Replicate", values_to = "Yield") %>%
  mutate(WholePlot = as.factor(A),
         SubPlot = as.factor(B),
         Replicate = as.factor(Replicate)) %>%
  select(Replicate, WholePlot, SubPlot, Yield)
usethis::use_data(split_plot_data, overwrite = TRUE)
