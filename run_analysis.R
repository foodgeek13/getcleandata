## course project, Getting and Cleaning Data
## creates a tidy data set as per instructions

## be sure to set correct working directory

library("dplyr")

## read in data
X_test <- read.table("./test/X_test.txt")
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt")
X_train <- read.table("./train/X_train.txt")
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt")
features <- read.table("./features.txt", stringsAsFactors = F)

## combine six data sets into one
X_test <- cbind(subject_test, y_test, X_test)
X_train <- cbind(subject_train, y_train, X_train)
df <- rbind(X_test, X_train)

## use features to name columns, keep mean() and std()
features <- features$V2
names(df) <- c("subject", "activity", features)
dup <- duplicated(names(df))
dup_index <- grep(FALSE, dup, value = F)
df1<- df[dup_index]
df1 <- select(df1, subject, activity, contains("mean()"), contains("std()"))

## change activity values
df1$activity <- factor(df1$activity)
levels(df1$activity) <- list(walking = 1, walking_upstairs = 2, walking_downstairs = 3, sitting = 4, standing = 5, laying = 6)

## fix variable names
names(df1) <- sub("^t", "time", names(df1), perl = T)
names(df1) <- sub("^f", "freq", names(df1), perl = T)
names(df1) <- sub("mean()", "Mean", names(df1), fixed = T)
names(df1) <- sub("std()", "Std", names(df1), fixed = T)
names(df1) <- gsub("-", "", names(df1), fixed = T)
names(df1) <- sub("BodyBody", "Body", names(df1), fixed = T)

## mean of each variable for each subject/activity
tidy_data <- group_by(df1, subject, activity)
tidy_data <- summarise_each(tidy_data, funs(mean))

