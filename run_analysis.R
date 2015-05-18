message("Loading necessary libraries...")
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(dplyr))

Main_makeTidyDataSet <- function() {
        
        checkDataFolder()
        readTestFiles()
        readTrainFiles()
        readActivity_and_Features()        
        merge_Test_And_Train_Data()        
        get_Feature_Names()
        set_Feature_Names()
}
        
checkDataFolder <- function() {
        
        # Check if data folder exists...
        if(!file.exists("UCI HAR Dataset"))
            stop("Data folder 'UCI HAR Dataset' doesn't exist in current working directory!")
        
        return
}


readTestFiles <- function() {
        
        # read the TEST files 
        message("Reading the TEST files...")
        test_subject_df <- tbl_df(read.table("UCI HAR Dataset/test/subject_test.txt"))
        test_X_df <- tbl_df(read.table("UCI HAR Dataset/test/X_test.txt"))
        test_y_df <- tbl_df(read.table("UCI HAR Dataset/test/y_test.txt"))
        
        return
}


readTrainFiles <- function() {
        
        # read the TRAIN files 
        message("Reading the TRAIN files...")
        train_subject_df <- tbl_df(read.table("UCI HAR Dataset/train/subject_train.txt"))
        train_X_df <- tbl_df(read.table("UCI HAR Dataset/train/X_train.txt"))
        train_y_df <- tbl_df(read.table("UCI HAR Dataset/train/y_train.txt"))
        
        return
}

readActivity_and_Features <- function () {
        
        # read the ACTIVITY and FEATURES files 
        message("Reading the ACTIVITY and FEATURES files...")
        activity_names <- tbl_df(read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE))
        feature_names <- tbl_df(read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE))
}


Merge_Test_And_Train_Data <- function() {
        
        # Merge the TEST  and TRAIN tables.
        # rbind() is much more faster then merge(), in my experience.
        message("Merging the TEST and TRAIN data tables....")
        X_merged <- rbind(test_X_df, train_X_df)
        y_merged <- rbind(test_y_df, train_y_df)
        subject_merged <- rbind(test_subject_df, train_subject_df)

}

get_FeatuRe_Names <- function() {}
        # select only the second column "V2" because "V2" is the name of each fearture.
        # "V1" column is only an index, not useful for us.
        message("Getting the FEATURE NAMES...")
        name_of_features <- feature_names$V2
        
        ## There are problems with duplicate names in 'name_of_features', so, we need
        ## check the names and rewrite them in a unique form. The result is stored 
        ## in the same variable 'name_of_features'
        name_of_features <- make.names(name_of_features, unique = TRUE)
}


set_Feature_Names <- function() {

        # assign the feature names to the X_merged table as variable names or column names
        message("Setting the FEATURE NAMES...")
        names(X_merged) <- name_of_features
}


# Joining the activity names table and y_merged table (activity table)
message("Joining the ACTIVITY NAMES and ACTIVITY table (y_merged table) ...")
activity_df <- left_join(y_merged, activity_names, by = "V1")

# extract only the ACTIVITY column "V2", the "V1" is not necessary yet.
activity_df <- select(activity_df, V2)

# puttung all together
message("Binding Subject, Activity and Measurements tables...")
data_table <- tbl_df(cbind(subject_merged, activity_df, X_merged))

mean_index <- grep("-mean()\\>", name_of_features)
std_index <- grep("-std()\\>", name_of_features)

#otra manera de obtener las mean() y la std()
meanStdColumns <- grep("mean|std", name_of_features, value = FALSE)

# Variable_Names_Marked_as_Duplicated <- name_of_features[duplicated(name_of_features)]
# index_duplcate_vars <-  which(name_of_features %in% Variable_Names_Marked_as_Duplicated)
# names_duplicated <- names(data_table)[duplicated(names(data_table))]

head(data_table)
    

