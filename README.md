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
  Notes about each data file:
    subject_TRAINTEST.txt - 7,352 records, identifies which of the 30 volunteers is being recorded
    y_TRAINTEST.txt - 7,352 records, identifies which of the 6 activities is being performed
    x_TRAINTEST.txt - 7,352 records, contains the measures for each of the (561?) features (see features.txt)
