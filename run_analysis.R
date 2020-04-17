
Analyze_Dataset <- function(){
    selected_columns <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,
                          83,84,85,86,121,122,123,124,125,126,
                          201,202,214,215,227,228,240,241,253,
                          254,266,267,268,269,270,271,345,346,
                          347,348,349,350,424,425,426,427,428,
                          429,503,504,516,517,529,530,542,543)
    
    xtrain <- read.table("train/X_train.txt", sep = "")
    ytrain <- read.table("train/y_train.txt", sep = "")
    train_subjects <- read.table("train/subject_train.txt", sep = "")
    
    xtest <- read.table("test/X_test.txt", sep = "")
    ytest <- read.table("test/y_test.txt", sep = "")
    test_subjects <- read.table("test/subject_test.txt", sep = "")
    
    xtrain <- xtrain[,selected_columns]
    xtest <- xtest[,selected_columns]
    
    feature_names <- read.table("features.txt", sep = "", colClasses = "character")
    feature_names <- feature_names[selected_columns,]
        
    X <- rbind(xtrain, xtest)
    y <- rbind(ytrain, ytest)
    subjects <- rbind(train_subjects, test_subjects)
    labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
    
    names(subjects) <- c("Subject")
    names(y) <- c("Activity")
    names_x <- NULL
    
    for (i in 1:length(selected_columns)){
        if (is.null(names_x)){
            names_x <- c(as.character(feature_names[i,2]))
        }
        else{
            names_x <- append(names_x, c(as.character(feature_names[i,2])))
        }
    }
    
    names(X) <- names_x
    
    FullDataSet <- cbind(subjects,X,y)
    
    for (j in 1:nrow(FullDataSet)){
        FullDataSet$Activity[j] <- labels[as.numeric(FullDataSet$Activity[j])] 
    }
    
    return(FullDataSet)
}              

