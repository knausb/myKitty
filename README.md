# myKitty
Dummy R package of use to no one but me

[![Travis-CI Build Status](https://travis-ci.org/knausb/myKitty.svg?branch=master)](https://travis-ci.org/knausb/myKitty)

I use this to swap elements into and out of when I'm trying to troubleshoot other functions and packages.
I can think of no reason why this would be useful to others.
But it is useful to me.


Don't forget to clean and build the vignettes.
Then install the package.

    devtools::clean_vignettes(pkg=".")
    devtools::build_vignettes(pkg=".")
    devtools::install(pkg = ".", build_vignettes = TRUE)
    

Remember, clean_vignettes, build_vignettes and build the package.


Check the vignettes.

    browseVignettes(package="myKitty")


In order to install from GitHub.

    devtools::install_github(repo="knausb/myKitten", build_vignettes=TRUE)
    devtools::install_github(repo="knausb/myKitten")


------

Build at the shell.

    R CMD build myKitty
    R CMD check myKitty_1.0.tar.gz --as-cran


A current version of pandoc exists in RStudio.
See [installing Pandoc](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).


------


It's called myKitten because it was built with the [pkgKitten](http://dirk.eddelbuettel.com/code/pkgkitten.html).
