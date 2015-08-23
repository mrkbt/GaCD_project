## Codebook for HAR tidy dataset
The dataset contains means of variables obtained from accelerometer and gyroscope measurements. The original data come from the Human Activity Recognition Using Smartphones Dataset v1.0 from the UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The experimental measurements were done with 30 subjects each one performing 6 different activities in several repetetions. The data are grouped by the subjects and by the activivites. Each row contains subject_id, activity name and AVERAGES of each of the measured variables from the replications. 

*	subject_id - id number of the subject (values from 1 to 30)
*	activity - description of the activity (6 activities in total)
*	tBodyAcc-(mean|std)-(X|Y|Z) - average of the mean values or standard deviations from several measurements of the tBodyAcc variable in the X, Y, or Z direction
*	tGravityAcc-(mean|std)-(X|Y|Z)
*	tBodyAccJerk-(mean|std)-(X|Y|Z)
*	tBodyGyro-(mean|std)-(X|Y|Z)
*	tBodyGyroJerk-(mean|std)-(X|Y|Z)
*	tBodyAccMag-(mean|std)-(X|Y|Z)
*	tGravityAccMag-(mean|std)-(X|Y|Z)
*	tBodyAccJerkMag-(mean|std)-(X|Y|Z)
*	tBodyGyroMag-(mean|std)-(X|Y|Z)
*	tBodyGyroJerkMag-(mean|std)-(X|Y|Z)
*	fBodyAcc-(mean|std)-(X|Y|Z)
*	fBodyAccJerk-(mean|std)-(X|Y|Z)
*	fBodyGyro-(mean|std)-(X|Y|Z)
*	fBodyAccMag-(mean|std)-(X|Y|Z)
*	fBodyAccJerkMag-(mean|std)-(X|Y|Z)
*	fBodyGyroMag-(mean|std)-(X|Y|Z)
*	fBodyGyroJerkMag-(mean|std)-(X|Y|Z)

The following text is copied from the features_info.txt that is available with the original data at the link given above:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-(mean|std)-(X|Y|Z) and tGyro-(mean|std)-(X|Y|Z). These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-(mean|std)-(X|Y|Z) and tGravityAcc-(mean|std)-(X|Y|Z)) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-(mean|std)-(X|Y|Z) and tBodyGyroJerk-(mean|std)-(X|Y|Z)). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-(mean|std)-(X|Y|Z), fBodyAccJerk-(mean|std)-(X|Y|Z), fBodyGyro-(mean|std)-(X|Y|Z), fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 