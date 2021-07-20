SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohorts, COUNT(assistance_requests.*) AS total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;

/*line #7 nee to add 'cohorts.name' in as in the case that one teacher might assistance different cohort, we will end up with aggrecation (count) return with one column with 2 row values, which is wrong.*/