# Installing and using functions from packages

# Install a package, only required once per machine, or when updating a package version
# Typically you don't want to have this code in your script
install.packages("ggplot2")

# Load the package into your environment
library(ggplot2)

# Use package function
ggplot() # call the function by name only 

# use package function w/o loading to environment
ggplot2::ggplot() # explicit function call

# Using R help to search documentation
?lm
help(lm)
