source('clean_field_names.R')

AttachSubjectAndActivity <- function(data) {
    
    GetSubjectIds <- function() {
        subjectsTest <- read.table('UCI HAR Dataset/test/subject_test.txt')
        subjectsTrain <- read.table('UCI HAR Dataset/train/subject_train.txt')
        rbind(subjectsTest, subjectsTrain)[,1]
    }
    
    GetActivityIds <- function() {
        activitiesTest <- read.table('UCI HAR Dataset/test/y_test.txt')
        activitiesTrain <- read.table('UCI HAR Dataset/train/y_train.txt')
        rbind(activitiesTest, activitiesTrain)[,1]
    }
    
    GetActivityLabelForIds <- function(ids) {
        labels <- data.frame(read.table('UCI HAR Dataset/activity_labels.txt'))
        names(labels) <- c('id', 'label')
        labels[,'label'] <- CleanFieldNames(labels[,'label'])
        
        sapply(ids, function(id) { labels[labels$id == id, 'label']})
    }
    
    data[,'subject'] <- GetSubjectIds()
    data[,'activity.id'] <- GetActivityIds()
    data[,'activity.label'] <- GetActivityLabelForIds(data[,'activity.id'])
    data
}