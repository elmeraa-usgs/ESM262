
#' How does a population grow based on inital conditions, growth rate and time?
#'
#' @param p0 inital/starting population (# of individuals)
#' @param e Euler's number default = 2.71828
#' @param r % of growth rate
#' @param t time (years)
#' @return p total population after time t

growth = function(p0, e=2.71828, r, t) {
  
  ## error checking
  if (t <=  0) return("Time cannot be less than 0")
  if (r >=  0.99) return("warning: high growth rate")
  p = p0*e**(r*t)
  return(p)
  
  
  ## while loop
  yr=1
  p0 = 10
  
  # loop
  while ((p0 < 1000) &&(yr < 1000))  { # two conditions
    
    p0 = p0 + 0.01* p0 # increase population rate by 1% each year
    # keep track of time
    yr = yr + 1
  }
  
  
}




