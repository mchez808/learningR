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

