#read data files
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

#renames columns by feature
names(x_train) <- features[,2]
names(x_test) <- features[,2]

#renames columns for merges and joins to work
names(subject_train) <- "subject"
names(subject_test) <- "subject"
names(y_train) <- "activityid"
names(y_test) <- "activityid"
names(activity_labels) <- c("activityid","activity")

#creates a logical vector for subsetting just containing mean and std
tidy_c <- as.logical(grepl("std()",features[,2],fixed=TRUE) +
                     grepl("mean()",features[,2],fixed=TRUE))

#binds test and train into one dataset, while subsetting desired columns
tidy <- rbind(cbind(subject_test,y_test,x_test[,tidy_c])
              ,cbind(subject_train, y_train, x_train[,tidy_c]))

#adds descriptive activity names and removes activityid
tidy <- merge(tidy, activity_labels,  by = "activityid")
tidy <- tidy[,!names(tidy) %in% "activityid"]

#creates final tidy summary
summarytable <- aggregate(. ~ subject + activity, tidy, mean)

#writes file
write.table(summarytable,"subject_means.txt",row.name=FALSE) 



