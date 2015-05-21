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
* In a general way, the files are read with "read.table" function with "check.names" option set to TRUE, to avoid possible duplicate variable names, and convert into a "dplyr" table dataframe with the function "tpl_df". In this case, we set the "stringsAsFactors" option to FALSE, and so, our variable names will be "characters" and not "factors".

```
activity_names <- tbl_df(read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE, check.names = TRUE))        
feature_names <- tbl_df(read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, check.names = TRUE))

```
         
####  STEP 6: Merging the TEST and TRAIN data tables....
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

        
####  STEP 7: Getting the FEATURE NAMES...
* In this step we extract a character vector with the names of each feature, subsetting the "feature_names" dataframe.

```
name_of_features <- feature_names$V2  
```
* There are problems with duplicate names in 'name_of_features', so, we need check the names and rewrite them in a unique form. The result is stored in the same variable 'name_of_features'

```
name_of_features <- make.names(name_of_features, unique = TRUE)  
```

    
####  STEP 8: Setting the FEATURE NAMES...
* Assign the "name_of_features" to the features dataframe (X_merged) as variable names or column names.
```
names(X_merged) <- name_of_features  
```
    
####  STEP 9: Joining the ACTIVITY NAMES and ACTIVITY table...
* In this step, the script joins the "activity_names" dataframe and "y_merged"" dataframe by the column V1. This way, we get a dataframe with all the activity names.

```
activity_df <- left_join(y_merged, activity_names, by = "V1") 
```
* The previous dataframe "activity_df" has two columns, V1 = an index, and V2 = the full list of activities. The second one, is the column we need, so the script subsets "activity_df" and store the result in the same dataframe.

```
activity_df <- select(activity_df, V2)
```

    
####  STEP 10: Binding Subject, Activity and Measurements tables...
* Putting all together. In this step, the script binds all dataframes we need together, subject dataframe (subject_merged), activity dataframe (activity_df) and features dataframe (X_merged). The result is stored in "data_table"

```
data_table <- tbl_df(cbind(subject_merged, activity_df, X_merged))
```

####  STEP 11: Getting the data table with Subject, Activity, MEAN and STD values...
* In this step, the script get the INDEX of COLUMNS with MEAN and STANDARD DEVIATION values from the character vector "name_of_features". 

```
 mean_std_columns_index <- grep("mean|std", name_of_features, value = FALSE) 
```

This index gives us the position of MEAN and STD columns in the "data_table" dataset. Previously, we need to ADD the NUMBER "2" to this columns index, because in the final "data_table" dataset, the First and Second columns are the SUBJECT and the ACTIVITY values, so we need to "JUMP" this 2 first columns.

```
  mean_std_columns_index <- mean_std_columns_index + 2  
```
* Get the table with the SUBJECT (V1), ACTIVITY (V2) and MEAN and STD values (using tne index "mean_std_columns_index")        

```
mean_std_data_table <- select(data_table, V1, V2, mean_std_columns_index)  
```

* Rename the subject column (V1) and Activity column (V2) with descriptive names

```
mean_std_data_table <- rename(mean_std_data_table, Subject = V1, Activity = V2)
```  


####  STEP 12: Getting the final tidy dataset with the average of all measurement values (mean and std), grouped by Subject and Activity...

* First, the script groups the "mean_std_data_table" dataset by SUBJECT and ACTIVITY

```
 my_group <- group_by(mean_std_data_table,Subject,Activity) 
```
* Then, the script summarize the dataframe grouped "my_group", and gets the "final_tydy_dataset", applying the mean function to the measurement columns.

```
 final_tidy_dataset <- summarise_each(my_group, funs(mean))
```

#### FINAL STEP: Writting the result file in the current working directory...
* The result is stored in the "final_tidy_dataset.txt" file.

```
write.table(final_tidy_dataset, file = "final_tidy_dataset.txt", row.names = FALSE)
```
* You can read this file with the following code:

```
x <- read.table("final_tidy_dataset.txt", header = TRUE)
```
