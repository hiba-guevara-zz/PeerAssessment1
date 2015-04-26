##Peer Assessment in Getting and Cleaning Data
___

### Code description:

In the first section of the code, I read some of the given datasets, and create a couple of vectors (to be used in naming).

In the second section, I gradually merge the data. First, all data related to the "test" is combined (participants, activities, and the 561-feature vector). The same is done for the "train". Eventually, "test" and "train" data are merged into one data set.    _First requirement_

In the third section, I go through each column/feature in the 561-feature vector, and get its mean and standard deviation.   _Second requirement_

In the fourth section, I matched the number of the activity to its name (reading from the vector created in the first section).   _Third requirement_

In the fifth section, I use the data I extracted from features.txt and the two vectors I created to label the columns in the merged data set (done in second section).    _Fourth requirement_

In the sixth section, I go through every row/observation in the new data set, add the appropriate subject number and activity type, and fill the rest of the variables with the average of each variable for each activity and each subject.




### Variable description:

- **activity\_labels:** data extracted from activity_labels.txt

- **additional_variables:** column names for subject number and activity type

- **all_variables:** is activity\_labels + additional_variables

- **features:** data extracted from features.txt

- **new\_tidy_data:** tidy data with the average values     _Sixth requirement_

- **subject\_test:** data extracted from subject_test.txt

- **subject\_train:** data extracted from subject_train.txt

- **subject\_y_test:** result of merging subject\_test and y_test

- **subject\_y_train:** result of merging subject\_train and y_train

- **subject\_yx_test:** result of merging subject\_y_test and x_test

- **subject\_yx_train:** result of merging subject\_y_train and x_train

- **test\_train:** result of merging subject\_yx_test and subject\_yx_train   _Second requirement_

- **x\_test:** data extracted from X_test.txt

- **x\_train:** data extracted from X_train.txt

- **y\_test:** data extracted from y_test.txt

- **y\_train:** data extracted from y_train.txt

- **act:** variable; used in iterating over every activity in activities

- **activities:** the second columns of activity_labels; the one that contains the names of the activities

- **i:** variable; used in iterating over every observation in test_data to rename the activities

- **j:** variable; used in iterating over every variable in test_train to get it's mean and standard deviation

- **meanMeasurement:** outcome of the mean of each variable in test_train data set

- **sdMeasurement:** outcome of the standard deviation of each variable in test_train data set

- **sub:** variable; used in iterating over every subject in subjects

- **subjects:** a sequence with the number of each participanting subject

- **variable_names:** the second columns of all_variables; the one that contains the names of the variables

- **w:** variable, used in iterating over every obvervation in the new\_tidy_data data set

- **z:** variable, used in iterating over every variable (expect the subject number, and) in the new\_tidy_data data set