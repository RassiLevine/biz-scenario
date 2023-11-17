/*
	1) Choose a business scenario that can be captured in one table.
	2) Describe it as if you are the owner.
	3) List several reports that the business needs.
	4) Clarify some details with various questions and the owner's answers.
	5) Share your business scenario and spec with fellow students and instructor, do not include SQL.
	6) Create DB and tables to support business scenario.
	7) Populate with sample data
	8) Accept completed SQL and mark it
*/ 

/* PriorityHealth needs us to keep records of their hospital staff. Please include the staff memeber's name, shift (am/pm), date hired, and position. 
Use the presidents table.

The shifts are as follows: those presidents who were 65 or under at time of TermStart = am
						   all others are pm

the date hired is the month and day of their birthday. 
	the year is as follows: Last name ending in A-J = 2010
											 	K-S = 2015
												T-Z = 2020

Those that served one full term are Dr.s
Those that served less than one term are NPs
Those that served more than one term are PAs


* No one was hired before 2010 
* The only possible shifts are am and pm
* 

Reports:

	1) The Hospital wants to recognize some of its members. Show the five newest employees and the two oldest employees.
	2) Show the number of employees per position.
	3) Show how many years each employee is working here for. 