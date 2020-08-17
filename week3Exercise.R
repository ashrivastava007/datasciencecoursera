means <- c()
pollutantmean <- function(directory, pollutant, id = 1:332){
        for(ids in id){
                fpath = paste(getwd(),"/",directory,"/",sprintf("%03d",ids),".csv",sep="")
                df <- read.csv(fpath)
                df <- df[pollutant]
                means <- c(means,df[!is.na(df)])
        }
        mean(means)
        
}

means <- c()
complete <- function(directory, id = 1:332){
        for(ids in id){
                fpath = paste(getwd(),"/",directory,"/",sprintf("%03d",ids),".csv",sep="")
                df <- read.csv(fpath)
                sulfatedata <- df[(!is.na(df$sulfate)),]
                nitratedata <- sulfatedata[(!is.na(sulfatedata$nitrate)),]
                rownnum <- nrow(nitratedata)
                means <- rbind(means,data.frame(id=ids,nobs=rownnum))
        }
        means
        
}