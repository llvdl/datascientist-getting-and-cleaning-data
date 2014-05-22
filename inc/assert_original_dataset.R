AssertOriginalDataExists <- function() {

    AssertFileExists <- function(path, msg) {
        if(!file.exists(path)) {
            msgWithParams <- gsub(pattern='\\{path\\}',replacement=path,x=msg)
            stop(msgWithParams)
        }
    }
    
    AssertFileExists('UCI HAR Dataset', 'could not find "{path}" folder in current folder. Please check if you unzipped the original dataset in this folder.')
    AssertFileExists('UCI HAR Dataset/features.txt', 'could not find original features description file "{path}"')
    AssertFileExists('UCI HAR Dataset/test/X_test.txt', 'could not find original test dataset file "{path}"')
    AssertFileExists('UCI HAR Dataset/test/y_test.txt', 'could not find original test dataset file "{path}"')
    AssertFileExists('UCI HAR Dataset/train/X_train.txt', 'could not find original train dataset file "{path}"')
    AssertFileExists('UCI HAR Dataset/train/y_train.txt', 'could not find original train dataset file "{path}"')
    AssertFileExists('UCI HAR Dataset/test/subject_test.txt', 'could not find original test dataset file "{path}"')
    AssertFileExists('UCI HAR Dataset/train/subject_train.txt', 'could not find original train dataset file "{path}"')
   
}