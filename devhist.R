
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
desc::desc_set("Title" = "R Package and Shiny App to Analyze Insurance Lossruns")

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

?usethis::use_github()


