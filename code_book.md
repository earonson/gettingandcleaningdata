---
title: "Code Book"
author: "Evan Aronson"
---

###Human Activity Recognition Using Smartphones Summaries 

####Description

This data is summarized from the *Human Activity Recognition Using Smartphones Data Set* available on the University of California, Irvine data archive, and comprises of 66 summary statistics across 30 individuals performing 6 types of activities (180 rows).

####Usage

*summarytable*

(after running all code in run_analysis.R)

####Format

A data frame with 180 rows and 68 columns.

 [, 1] -      subject	 -   The subject identification number
 
 [, 2]	-    activity  -  The activity performed during the measurements
 
 [, 3:68]  -  .      -     The average of all observation for that type of measurement
 

####Source

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012