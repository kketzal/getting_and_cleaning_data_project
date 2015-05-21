---
title: "README.md"
author: "Manuel Martínez Peinado."
Country: Spain
date: "20/05/2015"
---
**************

# run_analysis.R - How the script works
## Getting and Cleaning Data - Course Project
**************

####  Quick Overview
           
           > source("run_analysis.R")         
           Loading necessary libraries...           
           Checking necessary files...
           Reading the TEST files...
           Reading the TRAIN files...
           Reading the ACTIVITY and FEATURES files...
           Merging the TEST and TRAIN data tables....
           Getting the FEATURE NAMES...
           Setting the FEATURE NAMES...
           Joining the ACTIVITY NAMES and ACTIVITY table (y_merged table) ...
           Binding Subject, Activity and Measurements tables...
           Getting the data table with Subject, Activity, MEAN and STD values...
           Getting the final tidy dataset with the average of all measurement values (mean and std), grouped by Subject and Activity...
           Writting the result file in the working directory...
           Done!
           
#### STEP 1: Loading necessary libraries...

* In this step the script load the library "dplyr", useful for managing dataframes. 


####  STEP 2: Checking necessary files... 
* In this step the script check for necessary files, always in **current working directory**.

* Check if folder "UCI HAR Dataset" exists. TRAIN and TEST subfolder must be in this folder.

* Check if "activity_labels.txt" file exists.
    + This file contains the labels for each activity. 
    
* Check if "features.txt" file exists.
    + This file contains the labels for each feature (every measurement type).   
    
* Check if TEST files exist.
    + "subject_test.txt": This file contains an identifier (integer ID) for each person who performed measurements.
    + "X_test.txt": This file contains every testing measurement.
    + "y_test.txt": This file contains the activity ID that each person was doing when testing measurements were taken.    
    
* Check if TRAIN files exist.
    + "subject_train.txt": This file contains an identifier (integer ID) for each person who performed measurements.
    + "X_train.txt": This file contains every training measurement.
    + "y_train.txt": This file contains the activity ID that each person was doing when training measurements were taken.
    
         
####  STEP 3: Reading the TEST files...
* If testing files exist, it's time to read them.
* In a general way, the files are read with "read.table" function with "check.names" option set to TRUE, to avoid possible duplicate variable names, and convert into a "dplyr" table dataframe with the function "tpl_df".

```
test_subject_df <- tbl_df(read.table("UCI HAR Dataset/test/subject_test.txt", check.names = TRUE))
test_X_df <- tbl_df(read.table("UCI HAR Dataset/test/X_test.txt", check.names = TRUE))
test_y_df <- tbl_df(read.table("UCI HAR Dataset/test/y_test.txt", check.names = TRUE))
```

####  STEP 4: Reading the TRAIN files...
* If training files exist, it's time to read them.
* In a general way, the files are read with "read.table" function with "check.names" option set to TRUE, to avoid possible duplicate variable names, and convert into a "dplyr" table dataframe with the function "tpl_df".

```
train_subject_df <- tbl_df(read.table("UCI HAR Dataset/train/subject_train.txt", check.names = TRUE))
train_X_df <- tbl_df(read.table("UCI HAR Dataset/train/X_train.txt", check.names = TRUE))
train_y_df <- tbl_df(read.table("UCI HAR Dataset/train/y_train.txt", check.names = TRUE))

```
                                                        
####  STEP 5: Reading the ACTIVITY and FEATURES files...
* If activity and features files exist, it's time to read them.
* In a general way, the files are read with "read.table" function with "check.names" option set to TRUE, to avoid possible duplicate variable names, and convert into a "dplyr" table dataframe with the function "tpl_df".

```
activity_names <- tbl_df(read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE, check.names = TRUE))        
feature_names <- tbl_df(read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, check.names = TRUE))

```
         
####  STEP 6: Merging the TEST and TRAIN data tables....")
* Now, we merge train datasets and test datasets separately.
* In this way:
   + we bind all train and test features datasets.
   + we bind all train and test activity ID's datasets.   
   + we bind all train and test subject datasets.

```
X_merged <- rbind(test_X_df, train_X_df)
y_merged <- rbind(test_y_df, train_y_df)
subject_merged <- rbind(test_subject_df, train_subject_df)

```