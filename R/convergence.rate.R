convergence.rate <- function(k = seq( 10, 5000, by = 10), R = 1000, alpha = 0.05) {

  a <- k
  mat <- as.numeric(R)
  qn2 <- qnorm(1 - alpha)^2

  for ( i in 1:length(k) ) {
    z <- abs( Rfast::matrnorm(k[i], R) )
    mat <- Rfast::colsums(z)^2 / qn2
    a[i] <- mean(mat)
  }

  #for ( i in 1:length(k) ) {
  #  for (j in 1:R) {
  #    z <- abs( Rfast::Rnorm(k[i]) )
  #   mat[j] <- sum(z)^2 / qn2
  #  }
  #  a[i] <- mean(mat)
  #}

  e <- k * (2 * k + pi -2) / ( pi * qn2 )

  y1 <- as.vector( abs(e - a) / a )
  k1 <- as.vector(k)
  plot(k1, y1, type = 'l', ylab = 'Absolute relative error',
  xlab = 'Number of studies', cex.lab = 1.2, cex.axis = 1.2)
  y2 <- log(y1)  ;  x2 <- log(k1)
  dev.new()
  plot(x2, y2, type = 'l', ylab = 'Logarithm of absolute relative error',
       xlab = 'Logarithm of the number of studies', cex.lab = 1.2, cex.axis = 1.2)
  mod <- lm(y2 ~ x2)
  abline(a = mod$coefficients[1], b = mod$coefficients[2], col = 2, lty = 2, lwd = 3)
  mod$coefficients

}
