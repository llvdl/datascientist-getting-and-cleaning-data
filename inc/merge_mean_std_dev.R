source("filter_mean_std_dev.R", chdir=T)

MergeMeanStddevOfTestAndTrainingDataSets <- function() {
    test <- data.frame(read.table('UCI HAR Dataset/test/X_test.txt'))
    test <- FilterMeanStdDevColumns(test)
    
    train <- data.frame(read.table('UCI HAR Dataset/train/X_train.txt'))
    train <- FilterMeanStdDevColumns(train)
    
    rbind(test,train)
}