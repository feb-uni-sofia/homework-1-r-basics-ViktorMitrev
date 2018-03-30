# Problem 1
#A)
x <- c(4,1,1,4)

#B)
y <- c(1,4)

#C)
x-y
# the result is 3 -3 0 0 as R recycles the second vector as much times as neeeded
# to "fill" the first one - in this case twice.

#D)
s <- c(x,y)

#E)
rep(s, 10)
length(rep(s,10))

#F)
rep(s, each=3)

#G)
seq(7,21)
7:21

#H)
length(seq(7,21))


