# pewlett-hackard-analysis
A classwork example of building and running queries against a SQL database

---

# Overview 
This is a classwork example in which "Pewlett Hackard" is a large and well established company. They were interested in identifying who will be qualified for their forthcoming retirement packages. After learning that they have thousands of loyal employees who will qualify for retirement in the near future, they asked to have information about which positions will need to be filled based on how many employees will qualify for their retirement packages. Department titles, job titles, and employee info has been added to the database and queries have been run to request the needed information. 

## Purpose 
The queries in employee_database_challenge.sql will determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship pilot program.

---

# Results

* Based on unique_titles.csv: Based on our query, 72,459 employees will be eligible for retirement. 
* Based on unique_titles.csv: Only 2 managers will be retiring. However, 25,916 Senior Engineers will be retiring. 
* Based on mentorship_eligibilty.csv: Only 1,549 employees will be eligible for the mentorship program if the eligibilty is limited to employees born in 1965. It should also be noted that there are no Managers eligible under these constraints.

---
# Summary

72,459 roles will need to be filled within the next few years as our current employees born in 1952 - 1955 begin to become eligible for retirement benefits. 

I highly suggest expanding the mentorship eligibilty requirements to include employees in a 3 to 5 year timespan depending on how many labor hours are needed throughout departments. Constraining eligibility to one year of employees will not be enough for a sustainable program.

If the constraint was expanded to include employees born in January 1963 through December 1965, 38,401 employees would be eligible for the mentorship program. If the constraint was exapanded to January 1961 through December 1965, 75,319 employees would be eligible which would allow for almost all new roles to have a mentor (with less than 200 "triplet" mentorship groups). Please see employee_database_challenge.sql for additional queries 1 and 2. 

It needs to be noted that this will be a continued issue for at least ~10 years, possibly longer. When querying current employees who were born in the next 5 year period (1956 - 1960), 92,347 employees will be retiring. The mentorship constraints may need to be adjusted yearly in order to properly adjust mentors to new hire numbers appropriately. Please see employee_database_challenge.sql for additional query 3. 
