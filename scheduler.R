library(taskscheduleR)

task <- taskscheduler_create(taskname = "VL-Weekly-R-Script-Task",
                             rscript = "C:\\Users\\MARYLAND\\Documents\\scheduler\\vl_weekly.R",
                             schedule = "DAILY",
                             startdate = format(Sys.Date(), "%m/%d/%Y"),
                             starttime = "11:51",
                             days = "MON,TUE,WED,THU,FRI")
