## Read test and training data sets
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activities <- activity_labels[,2]
subjects <- seq(1,30)

## Merge the training and the test sets to create one data set
subject_y_test <- cbind(subject_test,y_test)
subject_yx_test <- cbind(subject_y_test,x_test)
subject_y_train <- cbind(subject_train,y_train)
subject_yx_train <- cbind(subject_y_train,x_train)
test_train <- rbind(subject_yx_test,subject_yx_train)

## Extract only the measurements on the mean and standard deviation for each measurement
meanMeasurement <- numeric()
sdMeasurement <- numeric()

for(j in 3:563) {
    meanMeasurement[j] <- mean(test_train[,j])
    sdMeasurement[j] <- sd(test_train[,j])
}
print("Mean: " + meanMeasurement)
print("Standard deviation: " + sdMeasurement)

## Use descriptive activity names to name the activities in the data set
for(i in 1:10299) {
    if(test_train[i,2] == 1) {
        test_train[i,2] = activities[1]
    }
    else if(test_train[i,2] == 2) {
      test_train[i,2] = activities[2]
    }
    else if(test_train[i,2] == 3) {
      test_train[i,2] = activities[3]
    }
    else if(test_train[i,2] == 4) {
      test_train[i,2] = activities[4]
    }
    else if(test_train[i,2] == 5) {
      test_train[i,2] = activities[5]
    }
    else if(test_train[i,2] == 6) {
      test_train[i,2] = activities[6]
    }
}

## Appropriately label the data set with descriptive variable names
additional_variables <- data.frame(V1 = 562:563, V2 = c("Subject number","Activity type"))
all_variables <- rbind(additional_variables,features)
variable_names <- all_variables[,2]
names(test_train) <- variable_names

## Create a second, independent tidy data set with the average of each variable
    ## for each activity and each subject.

new_tidy_data <- data.frame()
w <- 1
for(sub in subjects){
  for (act in activities){
    new_tidy_data[w,1] = sub
    new_tidy_data[w,2] = act
    for (z in 3:563){
      new_tidy_data[w,z] <- apply(test_train[z],2,mean)
    }
    w <- w + 1
  }
}
names(new_tidy_data) <- variable_names
write.table(new_tidy_data,file="new_tidy_data.txt",row.names=TRUE)