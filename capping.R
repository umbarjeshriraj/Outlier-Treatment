x <- c(152.36,130.38,101.54,96.26,88.03,85.66,83.62,76.53,
       74.36,73.87,73.36,73.35,68.26,65.25,63.68,63.05,57.53)

fun <- function(x){
  quantiles <- quantile( x, c(.05, .95 ) )
  print(quantiles)
  x[ x < quantiles[1] ] <- quantiles[1]
  x[ x > quantiles[2] ] <- quantiles[2]
  x
}
fun( x )
