
#reading the data
subtr   <- read.table ("subject_train.txt", header = F)
xtr   <- read.table("X_train.txt", header = F)
ytr   <- read.table("y_train.txt", header = F)
subte   <- read.table ("subject_test.txt", header = F)
xte   <- read.table("X_test.txt", header = F)
yte   <- read.table("y_test.txt", header = F)

#updating the names of the columns
xnames <-  read.table("features.txt", header = F)
labels <- xnames$V2
#cleaning the names of the columns
labels <- tolower(labels)
labels <- gsub("-", "", labels)
labels <- gsub(",", "", labels)

names(xtr) <- labels
names(xte) <- labels

names(subtr) <- "id"
names(subte) <- "id"

names(yte) <- "activity"
names(ytr) <- "activity"

#updating the labels in the activity
actlabels <-  read.table("activity_labels.txt", header = F)
ytr$X5[ytr$X5==1] <- "WALKING"
ytr$X5[ytr$X5==2] <- "WALKING_UPSTAIRS"
ytr$X5[ytr$X5==3] <- "WALKING_DOWNSTAIRS"
ytr$X5[ytr$X5==4] <- "SITTING"
ytr$X5[ytr$X5==5] <- "STANDING"
ytr$X5[ytr$X5==6] <- "LAYING"

yte$X5[yte$X5==1] <- "WALKING"
yte$X5[yte$X5==2] <- "WALKING_UPSTAIRS"
yte$X5[yte$X5==3] <- "WALKING_DOWNSTAIRS"
yte$X5[yte$X5==4] <- "SITTING"
yte$X5[yte$X5==5] <- "STANDING"
yte$X5[yte$X5==6] <- "LAYING"


#merging the different data frames
df5 <- cbind(subtr,ytr,xtr)
df6 <- cbind(subte,yte,xte)
df7 <- rbind(df5,df6)


#building the tidy data frame with the means and standard deviation
dftidy <-aggregate(df7[3:563], by=list(df7$id,df7$activity),FUN=function(x){c(Mean=mean(x), Sd=sd(x))})
colnames(dftidy)[1] <- 'subject'
colnames(dftidy)[2] <- 'activity'


#export he tity datatset
write.csv(dftidy, "tidydata.csv")


