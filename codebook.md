
The aim of this document is to describe the different variabes contained in the tidydata.csv file their units, their length and any other useful description.

The first two variables are:
- subject. This is an integer of lenght 1 or 2 identifying the subject for the measures of that row.
- Activity. It is a string with one of the six activities that the subject could be ding at the moment of the measure.

The rest of the variables are integers of different lengths giving the means and the standard deviations fo the different measures in an individual when realizing a given activity.

The measures contain a x,y or z  used to denote 3-axial signals in the X, Y and Z directions.
they also contain a part of the string indicating the variation as follows:: 
mean(): Mean valueS
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

The different patterns are:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

