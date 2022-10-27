-- Delivery 1:
-- 1. Retrieve from Employees
-- 2. Retrieve from Titles
-- 3. Create new table called retirement_titles using INTO
-- 4. Join on primary key
-- 5. Filter on birth_date for employees born between 1952 and 1955
-- 6. Export as retirement_titles.csv


-- # of retiring employees by title
SELECT e.emp_no, e.first_name, e.last_name,
        t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as t 
ON (e.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC;


-- 8. Add code 
-- 9. Retrieve from Retirement Titles
-- 10. Use Dictinct ON to retrieve first occurrence of employee number
-- 11. Exclude employees that have already left
-- 12. Create new table called unique_titles using INTO
-- 13. Ascending order by the employee number 
--     and descending order by the last date of the most recent title
-- 14. Export as unique_titles.csv
-- 15. Confirmation


-- # of retiring employees by title 
-- updated to show only the most recent title
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, 
                    rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles as rt 
WHERE to_date = '9999-01-01'
ORDER BY rt.emp_no ASC, to_date DESC;


-- 16. New query
-- 17. Retrieve from Unique Titles
-- 18. Create new table called retiring_titles using INTO
-- 19. Group by and sort
-- 20. Export as retiring_titles.csv
-- 21. Confirmation
-- 22. Save to Queries folder


-- # of retiring employees by their most recent title 
-- updated to show only the most recent title
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut 
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


-- Delivery 2:
-- 1. Retrieve from Employees
-- 2. Retrieve from Department Employees
-- 3. Retrieve from Titles
-- 4. Use Dictinct ON to retrieve first occurrence of employee number
-- 5. Create new table called mentorship_eligibilty using INTO
-- 6. Join on primary key
-- 7. Join on primary key
-- 8. Filter on to_date for all current employees, then filter 
--    birth_date for employees born between Jan 1 1965 and Dec 31 1965
-- 9. Ascending order by employee number
-- 10. Export as mentorship_eligibilty.csv
-- 11. Confirmation

-- # of employees eligible for the mentorship program
SELECT DISTINCT ON (e.emp_no), e.first_name, e.last_name, e.birth_date,
        de.from_date, de.to_date, t.title
-- INTO mentorship_eligibilty
FROM employees as e
    INNER JOIN department_employees AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS t
        ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;
