# DATA TYPES ###############################################
# (double precision by default)
x = 15
typeof(x)  # "double"

# "character"
x = "c"
xyz = 'abc'  # another "character"

# "logical"
x = TRUE
#same type
x = c(T,T,F)


# DATA STRUCTURES ##########################################

## Vector ==================================================
v = c(1,2,3)
is.vector(v)

v = c(T,T,F)

## Matrix ==================================================

m = matrix(c(T,T,F,F,T,F), nrow = 2)
is.matrix(m)

m = matrix(c('a', 'b',
             'c', 'd'),
           nrow = 2,
           byrow = T)

m = matrix(c('a', 'b',
             'c', 'd'),
           nrow = 2)
# default: byrow = FALSE (fills by column; 
# when column full, moves on to next column)

## Array ===================================================

# Give data, then dimensions (rows, columns, tables)
arr = array(c(1:24), c(4, 3, 2))
# 3D array

## Data Frame ==============================================

# Can combine vectors of the same length
vNums = c(1, 2, 3)
vChars = c('a', 'b', 'c')
mat = cbind(vNums, vChars)
is.matrix(mat)  # TRUE -- it's a MATRIX

mat  # Coerces all values to most basic data type
     # characters in this case

df2 = as.data.frame(cbind(vNums, vChars))
df2  # Makes a data frame with different data types
is.data.frame(df2)

## List ====================================================

o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
list1 = list(o1, o2)
list1

list2 <- list(o1, o2, list1)  # Lists within lists
list2


# COERCING TYPES ###########################################

## Automatic Coercion ======================================

# Goes to "least restrictive" data type

(coerce1 <- c(1, "b", TRUE))
typeof(coerce1)  # 'character', in this case

## Coerce Numeric to Integer ===============================

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

## Coerce Character to Numeric =============================

(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)

## Coerce Matrix to Data Frame =============================

(coerce6 <- matrix(1:9, nrow= 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9, nrow= 3)))
is.data.frame(coerce7)
