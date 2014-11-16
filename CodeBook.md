### Coursera Project - Getting and Cleaning Data

yTest           - input dataframe from test/y_test.txt  
xTest           - input dataframe from test/X_test.txt  
subjectTest     - input dataframe from test/subject_test.txt  

yTrain          - input dataframe from train/y_train.txt  
xTrain          - input dataframe from train/X_train.txt  
subjectTrain    - input dataframe from train/subject_train.txt  

activityLabels  - input dataframe from activity_labels.txt  
features        - input dataframe from features.txt  

testData - copy of xTest  
trainData - copy of xTrain  

finalData       - row bind the test and training data sets containing the measurement data and assign to finalData
names(finalData)    - set the variable names for the finalData columns

meanStdData     - extract the mean and std columns and assign to meanstdData
testActivitySubject     - combine the activity and subject columns from test data
trainActivitySubject    - combine the activity and subject columns from training data
activitySubject     - combine the rows from testActivitySubject and trainActivitySubject
colnames(activitySubject)   - set the variable names for activitySubject columns

cleanData       - add the activity and subject columns to meanStdData
cleanData$activity  - use factor() to change the activity column from number to their equivalent activity names.
                      convert the activity column to character type and rename the levels to activity names
                      using the second column from activityLabels data frame.

library(reshape2)   - use the melt, dcast functions to group the data
meltClean   - use melt() to reshape the data frame.
finalTidyData   - use dcast() to group by both subject and activity and calculate mean for each variable that has the 
                  measurements for mean and std.
                  
write.table()   - write the final tidy data to a file finalTidyData.txt.

projectTidyData()   - This function contains all the code, and is called at the end of the script.
