corr <- function(directory, threshold = 0){
        filename <- list.files(path = paste(getwd(),directory, sep ="/"), full.names = TRUE)
        all_corval <- c() 
        for (i in 1:length(filename)){
                sulf <- numeric() 
                nitr <- numeric ()
                file_corval <- c() 
                file <- read.csv(filename[i]) 
                good <- complete.cases(file) 
                data <- file[good,] 
                if (nrow(data) > threshold){
                        sulf <- c(sulf, data$sulfate) 
                        nitr <- c(nitr, data$nitrate)
                        file_corval <- cor(sulf, nitr)
                }
                all_corval <- c(all_corval, file_corval) 
        }
        all_corval
}


