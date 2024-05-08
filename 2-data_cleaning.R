# 2-data_cleaning.R
# Cleans the BenefitsCostSharing dataset for the first research question on out-of-pocket costs.

# Load the data
benefits_cost_sharing <- readRDS("benefits_cost_sharing.rds")

# Initial overview of the data to identify any immediate cleaning needs
print("Initial Data Summary:")
summary(benefits_cost_sharing)

# Check for number of NA values per column before making changes
na_counts_before <- sapply(benefits_cost_sharing, function(x) sum(is.na(x)))
print("Number of NA values per column before cleaning:")
print(na_counts_before)

# Handling missing values
# Replace missing values in percentage fields with "Not Specified" or the mode for categorical data
benefits_cost_sharing <- benefits_cost_sharing %>%
  mutate(across(c(coins_inn_tier1, coins_outof_net), ~ifelse(is.na(.), "Not Specified", .)),
         across(c(ehb_var_reason, is_covered), ~ifelse(is.na(.), Mode(.), .)))

# Function to calculate mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

# Convert important numeric fields from characters to numeric (removing % signs and converting to proportion)
benefits_cost_sharing <- benefits_cost_sharing %>%
  mutate(
    across(c(coins_inn_tier1, coins_outof_net),
           ~ifelse(grepl("[^0-9.%]", .), NA_real_, # Check for any characters not a digit, dot, or percent
                   as.numeric(gsub("[^0-9.]", "", .)) / 100))) # Remove all non-numeric characters except the dot, then convert to numeric


# Remove any duplicate entries based on 'plan_id' and 'benefit_name'
benefits_cost_sharing <- benefits_cost_sharing %>%
  distinct(plan_id, benefit_name, .keep_all = TRUE)

# Recheck NA values to ensure cleaning was effective
na_counts_after <- sapply(benefits_cost_sharing, function(x) sum(is.na(x)))
print("Number of NA values per column after cleaning:")
print(na_counts_after)

# Check summary statistics post-cleaning to verify data integrity
print("Post-Cleaning Data Summary:")
summary(benefits_cost_sharing)

# Save the cleaned data
saveRDS(benefits_cost_sharing, file = "benefits_cost_sharing_cleaned.rds")

# Confirm the final structure and types of the cleaned data
glimpse(benefits_cost_sharing)
