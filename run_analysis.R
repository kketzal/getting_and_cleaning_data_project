message("Loading necessary libraries...")
suppressPackageStartupMessages(library(dplyr))
    
        ###############################################################
        ##
        ##  CHECK IF ALL NECESSARY FILES EXIST.
        ##
        ###############################################################

        message("Checking necessary files...")

        # Check if data folder exists...
        if(!file.exists("UCI HAR Dataset")) 
            stop("Data folder 'UCI HAR Dataset' doesn't exist in current working directory!")        

        # Check if TEST files exist...
        if(!file.exists("UCI HAR Dataset/test/subject_test.txt"))
            stop("TEST files: SUBJECT file 'subject_test.txt' doesn't exist!")
        if(!file.exists("UCI HAR Dataset/test/X_test.txt"))
            stop("TEST files: MEASUREMENTS file 'X_test.txt' doesn't exist!")
        if(!file.exists("UCI HAR Dataset/test/y_test.txt"))
            stop("TEST files: ACTIVITY file 'y_test.txt' doesn't exist!")

        # Check if TRAIN files exist...
        if(!file.exists("UCI HAR Dataset/train/subject_train.txt"))
            stop("TRAIN files: SUBJECT file 'subject_train.txt' doesn't exist!")
        if(!file.exists("UCI HAR Dataset/train/X_train.txt"))
            stop("TRAIN files: MEASUREMENTS file 'X_train.txt' doesn't exist!")
        if(!file.exists("UCI HAR Dataset/train/y_train.txt"))
            stop("TRAIN files: ACTIVITY file 'y_train.txt' doesn't exist!")

        # Check if ACTIVITY file exists...
        if(!file.exists("UCI HAR Dataset/activity_labels.txt"))
            stop("ACTIVITY file: file 'activity_labels.txt' doesn't exist!")

        # Check if FEATURES file exists...
        if(!file.exists("UCI HAR Dataset/features.txt"))
            stop("FEATURES file: file 'features.txt' doesn't exist!")

        
        ###############################################################
        ##
        ##  NO PROBLEM. ALL FILES EXIST, SO, WE'RE GOING TO READ THEM.
        ##
        ###############################################################

        # read the TEST files 
        message("Reading the TEST files...")
        test_subject_df <- tbl_df(read.table("UCI HAR Dataset/test/subject_test.txt"))
        test_X_df <- tbl_df(read.table("UCI HAR Dataset/test/X_test.txt"))
        test_y_df <- tbl_df(read.table("UCI HAR Dataset/test/y_test.txt"))
        
        
        # read the TRAIN files 
        message("Reading the TRAIN files...")
        train_subject_df <- tbl_df(read.table("UCI HAR Dataset/train/subject_train.txt"))
        train_X_df <- tbl_df(read.table("UCI HAR Dataset/train/X_train.txt"))
        train_y_df <- tbl_df(read.table("UCI HAR Dataset/train/y_train.txt"))

        
        # read the ACTIVITY and FEATURES files 
        message("Reading the ACTIVITY and FEATURES files...")
        activity_names <- tbl_df(read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE))        
        feature_names <- tbl_df(read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE))


        ###############################################################
        ##
        ##  OK. WE'RE GOING TO DO ALL NECESSARY PROJECT STEPS.
        ##
        ###############################################################


        # Merge the TEST  and TRAIN tables.
        # rbind() is much more faster then merge(), in my experience.
        message("Merging the TEST and TRAIN data tables....")
        X_merged <- rbind(test_X_df, train_X_df)
        y_merged <- rbind(test_y_df, train_y_df)
        subject_merged <- rbind(test_subject_df, train_subject_df)


        # select only the second column "V2" because "V2" is the name of each fearture.
        # "V1" column is only an index, not useful for us.
        message("Getting the FEATURE NAMES...")
        name_of_features <- feature_names$V2        

        ## There are problems with duplicate names in 'name_of_features', so, we need
        ## check the names and rewrite them in a unique form. The result is stored 
        ## in the same variable 'name_of_features'
        name_of_features <- make.names(name_of_features, unique = TRUE)
        

        # assign the feature names to the X_merged table as variable names 
        # or column names
        message("Setting the FEATURE NAMES...")
        names(X_merged) <- name_of_features
        
    
        # Joining the activity names table and y_merged table (activity table)
        message("Joining the ACTIVITY NAMES and ACTIVITY table (y_merged table) ...")
        activity_df <- left_join(y_merged, activity_names, by = "V1")
        
        # extract only the ACTIVITY column "V2", the "V1" is not necessary yet.
        activity_df <- select(activity_df, V2)


        # puttung all together (data_table)
        message("Binding Subject, Activity and Measurements tables...")
        data_table <- tbl_df(cbind(subject_merged, activity_df, X_merged))


        # Get the index of columns with MEAN and STANDARD DEVIATION values,
        # and then, the table with the SUBJECT (V1), ACTIVITY (V2) and MEAN and 
        # STD values
        message("Getting the data table with Subject, Activity, MEAN and STD values...")
        mean_std_columns_index <- grep("mean|std", name_of_features, value = FALSE)      
        mean_std_data_table <- select(data_table, V1, V2, mean_std_columns_index)
        
        # Rename the subject column (V1) and Activity column (V2) with descriptive 
        # names
        mean_std_data_table <- rename(mean_std_data_table, Subject = V1, Activity = V2)
  

        my_group <- group_by(mean_std_data_table,Subject,Activity)
        final_tidy_dataset <- summarise_each(my_group, funs(mean))

