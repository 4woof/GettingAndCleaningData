Project Description
The main goal of the project is the merge existing training and test data set collected form a UCI wearable computing device research and replace numeric labels with descriptive labels and numeric feature list with descriptive feature names as well.
Collection of the raw data
Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
Notes on the original (raw) data
The original raw data was divided into two parts – test and train. In order to proceed with data cleaning it was essential to merge these parts. The variables included subject (test participants IDs), activities performed, and measurements collected from the wearable computing device (please see the “features.txt” file for more details.
Instructions on Running the Script
Guide to create the tidy data file
1. Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. In the original script there are reference to “~/data/UCI HAR Dataset/” directory which is supposed to be substituted with the absolute path to the location of the dataset (Unzipped downloaded directory) on the running machine.
3. After replacing all the occurrences of the aforementioned paths, run the script and a cleaned version of the dataset will be created in the same directory that the original raw data resides.
