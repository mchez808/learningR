# cheatsheet notes for R

# RStudio shortcuts:
# comment: Ctrl+Shift+C  (no block comments exist)
# zoom on source: Ctrl+Shift+1
# focus on source: Ctrl+1

# Multiple values
x <- c(1, 2, 5, 9)  # c = Combine/concatenate

# Surround command with parentheses to also print
(y <- c(5, 1, 0, 10)) 

# sequences
0:10  # 0 through 10
10:0  # 10 through 0
seq(10)  # 1 through 10
seq(30, 0, by = -3)  # skip steps

# math

x * 2       # array mult -- Multiplies each element in x by 2
2^6         # Powers/exponents
sqrt(64)    # Squareroot
log(100)    # Natural log: base e (2.71828...)
log10(100)  # Base 10 log

# Clear environment
rm(list = ls())