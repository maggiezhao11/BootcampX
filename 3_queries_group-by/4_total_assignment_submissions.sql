SELECT cohort.name AS cohort, count(assignment_submission.*) AS total_submissions
FROM cohort
JOIN students ON cohort.id = students.cohort_id
JOIN assignments_submissions ON students.id = assignment-submission.student_id
GROUP BY cohort
ORDER BY total_submissions DESC; 