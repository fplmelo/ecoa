# ============================================================
# Script for users of "Numerical Ecology with R"             #
# by Daniel Borcard, Francois Gillet and Pierre Legendre     #
# Adapted to R 4.0.4 on 2021-03-12                           #
# ============================================================

# This script installs or provides guidelines to install all
# the packages necessary to run the code provided in the book,
# but that do not belong to the standard R distribution (steps 1 and 3).

# Step 1 must be run only once when installing or upgrading R and
# the packages needed for the exercises have not yet been installed.
#
# Step 2 replaces step 1 when upgrading R and the packages are already installed.
#
# Step 3 must be executed when installing the book material for the first time. Later, 
# when upgrading R, verify if the packages still work. If not, install them anew.
# 
# Step 4 is not mandatory.

# 1. Install packages from the main CRAN site
#    ----------------------------------------

install.packages(
  c(
    "ade4",
    "adegraphics",
    "adespatial",
    "agricolae",
    "ape",
    "cluster",
    "cocorresp",
    "colorspace",
    "dendextend",
    "e1071",
    "ellipse",
    "FactoMineR",
    "FD",
    "gclus",
    "ggplot2",
    "googleVis",
    "igraph",
    "indicspecies",
    "labdsv",
    "MASS",
    "missMDA",
    "picante",
    "pvclust",
    "RColorBrewer",
    "rgexf",
    "RgoogleMaps",
    "rioja",
    "rrcov",
    "SoDA",
    "spdep",
    "taxize",
    "vegan",
    "vegan3d",
    "vegclust"
  ),
  dependencies = TRUE,
  type = "both"
)


# 2. Update installed packages
#    -------------------------
# This replaces step 1 if the packages have already been installed with an older
# version of R
update.packages(checkBuilt = TRUE, ask = FALSE)


# 3. Install packages that are no more available from CRAN as binaries. 
#    This step must be executed when installing the book material for the first time.  
#    Later, when upgrading R, verify if the packages still work. If not, 
#    install them anew.

# Install mvpart and MVPARTwrap that are not available from CRAN anymore:
# On Windows machines, Rtools (4.0 and above) must be installed first. Go to:
# https://cran.r-project.org/bin/windows/Rtools/
# Following that, copy or type the following commands:
install.packages("devtools")
library(devtools)
install_github("cran/mvpart", force = TRUE)
install_github("cran/MVPARTwrap", force = TRUE)
# If the “install_github” command returns an error about the namespace file (this may 
# happen due to your computer platform and System version), copy or type the following 
# commands:
# assignInNamespace("version_info", 
#                  c(devtools:::version_info,
#                  list("4.0" = list(version_min = "3.3.0",
#                  version_max = "99.99.99",
#                  path = "bin"))),
#                  "devtools")
# Then execute the install_github commands.

# Install package vegetarian v.1.2 that is no more directly available as a binary file.
# The source file can be downloaded from this address:
# https://cran.r-project.org/src/contrib/Archive/vegetarian/vegetarian_1.2.tar.gz
# Place the file in your working directory, then type:
#    install.packages("vegetarian_1.2.tar.gz", repos = NULL, type = "source")
# If the source file has been placed elsewhere you must provide the full path.


# 4. OPTIONAL (for power users): Install all R packages from
#    Environmetrics, a CRAN Task View for the Analysis of Ecological
#    and Environmental Data
#    See http://cran.r-project.org/web/views/Environmetrics.html
#    --------------------------------------------------------------------

install.packages("ctv")
library(ctv)
update.views("Environmetrics")

# Other potentially useful CRAN Task Views...
update.views("Cluster")
update.views("Multivariate")
update.views("Spatial")
update.views("MachineLearning")
