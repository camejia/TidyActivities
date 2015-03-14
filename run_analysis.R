setwd("~/GitHub/TidyActivities")

# Download and Read Data --------------------------------------------------


download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              "getdata-projectfiles-UCI HAR Dataset.zip");
dateDownloaded <- date()

unzip("getdata-projectfiles-UCI HAR Dataset.zip")
file.info(dir())

list.files(path=".", recursive=TRUE)
# Yikes!

setwd("~/GitHub/TidyActivities/UCI HAR Dataset")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt", stringsAsFactor=FALSE)

subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")


# 1. Merge ----------------------------------------------------------------
# Merges the training and the test sets to create one data set.

train <- cbind(subject_train, y_train, X_train)
test  <- cbind(subject_test,  y_test,  X_test)
both <- rbind(train, test)


# 2. Extract --------------------------------------------------------------
# Extracts only the measurements on the mean and standard deviation for each
# measurement.
meanStdCols <- which(grepl("-mean()", features$V2, fixed=TRUE) |
                       grepl("-std()", features$V2, fixed=TRUE))
names(both) <- c("subject", "activity", features$V2)
keepers <- c(1, 2, 2 + meanStdCols)
bothms <- both[, keepers]

# 3. Describe -------------------------------------------------------------
# Uses descriptive activity names to name the activities in the data set

bothms <- merge(bothms, activity_labels, by.x="activity", by.y="V1")

# 4. Label ----------------------------------------------------------------
# Appropriately labels the data set with descriptive variable names. 

bothms$activity <- bothms$V2
bothms <- subset(bothms, select=-V2)
  
# 5. Tidy -----------------------------------------------------------------
# From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.


library(dplyr)
tidy1 <- bothms %>% group_by(activity, subject) %>% summarise_each(funs(mean))

# TODO: Do it with aggregate
# tidy2 <- aggregate(bothms, by=list(bothms$activity, bothms$subject), FUN=mean)

# TODO: Do it with data.table
# library(data.table)
# dt <- data.table(bothms)
# tidy3 <- dt[, list(mean(dt)), by=c(dt$activity, dt$subject)]

write.table(tidy1, file="tidy_activities.txt", row.name=FALSE)

tidy4 <- read.table("tidy_activities.txt", header = TRUE)
