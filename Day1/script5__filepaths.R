# Working with file paths

# check your working directory
getwd()

# change the working directory to your Desktop
setwd("<path to your Desktop>")

# change the working directory back to the main folder for the workshop
setwd("<path to the main folder for the workshop")

# useful function for working with files - can you figure out what it does?
list.files()

# Here is the basic code to read in (import) a CSV file and save it to a variable called "x":
x <- read.csv("<path to your data>")

# QUEST!!
# Read in the file nu_all_fac.csv from the data folder (fill in the file path below)
# Remember to surround the file name with ""
x <- read.csv(   )
