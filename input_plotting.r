addLines <- function() {
  x <- c()
  y <- c()
  title <- readline(prompt = "Enter a title for your graph: ")
  xlabel <- readline(prompt = "Enter an x-axis title: ")
  ylabel <- readline(prompt = "Enter a y-axis title: ")
  # rows <- as.integer(readline(prompt = "How many rows do you want?: "))
  writing <- TRUE
  i <- 0
  while (writing == TRUE) {
    i <- i + 1
    xvalue <- as.integer(readline(prompt = paste("Enter an x [", i, "] value: ", sep = "")))
    x <- c(x, xvalue)
    yvalue <- as.integer(readline(prompt = paste("Enter a y [", i, "] value: ", sep = "")))
    y <- c(y, yvalue)
    confirm <- readline(prompt = "Add row? (y/n): ")
    if (confirm == 'n') {
      writing <- FALSE
    } else if (confirm == '' | is.null(confirm)) {
      confirm <- readline(prompt = "Add row? (y/n): ")
    }
    else {}
  }
  plot(x, y, main = title, xlab = xlabel, ylab = ylabel, xlim = c(min(x), max(x)), ylim = c(min(y), max(y)))
}
addLines()

