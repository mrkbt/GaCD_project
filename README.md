## README
The HAR tidy dataset was obtained from Human Activity Recognition Using Smartphones Dataset v1.0 from the UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). To run the analysis you will need to download and unpack the following file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The description of the variables can be found in the CookBook.md file in this repository.

The steps to get the tidy dataset:
	1. The test data are obtained from the files subject_test.txt, X_test.txt y_test.txt in "UCI HAR Dataset/test/" folder.
		- subject_test.txt contains id of the subject for each observation.
		- y_test.txt contains numerical label of the performed activity for each observation
		- X_test.txt contains the measured values of all the variables for each observation
	2. The training data are obtaine in a similar fashion from the respective files in "UCI HAR Dataset/train/" folder.
	3. The subject ids and activities ids are attached as the first two columns to the measured values and saved together with them in the test_data and train_data frames respectively.
	4. The test_data and train_data data_frames are then combined into one large data frame called data.
	5. The names for the columns with the measured values are read from "UCI HAR Dataset/features.txt" file and combined with the names subject_id and activity for the first two columns.
	6. Only the columns with measured values whose name ends in mean() or std() are selected and stored in the partial_data data frame.
	7. The column names are edited so they don't contain () or - which would cause problems with the group_by and summarise_each functions, that are used later in the script.
	8. The data are then ordered by the subject_id and activity indices.
	9. The numerical activitey indices are converted into text labels.
	10. The data are grouped by subject_id and the activity and an average from several measurements of each variable is calculated. This is then stored in the tidy_data data frame.
	11. The tidy_data data frame is written into HAR_dataset_tidy.txt file.



