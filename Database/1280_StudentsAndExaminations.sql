SELECT
    stu.student_id,
    student_name,
    sub.subject_name,
    COUNT(exa.student_id) AS attended_exams
FROM Students AS stu
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations exa
  ON stu.student_id = exa.student_id
  AND sub.subject_name = exa.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, sub.subject_name
