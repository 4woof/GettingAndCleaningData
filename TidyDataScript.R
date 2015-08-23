
DT1<-read.table("~/data/UCI HAR Dataset/test/subject_test.txt")
DT2<-read.table("~/data/UCI HAR Dataset/test/X_test.txt")
DT3<-read.table("~/data/UCI HAR Dataset/test/y_test.txt")
install.packages("dplyr")
library(dplyr)
Tr1<-read.table("~/data/UCI HAR Dataset/train/subject_train.txt")
Tr2<-read.table("~/data/UCI HAR Dataset/train/X_train.txt")
Tr3<-read.table("~/data/UCI HAR Dataset/train/y_train.txt")

fullx <- rbind(DT2, Tr2)
fully <- rbind(DT3, Tr3)
Subject <- rbind(DT1, Tr1)

feat<-read.table("~/data/UCI HAR Dataset/features.txt")
actlab<-read.table("~/data/UCI HAR Dataset/activity_labels.txt")

colnames(fullx) <- feat$V2

names(fullx)<-gsub("Acc", "Accelerometer", names(fullx))
names(fullx)<-gsub("BodyBody", "Body", names(fullx))
names(fullx)<-gsub("Gyro", "Gyroscope", names(fullx))
names(fullx)<-gsub("Mag", "Magnitude", names(fullx))
names(fullx)<-gsub("^f", "Frequency", names(fullx))
names(fullx)<-gsub("^t", "Time", names(fullx))

Activity <- actlab[fully[, 1], 2]
Activity <- data.frame(Activity)

fullxy <- cbind(fullx, Activity)

names(Subject) <- "Subject"

fullframe <- cbind(fullxy, Subject)

final <- fullframe[, grep('std|mean|Activity|Subject', names(fullframe))]

write.table(final, '/Users/Hooshmand/Documents/UCI HAR Dataset/TidyData.txt', row.name = FALSE)
