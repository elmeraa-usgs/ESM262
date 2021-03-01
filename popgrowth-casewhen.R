
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

  
# only high or med populzation size if over more than 5 years of time, the final population is greater than these threshold 
  mean_initialpop = mean(p)
  pop_threshold_med = 500
  pop_threshold_high = 1000
  
  if (t >= 5) {
    popsize= case_when (mean_initialpop < pop_threshold_med ~ "low",
                        mean_initialpop >= pop_threshold_med & 
                          mean_initialpop < pop_threshold_high ~ "med",
                        mean_initialpop >= pop_threshold_high ~ "high" )
  } else
    popsize = "low"
  
  return(popsize)
}