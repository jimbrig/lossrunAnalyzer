---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# lossrunAnalyzer - R Package for Analyzing Insurance Claims Data

The goal of lossrunAnalyzer is to help actuaries quickly analyze and diagnose lossrun data for Property Casualty insurance claims data. 

## Badges

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Project Status: WIP](https://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)
<!-- badges: end -->

## Installation

You can install lossrunAnalyzer from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jimbrig2011/lossrunAnalyzer")
```

## Roadmap

The end-goal of **lossrunAnalyzer** is to provide support for the following: 

- Initial Reasonability Checks:
  + Unique claim ID
  + Paid + Case = Incurred
  + Totals = Sum of Splits
  + Report Date >= Loss Date
  + Field Consistency (i.e. States, Status, etc.)
  
- Possible Duplicate Detection

- Occurrence Grouping

- Adding "Working" Fields
  + Retentions / Limits / Deductibles
  + Various "Limited" Amounts
  + ALAE Treatments
  + Years (Policy, Accident, Report, Fiscal, Calendar)
  + Lags (Report, Close, Tenure)
  + Max IBNR's at various scenarios
  + Legal, Lost-Time, Indemnity Support

- Utilizing Lookup / Support Tables

- Record Linkage to Reduce Fuzzyness

- Merging Lossruns Across Multiple Evaluations

- Comparing Lossruns to Prior's and Addressing Various KPI's / Diagnostic Checks

- Anomaly / Outlier Detection

- Automating Development Comments as to why things changed

- Summarizing Data into Triangles

- Performing an AvE (Actual vs. Expected) Analysis Summary

- Checking for Dropped / Missing Claims or New Claims with Old Dates

- Tie Out to Exposures
