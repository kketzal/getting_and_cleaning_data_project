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

####  Quick View
           
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
* In this step the script check for necessary files.
* Check if folder "UCI HAR Dataset" exists. TRAIN and TEST subfolder must be in this folder.
* Check if "activity_labels.txt" file exists.
    + This file contains the labels for each activity. 
* Check if "features.txt" file exists.
    + This file contains the labels for each feature (every measurement type).      
* Check if TEST files exist.
    + "subject_test.txt": This file contains an identifier (integer ID) for each person who performed measurements.
    + "X_test.txt": This file contains every testing measurement.
    + "y_test.txt": This file contains the activity that each person was doing when testing measurements were taken.

         
         
         
         
