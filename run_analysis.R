# Libraries
library(plyr)
library(dplyr)

# Data path vectors
v_features   <- c("UCI HAR Dataset/features.txt")
v_act_labels <- c("UCI HAR Dataset/activity_labels.txt")
v_subjects   <- c("UCI HAR Dataset/test/subject_test.txt",
                  "UCI HAR Dataset/train/subject_train.txt")
v_activities <- c("UCI HAR Dataset/test/y_test.txt",
                  "UCI HAR Dataset/train/y_train.txt")

# Column names
features_df   <- read.table(v_features, stringsAsFactors = FALSE, header = FALSE)
subjects_df   <- ldply(v_subjects, read.table, stringsAsFactors = FALSE, header = FALSE, col.names = "subject")
activities_df <- left_join(
                    ldply(v_activities, read.table, stringsAsFactors = FALSE, header = FALSE, col.names = "id"),
                    read.table(v_act_labels, stringsAsFactors = FALSE, header = FALSE, col.names = c("id","label")),
                    by = c("id"))

# HAR with mean & std columns only
har_meanstd_grp <-
  c("UCI HAR Dataset/test","UCI HAR Dataset/train") %>%
  dir(pattern = "X_.+\\.txt$", full.names = TRUE) %>%
  ldply(read.table, sep = "", stringsAsFactors = FALSE, header = FALSE,
        col.names = features_df[,2]) %>%
  mutate(subject = subjects_df[,1], activity = activities_df[,2]) %>%
  select(subject, activity, grep("mean[[:punct:]]{2}|std[[:punct:]]{2}", features_df[,2]))

# Clean temporary data
rm("v_features","v_act_labels","v_subjects","v_activities","features_df","subjects_df","activities_df")

# HAR grouped by subject and activity
har_meanstd_grp <- aggregate(har_meanstd_grp[,3:68], list(subject = har_meanstd_grp$subject, activity = har_meanstd_grp$activity), mean)