README
======

Repository for a Coursera Cleaning Data Course Project.


The repository includes the following files:
============================================

- 'README.md': This file

- 'CodeBook.md': Describes the operations and transformations that make run_analysis.R into "UCI HAR Dataset"

- 'download_data.R': This script download "UCI HAR Dataset" if not exists in work directory.

- 'run_analysis.R': The script generate a "har_meanstd_grp" data frame with the result of operations to unify test and train datasets, group rows by subject and activity, and calculate the average of every mean() and std() features of "UCI HAR Dataset" data set.


License:
========

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.