complete <- function(directory, id = 1:332) {

        filename <- list.files(path = paste(getwd(), directory, sep ="/"), full.names = TRUE)
        nobs <- c()
        for (i in id){
                  data <- read.csv(filename[i])
                  good <- complete.cases(data) 
                  nobs <- c(nobs, nrow(data[good,]))
                  }
        data.frame(id, nobs) 
}




