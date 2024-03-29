
#' Power From a Reservoir
#'
#' This function compute power generated by a flow rate from a reservoir at a given
#' height
#' @param height (m)
#' @param flow (m3/s)
#' @param rho density of water (default 1000 g/m3)
#' @param Keff reservoir efficiency
#' @param g acceleration due to gravity (m/s) default=9.8
#' @return power (W)
#' @author Naomi Tague

power_gen_orig = function(height, flow, rho=1000, g=9.8, Keff=0.8) {
  
  # calculate power
  result = rho * height * flow * g * Keff
  return(result)
}