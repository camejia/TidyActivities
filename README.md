# TidyActivities

## Coursera Gettting and Cleaning Data Course Project

This project creates a "tidy" data set from the "raw" data obtained from this link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was processed by first extracting only the measurements for which a mean and standard deviation are available for that measurements.

* Data from "train" and "test" directories were combined into a single data set.
* Although more detailed raw data is available in the "Inertial Signals" subdirectories, that level of detail was not needed for this analysis.

The data was then grouped by activity and subject, and averaged.  Thus the values contain either "mean of means" or "mean of standard deviations" for each activity for each subject.  The final data set includes descriptive variable names for each column.  See the CodeBook.md file for more information.

Recall the definition of tidy data:
1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

This data set is tidy because:
1. The data set output by this project has variables (columns) that are the activity, subject, mean of means, or mean of standard deviations.
2. An observation for this project is considered to be a single subject performing a particular activity, and that is what is listed in the rows of the tidy data set table.
3. This data set contains only a single observational unit (table) per the instructions for the project.

Note that after running the run_analysis.R script, the tidy data set can be read in with the following command:

tidy.new <- read.table("tidy_activities.txt", header = TRUE)
