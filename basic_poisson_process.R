basic_poisson_process <- function(lambda, t) {
  x <- 0
  basic_poisson_process <- 0
  while (x < t) {
      x <- x + rexp(lambda)
      basic_poisson_process <- basic_poisson_process + 1
    
  }
  return(basic_poisson_process)
  
}