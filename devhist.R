
#  ------------------------------------------------------------------------
#
# Title : lossrunAnalyzer R Package Development History Script
#    By : Jimmy Briggs
#  Date : 2020-01-10
#
#  ------------------------------------------------------------------------

# packages
library(devtools)
library(usethis)
library(git2r)
library(fs)
library(desc)

# ignore this script
usethis::use_build_ignore("devhist.R")

# add description to DESCRIPTION
desc::desc_set(
  Title = "Lossrun Analyzer",
  Description = "R Package for Interactive Analysis for Insurance Lossruns."
)

# setup git / version control
usethis::edit_r_profile() # set ssh as default protocol
my_cred <- git2r::cred_ssh_key(
  publickey = fs::path_abs('C:\\Users\\jimmy.briggs\\.ssh\\id_rsa.pub'),
  privatekey = fs::path_abs('C:\\Users\\jimmy.briggs\\.ssh\\id_rsa')
)
usethis::use_git_credentials(my_cred)
usethis::git_credentials()
rm(my_cred)
usethis::use_git_config(user.name = "Jimmy Briggs", user.email = "jimmy.briggs@oliverwyman.com")
usethis::use_git()
usethis::git_vaccinate()
usethis::use_github()
usethis::git_sitrep()

# add a readme
usethis::use_readme_rmd()

# setup namespace and roxygen
usethis::use_namespace()
usethis::use_roxygen_md()
devtools::document()

# setup prelim .R files
usethis::use_package_doc()
usethis::use_tibble() # @return a [tibble][tibble::tibble-package]
usethis::use_pipe()
usethis::use_testthat()
devtools::document()

# lifecycle & WIP badge
usethis::use_lifecycle_badge("Experimental")
usethis::use_badge(
  "Project Status: WIP",
  href = "http://www.repostatus.org/#wip",
  src = "https://www.repostatus.org/badges/latest/wip.svg"
)
knitr::knit("README.Rmd")

# add some raw data
usethis::use_data_raw("example-lossruns")
usethis::use_git_ignore(ignores = c("*", "!.gitignore"), directory = "data-raw/client-lossruns")

# add a vignette
usethis::use_vignette("what-is-a-lossrun", "What is a Lossrun ?")

