# P(0) = .1, P(1) = .2, P(2) = .3, P(3) = .4
# So each iteration is like a multinomial dist'n w probabilities described above
# Then you sum up the results, and these are the *new* cases, which then determine
# the next batch of new cases

basic_corona_sim <- function(initial = 100, iterations = 10, p = c(.1, .2, .3, .4)) {
  x <- rmultinom(1, initial, p)
  states <- numeric(iterations)
  states[1] = initial
  sum <- 0
  # Now calc the new total  
  len <- length(p) - 1
  for (i in 0:len) {
    sum <- sum + i*x[i+1]
  }
  # Now repeat the number of specified iterations
  for (i in 2:iterations) {
    x <- rmultinom(1, sum, p)
    sum <- 0
    for (j in 0:len) {
      sum <- sum + j*x[j+1]
    }
    states[i] = sum
  }
  return(states)
  
}
