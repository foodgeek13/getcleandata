This repo is for the Getting and Cleaning Data course project. The data used for the project were collected from the accelerometers of Samsung
Galaxy S smartphones while subjects engaged in six different activities. The data can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In addition to the README, this repo contains two files:

* An R script ("run_analysis.R") created using R version 3.1.2, which will produce the required tidy data set. In order for the script to work properly,
  you must download and unzip the dataset from the above link, and set that folder (I'll refer to it as "UCI") as your working directory. In addition,
  you must have the dplyr package installed in R.

* A code book ("CodeBook.md") containing information about the data.

The project also requires a link to the text file of the resulting tidy data set (on the Coursera site). To view data as a nicely formatted table, right-click
on the link and click on "Save link address". Then in the R console enter the following code:
data <- read.table("paste link address here", header = T)
View(data)
Note that "View" must be capitalized.

This is what the run_analysis.R script does:

* Combines three "test" files and three "train" files from UCI into one data set.

* Extracts only the measurements for mean and standard deviation. After reading the features_info file from UCI, I concluded that those measurements
  were the ones with mean() or std() in the variable name.

* Changes the numeric values of the activities to descriptive names, based on activity_labes file from UCI. 

* Removes illegal characters from variable names, and changes them to make them slightly more descriptive. I replaced the "t" or "f" at the
  beginning of each name with "time" or "freq". Although it isn't really preferred, due to the length of the variable names I used camel case 
  to make them more readable.

* Grouped the data by subject and activity, and found the mean of each group. The resulting tidy data set is in wide format. Each column contains 
  one variable and each row contains one observation.

