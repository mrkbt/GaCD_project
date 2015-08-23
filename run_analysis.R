library(dplyr)

## Read the raw data from the files
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Merge the data into one data frame (in steps)
test_data <- cbind(subject_test, y_test, x_test)
train_data <- cbind(subject_train, y_train, x_train)
data <- rbind(test_data, train_data)

## Rename the columns 
data_names <- c("subject_id", "activity", 
                unlist(
                  read.table("UCI HAR Dataset/features.txt",
                             stringsAsFactors = F)[2]))
names(data) <- data_names

## Select only mean and std variables
selected_variables <- unlist(
  data_names[
    sapply(data_names, 
           function (x) {grepl(pattern="std|(mean[()]{2})", x)}
           )
    ]
  )
partial_data <- data[,c("subject_id","activity",selected_variables)]

## Remove () from the column names and change - to _
## This is done so the group_by function can be used later
## without troubles.
partial_data_names <- sapply(
  names(partial_data), function (x) {gsub("\\(\\)", "", x)})
partial_data_names <- sapply(
  partial_data_names, function (x) {gsub("-", "_", x)})
names(partial_data) <- partial_data_names

## Order the data by subject_id and activity
partial_data <- partial_data[
  order(partial_data$subject_id, partial_data$activity),]

## Assign labels to the activities
activity_labels <- read.table(
  "UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
for (i in 1:length(activity_labels[,2])) {
  partial_data$activity[
    partial_data$activity == i] <- activity_labels[i, 2]
}

## And now we are ready to get the tidy data
by_subject_activity <- group_by(partial_data, subject_id, activity)
tidy_data <- summarise_each_(
  by_subject_activity,
  funs(mean), 
  names(by_subject_activity)[3:length(by_subject_activity)])

## Write the tidy dataset into a file
write.table(tidy_data, "HAR_dataset_tidy.txt", row.names = F)