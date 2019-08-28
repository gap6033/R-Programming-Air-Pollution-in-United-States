pollutantmean <- function (directory, pollutant, id = 1:332){
        filename <- list.files(path = paste(getwd(), directory, sep ="/"), full.names = TRUE) 
        pollutantvalues <- numeric()
        for (i in id) {
                data <- read.csv(filename[i])
                pollutantvalues <- c(pollutantvalues, data[[pollutant]]) 
        }
        mean(pollutantvalues, na.rm = TRUE) 
}

