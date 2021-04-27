# BlackHawk0-ComputingTurnoverR


Complete the following customary initial steps:
a. Download the DataExercise3.csv file from the appropriate D2L folder (Activities
> Assignments > Data Exercise 3). Note that this data file is not the same one that
you practiced with in this week’s tutorial.
b. Save the DataExercise3.csv file to a folder that you will later set as your working
directory. The files should contain the following variables (i.e., fields, column
names):
i. DataExercise3.csv
1. id_unit (unique unit identifier)
2. unit (name of unit)
3. month (month of year, where 1 = January, 2 = February, etc.)
4. total_sep (total number of separations per month)
© David E. Caughlin, Ph.D.MGMT 442
5. ave_emp (average number of employees per month, which was
calculated by summing the number of employees at the beginning
of the month and at the end of the month, and dividing by 2)
c. Annotate each step of your script using # annotations in an R script (editor) file.
Your annotations can be brief, but I’d like for you to get in the habit of annotating
each “chunk”/step of your script so that (a) you will remember what you did, and
(b) others can understand what you did more easily.
d. Set your working directory to the folder in which you saved the DataExercise3
file. In your R script, please be sure to include the setwd function – even if you
used the drop-down menus to set your working directory. If you use the drop-
down menus to set your working directory, the setwd function (with your working
directory in the function parentheses) will appear in your Console window.
e. Read the data file into the R environment using the read.csv function, and name
the data frame object something unique so that it can be subsequently referenced.
2. Subset your data frame object (from Step 1) into two new (and uniquely named) data
frame objects, where the first new data frame object contains only the data associated
with the Sales unit, and the second data frame object contains only the data associated
with Plant unit.
3. Compute monthly and annual turnover rates for the data frame containing only the
Sales unit data (that you created in Step 2). You will reference these turnover rates in Part
Two, so be sure to view/print them so that you can view them.
4. Compute monthly and annual turnover rates for the data frame containing only the
Plant unit data (that you created in Step 2). You will reference th
