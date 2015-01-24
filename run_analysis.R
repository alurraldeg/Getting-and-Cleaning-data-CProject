
xtest <- read.table( "test/X_test.txt" )
ytest <- read.table( "test/y_test.txt" )
stest <- read.table( "test/subject_test.txt" )

xtrain <- read.table( "train/X_train.txt" )
ytrain <- read.table( "train/y_train.txt" )
strain <- read.table( "train/subject_train.txt" )

features <- read.table( "features.txt" )
activities <- read.table( "activity_labels.txt" )

data <- rbind( xtest , xtrain)

colnames(data) <- features[,2]

data <- data[,grep( "(mean\\(\\)|std\\(\\))" , features[,2] )]

y <- activities[rbind(ytest,ytrain)[,1] , 2]
data <- cbind( data , y , rbind(stest,strain) )

colnames( data )[67:68] <- c("activity","subject")
colnames( data ) <- tolower( colnames(data ))

newdata <- aggregate( . ~ activity + subject , data , mean )

write.table( newdata , file = "./tidydata.txt" , row.names = FALSE )