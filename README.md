
The script contains the necessary code to produce a tidy data set from several files containing the information.
The files continaning the data were:
  subject_test.txt
  X_test.txt
  y_test.txt
  subject_train.txt
  X_train.txt
  y_train.txt


The first part of the script read the data from all these files and create a data frame for each of them.

Then it reads the file features.txt, which is the file containing the names of the columns for the file x's.
It saves the names in a vector called labels and it cleans it in two steps:
1. transforming all the letter in lower case to improve vissibility
2. eliminating all the character considered not necessay (',-) to reduce complexity of the name.

Then the script asign more convinient names to the columns in the files y (containing the activities) and the files subject_ containing the ids of the subjects.

The next step is to assign the descriptive activity names to name the activities in the data sets.

The next step is to merge all the data sets. For this purpose, it merges first the subject_, x and y for each grup (train or test) and then the train and test files together.

Once we have a dataset which is more easy to work with, the scripts uses the aggregate function to calculate the mean and the standard deviation per subject and er activity, and it store it in another data frame.

Finally it exports the tidy data set to a file called tidydata.csv.
