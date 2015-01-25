##Study Design

The data used for this assignment were collected from the accelerometers of Samsung Galaxy S smartphones as subjects engaged in various activities.
A complete description of the study can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


##The Data

This is the source of the raw data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I transformed the raw data into tidy data by:

* Combining the "test" data and "train" data into one data set.

* Extracting only the variables that measure mean or standard deviation.

* Replacing the numeric activity values with descriptive names.

* Removing illegal characters from variable names, and making them more descriptive.

* Grouping the data by subject and activity, and finding the group mean for each measurement.


##Code Book

This is takes from the features_info.txt file:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals 
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth 
filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

IMPORTANT NOTE: All measurement values are the group mean for a particular subject/activity combination. Because the measurements were normalized, they are
unitless.


Variable Name	|Type	|Description
-----------------------------|----------------|---------------------------------------------------------------------------------------
subject	|	integer	|	ID number of the subject being observed, an integer between one and thirty
activity |	factor	|	activity subject was engaged in when measurement was taken, one of: walking, walking_upstairs, walking_downstairs, sitting, standing, laying
timeBodyAccMeanX  |	numeric	|	time domain, mean of the body acceleration signal, X axis
timeBodyAccMeanY	|	numeric	|	time domain, mean of the body acceleration signal, Y axis
timeBodyAccMeanZ	|	numeric	|	time domain, mean of the body acceleration signal, Y axis
timeGravityAccMeanX	|	numeric	|	time domain, mean of the gravity acceleration signal, X axis
timeGravityAccMeanY	|	numeric	|	time domain, mean of the gravity acceleration signal, Y axis
timeGravityAccMeanZ	|	numeric	|	time domain, mean of the gravity acceleration signal, Z axis
timeBodyAccJerkMeanX	|	numeric	|	time domain, mean of the linear acceleration jerk signal, X axis
timeBodyAccJerkMeanY	|	numeric	|	time domain, mean of the linear acceleration jerk signal, Y axis
timeBodyAccJerkMeanZ	|	numeric	|	time domain, mean of the linear acceleration jerk signal, Z axis
timeBodyGyroMeanX	|	numeric	|	time domain, mean of the body gyroscope signal, X axis
timeBodyGyroMeanY	|	numeric	|	time domain, mean of the body gyroscope signal, Y axis
timeBodyGyroMeanZ	|	numeric	|	time domain, mean of the body gyroscope signal, Z axis
timeBodyGyroJerkMeanX	|	numeric	|	time domain, mean of the body gyroscope jerk signal, X axis
timeBodyGyroJerkMeanY	|	numeric	|	time domain, mean of the body gyroscope jerk signal, Y axis
timeBodyGyroJerkMeanZ	|	numeric	|	time domain, mean of the body gyroscope jerk signal, Z axis
timeBodyAccMagMean	|	numeric	|	time domain, magnitude of the mean of the body acceleration signal
timeGravityAccMagMean	|	numeric	|	time domain, magnitude of the mean of the gravity acceleration signal
timeBodyAccJerkMagMean	|	numeric	|	time domain, magnitude of the mean of the linear acceleration jerk signal
timeBodyGyroMagMean	|	numeric	|	time domain, magnitude of the mean of the body gyroscope signal
timeBodyGyroJerkMagMean	|	numeric	|	time domain, magnitude of the mean of the body gyroscope jerk signal
freqBodyAccMeanX	|	numeric	|	frequency domain, mean of the body acceleration signal, X axis
freqBodyAccMeanY	|	numeric	|	frequency domain, mean of the body acceleration signal, Y axis
freqBodyAccMeanZ	|	numeric	|	frequency domain, mean of the body acceleration signal, Z axis
freqBodyAccJerkMeanX	|	numeric	|	frequency domain, mean of the body acceleration jerk signal, X axis
freqBodyAccJerkMeanY	|	numeric	|	frequency domain, mean of the body acceleration jerk signal, Y axis
freqBodyAccJerkMeanZ	|	numeric	|	frequency domain, mean of the body acceleration jerk signal, Z axis
freqBodyGyroMeanX	|	numeric	|	frequency domain, mean of the body gyroscope signal, X axis
freqBodyGyroMeanY	|	numeric	|	frequency domain, mean of the body gyroscope signal, Y axis
freqBodyGyroMeanZ	|	numeric	|	frequency domain, mean of the body gyroscope signal, Z axis
freqBodyAccMagMean	|	numeric	|	frequency domain, magnitude of the mean of the body acceleration signal
freqBodyAccJerkMagMean	|	numeric	|	frequency domain, magnitude of the mean of the body acceleration jerk signal
freqBodyGyroMagMean	|	numeric	|	frequency domain, magnitude of the mean of the body gyroscope signal
freqBodyGyroJerkMagMean	|	numeric	|	frequency domain, magnitude of the mean of the body gyroscope jerk signal
timeBodyAccStdX	|	numeric	|	time domain, standard deviation of the body acceleration signal, X axis
timeBodyAccStdY	|	numeric	|	time domain, standard deviation of the body acceleration signal, Y axis
timeBodyAccStdZ	|	numeric	|	time domain, standard deviation of the body acceleration signal, Z axis
timeGravityAccStdX	|	numeric	|	time domain, standard deviation of the gravity acceleration signal, X axis
timeGravityAccStdY	|	numeric	|	time domain, standard deviation of the gravity acceleration signal, Y axis
timeGravityAccStdZ	|	numeric	|	time domain, standard deviation of the gravity acceleration signal, Z axis
timeBodyAccJerkStdX	|	numeric	|	time domain, standard deviation of the body acceleration jerk signal, X axis
timeBodyAccJerkStdY	|	numeric	|	time domain, standard deviation of the body acceleration jerk signal, Y axis
timeBodyAccJerkStdZ	|	numeric	|	time domain, standard deviation of the body acceleration jerk signal, Z axis
timeBodyGyroStdX	|	numeric	|	time domain, standard deviation of the body gyroscope signal, X axis
timeBodyGyroStdY	|	numeric	|	time domain, standard deviation of the body gyroscope signal, Y axis
timeBodyGyroStdZ	|	numeric	|	time domain, standard deviation of the body gyroscope signal, Z axis
timeBodyGyroJerkStdX	|	numeric	|	time domain, standard deviation of the body gyroscope jerk signal, X axis
timeBodyGyroJerkStdY	|	numeric	|	time domain, standard deviation of the body gyroscope jerk signal, Y axis
timeBodyGyroJerkStdZ	|	numeric	|	time domain, standard deviation of the body gyroscope jerk signal, Z axis
timeBodyAccMagStd	|	numeric	|	time domain, magnitude of the standard deviation of the body acceleration signal
timeGravityAccMagStd	|	numeric	|	time domain, magnitude of the standard deviation of the gravity acceleration signal
timeBodyAccJerkMagStd	|	numeric	|	time domain, magnitude of the standard deviation of the body acceleration jerk signal
timeBodyGyroMagStd	|	numeric	|	time domain, magnitude of the standard deviation of the body gyroscope signal
timeBodyGyroJerkMagStd	|	numeric	|	time domain, magnitude of the standard deviation of the body gyroscope jerk signal
freqBodyAccStdX	|	numeric	|	frequency domain, standard deviation of the body acceleration signal, X axis
freqBodyAccStdY	|	numeric	|	frequency domain, standard deviation of the body acceleration signal, Y axis
freqBodyAccStdZ	|	numeric	|	frequency domain, standard deviation of the body acceleration signal, Z axis
freqBodyAccJerkStdX	|	numeric	|	frequency domain, standard deviation of the body acceleration jerk signal, X axis
freqBodyAccJerkStdY	|	numeric	|	frequency domain, standard deviation of the body acceleration jerk signal, Y axis
freqBodyAccJerkStdZ	|	numeric	|	frequency domain, standard deviation of the body acceleration jerk signal, Z axis
freqBodyGyroStdX	|	numeric	|	frequency domain, standard deviation of the body gyroscope signal, X axis
freqBodyGyroStdY	|	numeric	|	frequency domain, standard deviation of the body gyroscope signal, Y axis
freqBodyGyroStdZ	|	numeric	|	frequency domain, standard deviation of the body gyroscope signal, Z axis
freqBodyAccMagStd	|	numeric	|	frequency domain, magnitude of the standard deviation of the body acceleration signal
freqBodyAccJerkMagStd	|	numeric	|	frequency domain, magnitude of the standard deviation of the body acceleration jerk signal
freqBodyGyroMagStd	|	numeric	|	frequency domain, magnitude of the standard deviation of the body gyroscope signal
freqBodyGyroJerkMagStd	|	numeric	|	frequency domain, magnitude of the standard deviation of the body gyroscope jerk signal
