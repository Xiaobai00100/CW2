# 1-load_data.R
# Loads the data required.

# Set the working directory, remember to set your own working directory when running the project
setwd("/Users/xb/Desktop/Imperial College/Data Science/Coursework/CW2/01714481-math70076-assessment-2")

# Load BenefitsCostSharing.csv into a dataframe, set your own working directory.
benefits_cost_sharing <- read_csv("RawData_csv/BenefitsCostSharing.csv") %>%
  clean_names()  # Clean column names for consistency and ease of use

# Save the initial loaded data to an RDS file for quick reloading in the future
saveRDS(benefits_cost_sharing, file = "benefits_cost_sharing.rds")

# Print the structure and a summary of the loaded data to understand its contents
glimpse(benefits_cost_sharing)
summary(benefits_cost_sharing)
