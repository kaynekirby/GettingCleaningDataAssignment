# GettingCleaningDataAssignment
Coursera Getting and Cleaning Data - week 4 Assignment

Key Components of the Data to be Analyzed (based on the design of experiment):
  Subject
    The experiments have been carried out with a group of 30 volunteers
  Activity
    Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
  Variables
    These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz
    we captured 3-axial linear acceleration (tAcc-XYZ) and 3-axial angular velocity (tGyro-XYZ)
      '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
    the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
      the body linear acceleration and angular velocity were derived to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)
    
    These signals were used to estimate variables of the feature vector for each pattern:
      tBodyAcc-XYZ
      tGravityAcc-XYZ
      tBodyAccJerk-XYZ
      tBodyGyro-XYZ
      tBodyGyroJerk-XYZ
      
      the magnitude of these three-dimensional signals were calculated using the Euclidean norm:
      tBodyAccMag
      tGravityAccMag
      tBodyAccJerkMag
      tBodyGyroMag
      tBodyGyroJerkMag
      
      a Fast Fourier Transform (FFT) was applied to some of these signals (Note the 'f' to indicate frequency domain signals):
      fBodyAcc-XYZ
      fBodyAccJerk-XYZ
      fBodyGyro-XYZ
      fBodyAccMag
      fBodyAccJerkMag
      fBodyGyroMag
      fBodyGyroJerkMag
       
The datasets:
  70% of the volunteers was selected for generating the training data and 30% the test data.
  For each record in the dataset it is provided:
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope.
    - A 561-feature vector with time and frequency domain variables.
    - Its activity label.
    - An identifier of the subject who carried out the experiment.
  Notes about each data file (7,352 records for TRAIN and 2,947 for TEST):
    subject_TRAINTEST.txt - identifies which of the 30 volunteers is being recorded
    y_TRAINTEST.txt - identifies which of the 6 activities is being performed
    x_TRAINTEST.txt - contains the measures for each of the 561 features (see features.txt)

Combining into one dataset:
  Features.txt - used to provide labels for the 561 columns in the x_TRAINTEST.txt dataset
  Bind columns from subject_TRAINTEST.txt, y_TRAINTEST.txt, and x_TRAINTEST.txt files
  
Restricting to features with mean and standard deviation:
  Simply filtering on those features which have the string "mean" or "std" returns 86 of the 561 features.  Note: most of these match up with the original feature list.  Those that are variations on the original list (angle, etc) are included as well.
  The breakdown of the 86 variables is as follows:
    30 = the 5 "t/XYZ" variables, x3 (for each of X/Y/Z), x2 (for each of Mean/Std)
    10 = the 5 "t/Mag" variables, x2 (for each of Mean/Std)
    27 = the 3 "f/XYZ" variables, x3 (for each of X/Y/Z), x3 (for each of Mean/Std/MeanFreq).  Note: unclear what MeanFreq is...
    12 = the 4 "f/Mag" variables, x3 (for each of Mean/Std/MeanFreq).  Note: unclear what MeanFreq is...
    7 = "angle" variables, for 4 "tBodyMean" variables and 3 "gravityMean" variables X/Y/Z.  Note: unclear what "angle" is accomplishing...
