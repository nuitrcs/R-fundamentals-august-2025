# Working with data frames

# reading in a data file --------
qog <- read.csv(file="data/qog_data.csv")

# it has columns and rows. Let's look at it
View(qog)

ncol(qog) # number of columns/variables in data frame
nrow(qog) # number of rows/observations in data frame


# what are the variables?
names(qog)


# each column is a vector that can be accessed with $
qog$cname_qog
qog$year


table(qog$cname_qog) # operations on vectors




# Indexing : dataframe[ row indices, col indices ] --------

## indexing by position --------
qog[1,1]
qog[1,]
qog[,1]

qog[1:10, ]


## indexing by name --------
qog[, "cname_qog"]
qog[, c("cname_qog", "year")]


## boolean indexing --------
qog[qog$cname_qog == "United States", ]
qog[qog$year > 2010, ]

qog[qog$cname_qog == "United States", "ht_region" ] # row and column indexing with boolean condition


# make new columns in a data frame --------
qog$cckp_rain_cm <- qog$cckp_rain / 10
View(qog)
names(qog)
