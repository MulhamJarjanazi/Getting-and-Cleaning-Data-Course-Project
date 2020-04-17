data was fed to run_analysis.R, and performed the following:
1) extracted data from files X_train.txt, y_train.txt, X_test.txt, y_test.txt, features.txt, subject_train.txt, subject_test.txt
2) these independenet datasets was then binded together into a single dataset
3) first column of the dataset is the Subject id ranging from 1 to 30
4) columns from 2 to 61 are the measures that were calculated 
5) column 62 is the label activity that correspond to the measures.

list of the columns :
1) Subject : ranged from 1-30
2) from 2 to 61 are the calculated measures, the units are m/s^-2 
 [2] "tBodyAcc-mean()-X"          
 [3] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [5] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"           
 [7] "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"       
 [9] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
[11] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[13] "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"      
[15] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[17] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"       
[19] "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"         
[21] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[23] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[25] "tBodyGyro-std()-Z"           "tBodyAccMag-mean()"         
[27] "tBodyAccMag-std()"           "tGravityAccMag-mean()"      
[29] "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"     
[31] "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"        
[33] "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"    
[35] "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"          
[37] "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
[39] "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[41] "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"      
[43] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[45] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[47] "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"         
[49] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"         
[51] "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[53] "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"         
[55] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()" 
[57] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"    
[59] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()"
[61] "fBodyBodyGyroJerkMag-std()"
3) the label for activity 
  one of six categories (
   1 WALKING
   2 WALKING_UPSTAIRS
   3 WALKING_DOWNSTAIRS
   4 SITTING
   5 STANDING
   6 LAYING
