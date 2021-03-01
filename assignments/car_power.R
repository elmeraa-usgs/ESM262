
#' Power From a Car
#'
#' This function compute power generated from a car from a fuel efficiency at a given
#' @param crolling (0.015)
#' @param cdrag (0.3)
#' @param m mass of car
#' @param pair density of air (1.2 kg/m3)
#' @param A surface area of car (m2)
#' @param V vehicle speed, assuming no headwind (m/s)
#' @param g acceleration due to gravity (m/s) default=9.8
#' @return power (W)
#' @author Elmera Azadpour

power_gen_orig = function(crolling = 0.015, mass, V, A, rho=1000, g=9.8, crolling = 0.015, cdrag = 0.3) {
  
  # calculate power
  result = rho * height * flow * g * Keff
  return(result)
}
