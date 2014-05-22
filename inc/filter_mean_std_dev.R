source('clean_field_names.R')

# Removes all columns from the given dataset that are not a mean or std deviation value
#
# Mean and std deviation columns are recognized by having the substring "mean" or "std" 
# (case insensitive)
#
# The names of the remaining columns are cleaned up to only contain a-z (lowercase), 0-9 and ".".
FilterMeanStdDevColumns <- function(data) {

    features <- read.table('UCI HAR Dataset/features.txt')
    
    GetMeanStddevColumnsIndices <- function() {
        sapply(X=features[,2], function(field) {
            is_mean <- grep("mean", field, ignore.case=T) != 0;
            is_std <- grep("std", field, ignore.case=T) != 0;
            !is.na(is_mean || is_std) && (is_mean || is_std)
        })
    }
    
    GetMeanStddevColumnNames <- function() {
        cols <- GetMeanStddevColumnsIndices()
        CleanFieldNames(features[cols,2])    
    }
    
    data <- data[, GetMeanStddevColumnsIndices()]
    names(data) <- GetMeanStddevColumnNames()
    data
}

