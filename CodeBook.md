## Steps taken to clean up data set

1. Downloaded original data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
1. Extracted dataset, which creates a folder called `UCI HAR Dataset`
1. Identified the data columns which contain the mean and standard deviation
    * the fields are described in `UCI HAR Dataset/features.txt` and `UCI HAR Dataset/features_info.txt`
    * the fields are identified by finding fields containing the words "mean" and "std" (case insensitive)
1. Identified labels for activities
    * the fields are described in `UCI HAR Dataset/activity_labels.txt`
1. Mapped fields to names without hyphens, upper case letters, underscores, or spaces
    * *Note:* Part of the fields in the original data set have duplicate names, but none
    of these contain mean or standard deviation values
1. Created script (see `run_analysis.R`) to:
    * read mean and std dev measurements from test and data set
    * merge measurements
    * attach subject and activity labels
    * tidy up data set by creating a matrix the mean of the mean and std dev measurements per
      combination of subject and activity

## Fields in tidy data set

The columns in the tidy data set are the means of the mean and standard devation measurements. Below is the mapping between the original measurement field names and the field names in the tidy data set.

<table>
    <caption>Fieldnames for columns in tidy data set</caption>
    <tr>
 		<th>original</th><th>tidy</th>
 	</tr>
 	<tr>
 		<td>tBodyAcc-mean()-X</td><td>t.body.acc.mean.x</td>
 	</tr>
 	<tr>
 		<td>tBodyAcc-mean()-Y</td><td>t.body.acc.mean.y</td>
 	</tr>
 	<tr>
 		<td>tBodyAcc-mean()-Z</td><td>t.body.acc.mean.z</td>
 	</tr>
 	<tr>
 		<td>tBodyAcc-std()-X</td><td>t.body.acc.std.x</td>
 	</tr>
 	<tr>
 		<td>tBodyAcc-std()-Y</td><td>t.body.acc.std.y</td>
 	</tr>
 	<tr>
 		<td>tBodyAcc-std()-Z</td><td>t.body.acc.std.z</td>
 	</tr>
 	<tr>
 		<td>tGravityAcc-mean()-X</td><td>t.gravity.acc.mean.x</td>
 	</tr>
 	<tr>
 		<td>tGravityAcc-mean()-Y</td><td>t.gravity.acc.mean.y</td>
 	</tr>
 	<tr>
 		<td>tGravityAcc-mean()-Z</td><td>t.gravity.acc.mean.z</td>
 	</tr>
 	<tr>
 		<td>tGravityAcc-std()-X</td><td>t.gravity.acc.std.x</td>
 	</tr>
 	<tr>
 		<td>tGravityAcc-std()-Y</td><td>t.gravity.acc.std.y</td>
 	</tr>
 	<tr>
 		<td>tGravityAcc-std()-Z</td><td>t.gravity.acc.std.z</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerk-mean()-X</td><td>t.body.acc.jerk.mean.x</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerk-mean()-Y</td><td>t.body.acc.jerk.mean.y</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerk-mean()-Z</td><td>t.body.acc.jerk.mean.z</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerk-std()-X</td><td>t.body.acc.jerk.std.x</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerk-std()-Y</td><td>t.body.acc.jerk.std.y</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerk-std()-Z</td><td>t.body.acc.jerk.std.z</td>
 	</tr>
 	<tr>
 		<td>tBodyGyro-mean()-X</td><td>t.body.gyro.mean.x</td>
 	</tr>
 	<tr>
 		<td>tBodyGyro-mean()-Y</td><td>t.body.gyro.mean.y</td>
 	</tr>
 	<tr>
 		<td>tBodyGyro-mean()-Z</td><td>t.body.gyro.mean.z</td>
 	</tr>
 	<tr>
 		<td>tBodyGyro-std()-X</td><td>t.body.gyro.std.x</td>
 	</tr>
 	<tr>
 		<td>tBodyGyro-std()-Y</td><td>t.body.gyro.std.y</td>
 	</tr>
 	<tr>
 		<td>tBodyGyro-std()-Z</td><td>t.body.gyro.std.z</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerk-mean()-X</td><td>t.body.gyro.jerk.mean.x</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerk-mean()-Y</td><td>t.body.gyro.jerk.mean.y</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerk-mean()-Z</td><td>t.body.gyro.jerk.mean.z</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerk-std()-X</td><td>t.body.gyro.jerk.std.x</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerk-std()-Y</td><td>t.body.gyro.jerk.std.y</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerk-std()-Z</td><td>t.body.gyro.jerk.std.z</td>
 	</tr>
 	<tr>
 		<td>tBodyAccMag-mean()</td><td>t.body.acc.mag.mean</td>
 	</tr>
 	<tr>
 		<td>tBodyAccMag-std()</td><td>t.body.acc.mag.std</td>
 	</tr>
 	<tr>
 		<td>tGravityAccMag-mean()</td><td>t.gravity.acc.mag.mean</td>
 	</tr>
 	<tr>
 		<td>tGravityAccMag-std()</td><td>t.gravity.acc.mag.std</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerkMag-mean()</td><td>t.body.acc.jerk.mag.mean</td>
 	</tr>
 	<tr>
 		<td>tBodyAccJerkMag-std()</td><td>t.body.acc.jerk.mag.std</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroMag-mean()</td><td>t.body.gyro.mag.mean</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroMag-std()</td><td>t.body.gyro.mag.std</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerkMag-mean()</td><td>t.body.gyro.jerk.mag.mean</td>
 	</tr>
 	<tr>
 		<td>tBodyGyroJerkMag-std()</td><td>t.body.gyro.jerk.mag.std</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-mean()-X</td><td>f.body.acc.mean.x</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-mean()-Y</td><td>f.body.acc.mean.y</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-mean()-Z</td><td>f.body.acc.mean.z</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-std()-X</td><td>f.body.acc.std.x</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-std()-Y</td><td>f.body.acc.std.y</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-std()-Z</td><td>f.body.acc.std.z</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-meanFreq()-X</td><td>f.body.acc.mean.freq.x</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-meanFreq()-Y</td><td>f.body.acc.mean.freq.y</td>
 	</tr>
 	<tr>
 		<td>fBodyAcc-meanFreq()-Z</td><td>f.body.acc.mean.freq.z</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-mean()-X</td><td>f.body.acc.jerk.mean.x</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-mean()-Y</td><td>f.body.acc.jerk.mean.y</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-mean()-Z</td><td>f.body.acc.jerk.mean.z</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-std()-X</td><td>f.body.acc.jerk.std.x</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-std()-Y</td><td>f.body.acc.jerk.std.y</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-std()-Z</td><td>f.body.acc.jerk.std.z</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-meanFreq()-X</td><td>f.body.acc.jerk.mean.freq.x</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-meanFreq()-Y</td><td>f.body.acc.jerk.mean.freq.y</td>
 	</tr>
 	<tr>
 		<td>fBodyAccJerk-meanFreq()-Z</td><td>f.body.acc.jerk.mean.freq.z</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-mean()-X</td><td>f.body.gyro.mean.x</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-mean()-Y</td><td>f.body.gyro.mean.y</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-mean()-Z</td><td>f.body.gyro.mean.z</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-std()-X</td><td>f.body.gyro.std.x</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-std()-Y</td><td>f.body.gyro.std.y</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-std()-Z</td><td>f.body.gyro.std.z</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-meanFreq()-X</td><td>f.body.gyro.mean.freq.x</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-meanFreq()-Y</td><td>f.body.gyro.mean.freq.y</td>
 	</tr>
 	<tr>
 		<td>fBodyGyro-meanFreq()-Z</td><td>f.body.gyro.mean.freq.z</td>
 	</tr>
 	<tr>
 		<td>fBodyAccMag-mean()</td><td>f.body.acc.mag.mean</td>
 	</tr>
 	<tr>
 		<td>fBodyAccMag-std()</td><td>f.body.acc.mag.std</td>
 	</tr>
 	<tr>
 		<td>fBodyAccMag-meanFreq()</td><td>f.body.acc.mag.mean.freq</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyAccJerkMag-mean()</td><td>f.body.body.acc.jerk.mag.mean</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyAccJerkMag-std()</td><td>f.body.body.acc.jerk.mag.std</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyAccJerkMag-meanFreq()</td><td>f.body.body.acc.jerk.mag.mean.freq</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyGyroMag-mean()</td><td>f.body.body.gyro.mag.mean</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyGyroMag-std()</td><td>f.body.body.gyro.mag.std</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyGyroMag-meanFreq()</td><td>f.body.body.gyro.mag.mean.freq</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyGyroJerkMag-mean()</td><td>f.body.body.gyro.jerk.mag.mean</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyGyroJerkMag-std()</td><td>f.body.body.gyro.jerk.mag.std</td>
 	</tr>
 	<tr>
 		<td>fBodyBodyGyroJerkMag-meanFreq()</td><td>f.body.body.gyro.jerk.mag.mean.freq</td>
 	</tr>
 	<tr>
 		<td>angle(tBodyAccMean,gravity)</td><td>angle.t.body.acc.mean.gravity</td>
 	</tr>
 	<tr>
 		<td>angle(tBodyAccJerkMean),gravityMean)</td><td>angle.t.body.acc.jerk.mean.gravity.mean</td>
 	</tr>
 	<tr>
 		<td>angle(tBodyGyroMean,gravityMean)</td><td>angle.t.body.gyro.mean.gravity.mean</td>
 	</tr>
 	<tr>
 		<td>angle(tBodyGyroJerkMean,gravityMean)</td><td>angle.t.body.gyro.jerk.mean.gravity.mean</td>
 	</tr>
 	<tr>
 		<td>angle(X,gravityMean)</td><td>angle.x.gravity.mean</td>
 	</tr>
 	<tr>
 		<td>angle(Y,gravityMean)</td><td>angle.y.gravity.mean</td>
 	</tr>
 	<tr>
 		<td>angle(Z,gravityMean)</td><td>angle.z.gravity.mean</td>
 	</tr>
 </table>
 
 The tidy data set contains a row for each combination of activity and subject id. These are concatenated, e.g. "walking.1" for activity "walking" and subject 1. Below is the mapping of activity labels. The subject numbers range from 1 to 30.

 <table>
    <caption>Activity names</caption>
    <tr>
     	<th>original</th><th>clean</th>
 	</tr>
    <tr>
        <td>LAYING</td> <td>laying</td>
    </tr>
    <tr>
        <td>SITTING</td> <td>sitting</td>
    </tr>
    <tr>
        <td>STANDING</td> <td>standing</td>
    </tr>
    <tr>
        <td>WALKING</td> <td>walking</td>
    </tr>
    <tr>
        <td>WALKING_DOWNSTAIRS</td> <td>walking.downstairs</td>
    </tr>
    <tr>
        <td>WALKING_UPSTAIRS</td> <td>walking.upstairs</td>
    </tr>
</table>