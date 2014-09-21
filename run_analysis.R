
#Read X_train and Y_train and merge them column-wise to get training set
x_train <- read.table(".\\train\\X_train.txt")
y_train <- read.table(".\\train\\Y_train.txt")
train <- cbind(y_train,x_train)

#Read X_test and Y_test and merge them column-wise to get test set
x_test <- read.table(".\\test\\X_test.txt")
y_test <- read.table(".\\test\\y_test.txt")
test <- cbind(y_test,x_test)

# Add test and train into data set
data <- rbind(train,test)


#Read the features name
features <- read.table("features.txt")

#Extract the features that has mean() and std() only
getMeanStd <- grep(".*mean\\(.*|.*std\\(.*", features[,2])

#Create a vector of columns to be extracted from data
# ( For this we need the first column of data which pertains to y_* and 
# since features lists in data are from column 2 and onwards we need to 
# increment getMeanStd by 1 )
cols <- c(1, getMeanStd +1 )

# Filter the data
data <- data[,cols]

# Add column names to the data: Name the column 1 as activity and rest as mentioned by the features
names(data) <- c("activity", as.character(features[getMeanStd,2]))

# Read activity labels file
act_labels <- read.table("activity_labels.txt")

# label the factor level of column 1 using activity label data
data[,1] <- as.factor(data[,1])
levels(data[,1]) <- act_labels$V2

View(data)

#Create the text file of tidy data
write.table(data, "tidydata.txt", sep="\t",row.names=FALSE)
