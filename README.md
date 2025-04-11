# DSAA811-Preliminary-Report
Assignment 2 of DSAA811, explaining the structure of the report

All files used to create this report are located in the src directory. 

The data for the report is being housed in the data directory. 
There are four csv files and one zip file (Olympic_Atheletes.zip). 
The zip file contains the original download of the data from Kaggle.

The four csv files are
athlete_events_data_dictionary.csv
athlete_events.csv
country_definitions_data_dictionary.csv
country_definitions.csv

Once all the files are knitted into a pdf file the report will be located in the
report directly

Each of the src files can be knitted individually to create a html file. When 
they are made the results get saved in the html folder. This speeds up the 
processing time when running scripts over generating the entire pdf

The images folder has the signature files and the UOW logo to make the title page.

This project uses 

This was sourced from git to generate the apa standard for the bibliography
citation_package: apa-annotated.csl

library(knitr) version 1.5
library(tinytex) version 0.56
library(tidyverse) version 2

I advise that you load this into your R as a project using the 
DSAA811-Preliminary-Report.Rproj as this will dynamically set up the paths for
the output and input files.