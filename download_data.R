download_data <- function() {

  # Set variables
  dir_data  <- c(".")
  url_data  <- c("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
  filename  <- c("Dataset.zip")
  dir_unzip <- c("UCI HAR Dataset")
  filename_full <- paste(dir_data,filename,sep = "/")
  
  # Control directory
  if (!file.exists(dir_data)) {
    dir.create(dir_data)
  } else { print(paste("Dir ",dir_data," exists.",sep = "")) }
  
  # Download data resources
  if (!file.exists(filename_full)) {
    download.file(url_data, filename_full, method = "curl")
  } else { print(paste("File ",filename_full," exists.",sep = "")) }
  
  # Unzip data
  if (!file.exists(paste(dir_data,dir_unzip,sep = "/"))) {
    unzip(filename_full,exdir = dir_data)
  } else { print(paste("Directory ",dir_data,"/",dir_unzip," exists.",sep = "")) }

}

download_data()