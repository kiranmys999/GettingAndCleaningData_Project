GettingAndCleaningData_Project
==============================

The project contains the following files:
============================================
* run_analysis.R  -  this R script contains the code to get data from a directory, clean it, transform it into a desired form, and finally output the tidy data to a file. The output contains the mean for each "mean" and "std" variable, grouped by "subject" and "activity".

* CodeBook.md     -  describes the variables and functions used in the R script, and the transformations performed to get the desired output.


Instructions:
======================
Copy the run_analysis.R file to your working directory.
Make sure the working directory contains the input data directory ("UCI HAR Dataset").

Run the script using the following command:

source("./run_analysis.R")


Output:
========================
The output file "finalTidyData.txt" is created in the working directory.

