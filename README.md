# Benefits Cost Sharing Clustering Analysis Framework

## Introduction
This repository hosts a robust framework for analyzing the Health Insurance Marketplace's BenefitsCostSharing dataset. By applying advanced clustering, statistical and other machine learning techniques, this reproducible and reusable project aims to uncover and understand the patterns in health benefits and their associated cost-sharing attributes. This framework is designed to provide systematic insights into how health benefits are grouped based on cost-sharing characteristics, which is crucial for policy-making and enhancing consumer insights.

## Getting Started

### Prerequisites
Before running the analysis, ensure you have R installed on your system along with the following R packages:
- tidyverse
- readr
- janitor
- lubridate
- ggplot2
- tidyr
- dplyr
- purrr
- cluster
- modeest
- Rtsne
- randomForest
- corrplot
- modeest

### Installation
Navigate to the project directory and run the `0-setup.R` script to set up your R environment:
```R
source('0-setup.R')
```

## Project Structure
- `0-setup.R`: Sets up the R environment and installs necessary packages.
- `1-load_data.R`: Script for loading the BenefitsCostSharing dataset.
- `2-data_cleaning.Rmd`: Scripts for cleaning the dataset.
- `3-data_transformation.Rmd`: Transforms categorical data into a numerical format suitable for clustering.
- `4-cluster_analysis.Rmd`: Main clustering analysis.
- `5-cluster_analysis_state.Rmd`: State-level clustering analysis.
- `6-visualisation.Rmd`: Visualization of clustering results.
- `6-Visualisation Function Guideline.pdf`: Guidelines for using the visualization functions.
- `Dataset_Descriptions_and_Explanations.md`: Provides detailed descriptions of the dataset.

## Usage
To use this framework:
1. Run the `0-setup.R` to prepare your environment.
2. Sequentially execute the scripts from `1-load_data.R` to `5-cluster_analysis_state.Rmd` to perform the analysis.
3. Utilize `6-visualisation.Rmd` to generate visual outputs from the clustering analysis.
4. Incorporate `6-Visualisation Function Guideline.pdf` to negivate different variables across all clusters.

## Features
This framework provides:
- Automated data cleaning and transformation scripts.
- Sophisticated clustering analysis for insightful grouping of health benefits.
- State-level analysis for detailed regional insights.
- Extensible visualizations for clear interpretation of complex data.

## Visualizations
The project includes dynamic R Markdown files `6-visualisation.Rmd` and a PDF guideline document `6-Visualisation Function Guideline.pdf` that detail the visualization approaches used to represent and interpret the clustering results effectively.

## Data
This project uses the publicly available Health Insurance Marketplace BenefitsCostSharing dataset provided in Kaggle platform, the dataset was originally published annually by the Centers for Medicare & Medicaid Services (CMS).

## Analysis Examples
For detailed examples of the analysis, refer to the `6-Visualisation Function Guideline.pdf` which include comprehensive analysis and suggested using scenarios.

## Ethical and Privacy Considerations

### Data Anonymity and Confidentiality
- We ensure all data used and presented in the project is anonymized to prevent any potential identification of individuals from the dataset. This includes the removal of all personal identifiers.
- We encourage users to verify the anonymization process and ensure it aligns with their ethical standards before using the data.

### Compliance with Data Use Agreement
- Our project complies with the data use agreements provided by Kaggle, where the dataset is hosted. Review the [Kaggle Dataset Terms of Use](https://www.kaggle.com/terms) to ensure compliance with their guidelines.
- Users are encouraged to familiarize themselves with these terms to understand any restrictions or obligations associated with the use of the dataset.

### Responsible Use of Data
- Users of this dataset are urged to use the data responsibly. The insights derived should aim to support improvements in health policy and decision-making and should not be used to discriminate against any individual or group.
- Any analytical findings should be applied constructively to foster better understanding and enhance healthcare outcomes without leading to negative consequences for the populations studied.

### Data Integrity and Accuracy
- Acknowledge that the dataset may contain biases or inaccuracies, and efforts have been made to address these in our analysis. Users should consider these potential limitations when interpreting results.
- We welcome feedback on any aspect of the dataset or analyses to improve accuracy and reliability. Please report any concerns or suggest corrections to ensure the integrity of the project.

### Feedback and Corrections
- For any ethical concerns, data inaccuracies, or general feedback, please contact us at [01714481@ic.ac.uk].
- We value community contributions and encourage the submission of suggestions or updates to enhance the ethical handling and accuracy of our analyses.

By engaging with this data and our analysis, users agree to abide by these ethical standards and use the information provided responsibly. Our goal is to advance the understanding of health insurance benefits cost-sharing without compromising individual privacy or data integrity.

## Contact Information
For support or queries, reach out to us at [01714481@ic.ac.uk].

