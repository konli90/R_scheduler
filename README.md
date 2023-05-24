README
Task Scheduler R Script Configuration

This repository contains an R script that utilizes the taskscheduleR package to create a scheduled task for executing a specific R script on a daily basis. This README file provides instructions on how to set up and configure the task scheduler using the provided R script.
Prerequisites

Before proceeding with the configuration, please ensure that you have the following prerequisites:

    R installed on your system
    The taskscheduleR package installed (you can install it using install.packages("taskscheduleR"))

Configuration Steps

To set up and configure the task scheduler for running the R script, please follow these steps:

    Clone or download this repository to your local machine.

    Open the R script file named vl_weekly.R located in the scheduler directory. Customize this script according to your requirements.

    Open the R console or an R script editor of your choice.

    Load the taskscheduleR library by executing the following command:

R

library(taskscheduleR)

    Define the task by creating a scheduled task using the taskscheduler_create function. Modify the parameters based on your preferences. For example:

R

task <- taskscheduler_create(taskname = "VL-Weekly-R-Script-Task",
                             rscript = "C:\\Users\\MARYLAND\\Documents\\GitHub\\R_scheduler\\vl_weekly.R",
                             schedule = "DAILY",
                             startdate = format(Sys.Date(), "%m/%d/%Y"),
                             starttime = "11:51",
                             days = "MON,TUE,WED,THU,FRI")

Make sure to specify the correct path to your vl_weekly.R script in the rscript parameter.

    Save the changes to the R script file.

    Execute the R script in your R console or source it from your script editor to create the scheduled task.

    The task scheduler will now create a scheduled task named "VL-Weekly-R-Script-Task" that runs daily at the specified start time on Monday to Friday.

Additional Notes

    Ensure that you have the necessary permissions to create scheduled tasks on your system. Administrative privileges may be required.

    If you encounter any issues or errors during the setup or execution of the task, please refer to the documentation of the taskscheduleR package or consult the appropriate resources for troubleshooting.

    Remember to modify the script and task configuration as needed to fit your specific requirements.