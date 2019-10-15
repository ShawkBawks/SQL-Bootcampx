SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;



-- What I had in comparison
-- SELECT cohorts.start_date as cohort_name,  count(students.id) as student_count
-- FROM students
-- JOIN cohorts ON  cohorts.id = students.cohort_id
-- GROUP BY cohorts.start_date
-- HAVING count(students.id) >= 18
-- ORDER BY count(students.id);