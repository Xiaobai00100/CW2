# 0-setup.R
# Sets up the R environment for the health insurance marketplace analysis project.

# Set the working directory, remember to set your own working directory when running the project
setwd("/Users/xb/Desktop/Imperial College/Data Science/Coursework/CW2/01714481-math70076-assessment-2")

# Install necessary packages if they are not already installed
required_packages <- c("tidyverse", "readr", "janitor", "lubridate", "ggplot2", "tidyr", "dplyr", "purrr", "cluster", "modeest", "Rtsne", "randomForest", "corrplot")

new_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

# Load necessary packages
library(tidyverse)
library(readr)
library(janitor)
library(lubridate)

# Set a seed for reproducibility in any operation that involves randomization
set.seed(2024)
