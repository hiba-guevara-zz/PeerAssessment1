##Peer Assessment in Getting and Cleaning Data
___

In the first section of the code, I read some of the given datasets, and create a couple of vectors (to be used in naming).

In the second section, I gradually merge the data. First, all data related to the "test" is combined (participants, activities, and the 561-feature vector). The same is done for the "train". Eventually, "test" and "train" data are merged into one data set.    _First requirement_

In the third section, I go through each column/feature in the 561-feature vector, and get its mean and standard deviation.   _Second requirement_

In the fourth section, I matched the number of the activity to its name (reading from the vector created in the first section).   _Third requirement_

In the fifth section, I use the data I extracted from features.txt and the two vectors I created to label the columns in the merged data set (done in second section).    _Fourth requirement_

In the sixth section, 



**Variable description:**
- activity_labels:
- additional_variables:
- all_variables:
- features:
- new_tidy_data:
- subject_test:
- subject_train:
- subject_y_test:
- subject_y_train:
- subject_yx_test:
- subject_yx_train:
- test_train:
- x_test:
- x_train:
- y_test:
- y_train:
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