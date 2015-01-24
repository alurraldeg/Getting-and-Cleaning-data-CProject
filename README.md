#README File

In this document, i will try to explain how run_analysis.R works

Firstly, the lines between the first and twelfth ones load the txt files.

Then, in the 13th line, the training and test data get merged (First step of the assignment)

In the 15th line, the columns' names are set (Step 4 of the assignment), this will help the extraction process, made in the 17th line (Assignment's step 2). 

Later on, an auxiliary vector get filled with the activities (line 19) in order to get attached to the data (Step 3 of the assignment) and the subjects (line 20).

After that, the program sets the new columns' names (Step 4 of the assignment) and turns all the names to lower case.

Finally, the result data set is calculated (line 25) and written (line 27) in a file (Step 5 of the assignment).