
#' How does a population grow based on inital conditions, growth rate and time?
#'
#' @param p0 inital/starting population (# of individuals)
#' @param e Euler's number default = 2.71828
#' @param r % of growth rate
#' @param t time (years)
#' @return p total population after time t

growth = function(p0, e=2.71828, r, t) {
  p = p0*e**(r*t)
  
# only high or med populzation size if r >= 0.03, the final population is greater than these threshold 
  mean_initialpop = mean(p0)
  pop_threshold_med = 500
  pop_threshold_high = 1000
  
  if (r >= 0.03) {
    popsize= case_when (mean_initialpop < pop_threshold_med ~ "low",
                        mean_initialpop >= pop_threshold_med & 
                          mean_initialpop < pop_threshold_high ~ "med",
                        mean_initialpop >= pop_threshold_high ~ "high" )
  } else
    popsize = "low"
  
  return(popsize)
}