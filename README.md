##Peer Assessment in Getting and Cleaning Data
___

In the first section of the code, I read some of the given datasets, and create a couple of vectors (to be used in naming).

In the second section, I gradually merge the data. First, all data related to the "test" is combined (participants, activities, and the 561-feature vector). The same is done for the "train". Eventually, "test" and "train" data are merged into one data set.    _First requirement_

In the third section, I go through each column/feature in the 561-feature vector, and get its mean and standard deviation.   _Second requirement_

In the fourth section, I matched the number of the activity to its name (reading from the vector created in the first section).   _Third requirement_

In the fifth section, I use the data I extracted from features.txt and the two vectors I created to label the columns in the merged data set (done in second section).    _Fourth requirement_

In the sixth section, 



**Variable description:**
- activity\_labels: data extracted from activit_labels.txt
- additional_variables:
- all_variables:
- features: data extracted from features.txt
- new\_tidy_data: tidy data with the average values     _Sixth requirement_
- subject\_test: data extracted from subject_test.txt
- subject\_train: data extracted from subject_train.txt
- subject\_y_test: result of merging subject\_test and y_test
- subject\_y_train: result of merging subject\_train and y_train
- subject\_yx_test: result of merging subject\_y_test and x_test
- subject\_yx_train: result of merging subject\_y_train and x_train
- test\_train: result of merging subject\_yx_test and subject\_yx_train   _Second requirement_
- x\_test: data extracted from X_test.txt
- x\_train: data extracted from X_train.txt
- y\_test: data extracted from y_test.txt
- y\_train: data extracted from y_train.txt
- act:
- activities:
- i:
- j:
- meanMeasurement:
- sdMeasurement:
- sub:
- subjects:
- variable_names:
- w:
- z: