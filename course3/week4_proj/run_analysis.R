## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity 
##    and each subject.
######################################################################################################

rm(list=ls())

# load the libraries
library(reshape2)
library(data.table)

# setting the work directory
setwd('C:/Projects/coursera/c3w4/')

# Load activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load feature names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Extract only the measurements on the mean and standard deviation for each measurement.
extract_features <- grepl("mean|std", features)

######################################################################################################

# Load training data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")                # training features
names(X_train) = features

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")                # training activity ID
y_train[,2] = activity_labels[y_train[,1]]                                  # training activity name
names(y_train) = c("Activity_ID", "Activity_Name")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")    # training subject
names(subject_train) = "subject"

# Extract only the measurements on the mean and standard deviation for each measurement.
X_train = X_train[,extract_features]

# Bind the columns
train_data <- cbind(as.data.table(subject_train), y_train, X_train)
######################################################################################################

# load test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
names(X_test) = features

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Name")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(subject_test) = "subject"

# Extract only the measurements on the mean and standard deviation for each measurement.
X_test = X_test[,extract_features]

# Bind the columns
test_data <- cbind(as.data.table(subject_test), y_test, X_test)
######################################################################################################

# Merge training and test data
data = rbind(test_data, train_data)

id_labels = c("subject", "Activity_ID", "Activity_Name")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data = dcast(melt_data, subject + Activity_Name ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt",row.names=FALSE)