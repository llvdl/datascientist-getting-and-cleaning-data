source("inc/assert_original_dataset.R")
source("inc/merge_mean_std_dev.R", chdir=T)
source("inc/attach_subject_activity.R", chdir=T)
source("inc/summarize.R")

RunAnalysis <- function() {
    # assert original data is where we expect it to be
    AssertOriginalDataExists()
    
    # Merges the training and the test sets to create one data set.
    # Extracts only the measurements on the mean and standard deviation for each measurement. 
    merged <- MergeMeanStddevOfTestAndTrainingDataSets()
    
    # Attach subjects and activity id
    #    Uses descriptive activity names to name the activities in the data set
    #    Appropriately labels the data set with descriptive activity names. 
    merged <- AttachSubjectAndActivity(merged)
    
    #    Creates a second, independent tidy data set with the average of each variable for each activity and each subject.     
    tidy <- Summarize(merged)
    write.table(tidy,"tidy_data_set.txt")
}

RunAnalysis()