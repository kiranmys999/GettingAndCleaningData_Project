projectTidyData <- function() {
    yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
    xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
    subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    
    yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
    xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
    subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    
    activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
    features <- read.table("./UCI HAR Dataset/features.txt")
    
    
    testData <- xTest
    trainData <- xTrain
    
    finalData <- rbind(testData, trainData)
    names(finalData) <- features$V2
    
    meanStdData <- finalData[,grep("[mM]ean|std", names(finalData))]
    
    testActivitySubject <- cbind(yTest$V1, subjectTest$V1)
    trainActivitySubject <- cbind(yTrain$V1, subjectTrain$V1)
    
    activitySubject <- rbind(testActivitySubject, trainActivitySubject)
    
    colnames(activitySubject) <- c("activity", "subject")
    
    cleanData <- cbind(meanStdData, activitySubject)
    cleanData$activity <- factor(as.character(cleanData$activity), labels=activityLabels$V2)
    
    library(reshape2)
    meltClean <- melt(cleanData, id.vars=c("activity", "subject"))
    finalTidyData <- dcast(meltClean, subject + activity ~ variable, mean)
    
    write.table(finalTidyData, file="finalTidyData.txt", row.names=FALSE)
    
}

projectTidyData()
