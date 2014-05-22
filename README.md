## Goals for the clean up script
The goals for the clean up script are:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Using the `run_analyis.R` script to clean up the data set

The steps to clean up the UCI HAR dataset are:

 1. clone this repository to your local system
 2. you should see the `run_analysis.R` script in the folder you extracted the repository to
 3. extract the UCI HAR data set to the folder where you cloned this repository
     * The data set can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and must be unzipped
     * *Note:* After extracting the data set, you should have a subdirectory called `UCI HAR Dataset` in the folder the repository is cloned in
 4. open R of RStudio
 5. make sure the current working directory is the folder you extracted the repository to
     * use `getwd()` to check the current working directory and `setwd()` to set the current working directory
 6. start the script with `source("run_analysis.R")`

After the script has ran, you should see a newly created set with the filename `tidy_data_set.txt` in the folder. 
Please note that the script will overwrite the file if it already exists before running.

## Loading the clean data set

You can load the clean data set using the `read.table` function, e.g. 

> `data <- read.table("clean_data_set.txt")`

