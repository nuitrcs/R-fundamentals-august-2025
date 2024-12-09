# Variables and vectors


# Variable Names ----

# Rules:
# - Must start with a letter
# - Can include letters, numbers, . (period), and _ (underscore)
# - Case-sensitive: "myName" and "MyName" are different variables!

my_name <- "Katherine"  # Recommended: snake_case is common in R
my.name <- "Katherine"  # Legal, but not recommended
My_name <- "Katherine"  # Legal, but starting with an uppercase letter is less common in R
myName <- "Katherine"   # Legal, but camelCase is more common in languages like Java or Python

# Best Practices:
# 1. Use meaningful names that clearly describe the data or purpose (e.g., `user_age` is better than `x`).
# 2. Be consistent in style. Prefer snake_case for R, as it's widely used in the R community.
# 3. Avoid starting variable names with a dot (.) unless necessary, as it can indicate hidden objects.
# 4. Don't overwrite existing function names (e.g., avoid using `mean`, `sum`, etc.).
# 5. Use lowercase for most variables to maintain readability and convention.


# Look at variables in the Environment tab over there ----->

my_name <- 3

my_name <- c(9, 4, 2)


# Vector Indexing ----

x <- c(5, 7, 2, 4, 5, 1, 0, 9, 7, 5, 
       4, 7, 3, 6, 6, 4, 4, 4, 4, 1,
       4, 6, 2, 3, 4, 5, 7, 6, 5, 3,
       6, 2, 3, 4, 5, 7, 6, 5, 3, 6, 
       2, 3, 4, 5, 7, 6, 5, 3, 5, 1, 
       4, 6, 2, 3, 4, 5, 7, 6, 5, 3,
       6, 2, 3, 4, 5, 7, 6, 5, 3, 6, 
       0, 9, 7, 5, 4, 2, 9, 8, 8, 9)


x[1]

# Ranges

x[1:5]

1:5

x[10:20]

x[20:200]


# Multiple values

x[1, 3]   # error

x[c(1, 3)]


# Negative Values

x[-1]

x[-1:-20]



# R vectors are a single dimension ----

c(c(1, 2, 3), c(5, 6, 7))


# Vectors can only have 1 type of data in them ----

my_data <- c(3, "low", TRUE)

# missing values are OK

my_data <- c(4, NA, 5, NA, NA)
my_data
my_data[2]

my_data <- c(NA, "dog", "cat", "bird")
my_data


# note how comparisons work for vectors with NA values
my_vector <- c(4, 5, NA, 5, 4, 6, NA, 5)
my_vector == 5


# TRY IT ----


x <- c(5, 7, 2, 4, 5, 1, 0, 9, 7, 5)

# Get the third value of x


# Get the fourth through eighth values of x


# fix the error with the code below
x[2, 3, 5]


# Working with variables and vectors ----
## single element stored in a numeric variable
x <- 30
y <- 15

# multiple elements inside a vector variable
ages <- c(18, 25, 43, 35, 36, 50, 26, 25)

# think of single elements as vectors of length 1
a_variable <- 10
a_vector <- c(10)
typeof(a_variable)
typeof(a_vector)


x + y

x/y

(x > 10) | (y > 10)

# vectorized operations

ages > 10
ages > 30

ages == 25

ages = 25  # oops!
ages

ages + 1


ages > 30
ages < 40
(ages > 30) & (ages < 40)

# recycling: vector operations between vectors of unequal length
a <- c(0,0,0,0,0) # 5 elements
b <- c(1)
a + b

b <- c(1, 2)
a + b # warning