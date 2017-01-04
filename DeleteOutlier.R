remove_outliers <- function(x, na.rm = TRUE, ...) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm, ...)
  H <- 1.5 * IQR(x, na.rm = na.rm)
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
  y
}

x <- c(152.36,130.38,101.54,96.26,88.03,85.66,83.62,76.53,
       74.36,73.87,73.36,73.35,68.26,65.25,63.68,63.05,57.53)

y <- remove_outliers(x)

boxplot(x)
boxplot(y)