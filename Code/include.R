########################
# Name: include.R
# Author: Robert Petit
# Last Update: Feb 2023
# Desc: default library inclusion and environment settings
########################

# An extension of recommendations from Nate Hattersly, 2022
# This file loads a handful of useful libraries
# Include every library that you need to be loaded constantly for a project
# librarian::shelf() is a very helpful functions that loads unloaded packages
#   and installs packages that are unavailable.
#   This makes this file handy environment-issue-proofing in the short-run
#   but can result in over-installing if you are not careful.

# If using RStudio, add source(Code/include.R) to the .Rprofile to autorun
# Otherwise simply add source(Code/include.R) at the top
#    of your scripts to manually run

# installs the librarian package if you don't have it
if (!("librarian" %in% rownames(utils::installed.packages()))) {
  utils::install.packages("librarian")
}

# put all of the packages that you import here
librarian::shelf( 
  cran_repo = "https://cran.microsoft.com/", # Dallas, TX
  ask = FALSE,
  stats, # https://stackoverflow.com/questions/26935095/r-dplyr-filter-not-masking-base-filter#answer-26935536
  here, # Tidy file paths
  kableExtra, # Simple table outputs
  rlang, # Tools for working with R core/TidyVerse features
  ggthemes, # includes theme_minimal()
  tidyverse, # The verse
  janitor, # Quick cleaning of dirty string names in data frames
  magrittr, # Pipe stuff
  mosaic, # More pipe stuff
  glue, # Paste is bad, glue is better
  lubridate, # Working more happily with dates https://rawgit.com/rstudio/cheatsheets/main/lubridate.pdf
  snakecase, # Transforms naming conventions. Note screaming_snake_case (SQL standard) and mixed_case (readable)
  lmtest, # Quick implementation of tests for linear models
  stargazer, # Better, more complex tables than kable (regression tables here)
  foreach, # Because R isn't great at some things
  RColorBrewer, # Pretty colors
  tictoc # quick and dirty timing tests
  # Above this is universal, below this is project specific.
)

# The following are handy libraries to add to a project
# These are not needed as constantly as others

# ------- Causal Inference ------------
# tidysynth

# ----- Big Data  -----------
# dbplyr # tidy database functionality
# DBI # Database Interface
# odbc # OBDC Driver library (Snowflake requirement)

# ------ Misc --------
# gganimate # Animated graphs
# readr # allows us to read files as strings

# tell here where we are so we can use it elsewhere
here::i_am("Code/include.R")

#---------- Extensions ---------
#To check loaded packages use (.packages())
theme_set(theme_minimal()) # Helvetica, but for graphs.
