library(dplR)
library(dplyr)
library(tidyverse)

##join table

band_members
band_instruments

inner_join(band_members, band_instruments, by = "name")
left_join(band_members, band_instruments, by = "name")
full_join(band_members, band_instruments, by = "name")


band_members %>%
  inner_join(band_instruments, by = "name")

