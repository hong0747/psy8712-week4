# Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(tidyverse)

# Data Import
import_tbl <- read_delim("../data/week4.dat", delim = "-", show_col_types = TRUE, col_names = c("casenum", "parnum", "stimver", "datadate", "qs"))
glimpse(import_tbl)
wide_tbl <- import_tbl %>% separate(qs, into = c("q1", "q2", "q3", "q4", "q5"), sep = " - ", convert = TRUE)
sapply(wide_tbl[5:9], as.integer)