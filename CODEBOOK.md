
Raw data:

Original data set is devided into to main parts. The training set and the test parts. Each one of these main parts has X, Y, and Subject ID's.

In addition to the main part, there is a features.txt file describing the variable names.

Cleaning Process:

We start by reading the subjects, x, and y data from training and test set and holding them in variables DT1, DT2, DT3, Tr1, Tr2, Tr3 respectively.

Afterwards, we merge the subject, x, and y portion of the test part with the training part and we hold them in variables Subject, fullx, and fully respectively.

Then, we rename the columns of fullx (features) with the list of descriptive variable names that we read from features.txt.

After doing so, in order to make the descriptive names more explanatory, we replace occurences of 'Acc', 'BodyBody', 'Gyro', 'Mag', 't' and 'f' with 'Acceleration', 'Body', 'Gyroscope', 'Magnitude', 'time', and 'frequency'.

We store the description of labeled activities of fully in Activity using the descriptive activity table read from activity_labels.txt.

Now, we are ready to bind Subject, fullx and fully data frames into a single one which we call fullframe.

For the final step, we select only the features of the fullframe that have 'std', and 'mean' as a sub string in the name of the variable name.

The result is the data frame which we call final and is written to the file TidyData.txt which is created in the directory that includes the original data set.
