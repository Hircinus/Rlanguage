library("crayon")
addLines <- function() {
  x <- c()
  y <- c()
  title <- readline(cyan(prompt = "Enter a title for your graph: \n"))
  plottype <- readline(cyan(prompt = "Type?\np = points\nl = lines\nb = both (points and lines)\nh = histogram: \n"))
  xlabel <- readline(cyan(prompt = "Enter an x-axis title: \n"))
  ylabel <- readline(cyan(prompt = "Enter a y-axis title: \n"))
  writing <- TRUE
  i <- 0
  while (writing == TRUE) {
    i <- i + 1
    xvalue <- as.integer(readline(green(prompt = paste("Enter an x [", i, "] value: ", sep = ""))))
    x <- c(x, xvalue)
    yvalue <- as.integer(readline(green(prompt = paste("Enter a y [", i, "] value: ", sep = ""))))
    y <- c(y, yvalue)
    confirm <- readline(white(prompt = "Add row? (y/n): "))
    while (is.null(confirm) | confirm == '') {
      confirm <- readline(white(prompt = "Add row? (y/n): "))
      if (confirm == 'n') {
        writing <- FALSE
        break
      }
      else { break }
    }
    if (confirm == 'n') {
      writing <- FALSE
    }
    else {}
  }
  plot(x, y, main = title, type = plottype, xlab = xlabel, ylab = ylabel, xlim = c(min(x), max(x)), ylim = c(min(y), max(y)))
  cat("Created plot with type ", plottype, ", ", i, " rows and data:\n", sep="")
  cat("x", x, "\n", sep=",")
  cat("y", y, "\n", sep=",")
}
addLines()

