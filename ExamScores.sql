SELECT student_name,
  SUM(IF(exam_id=1, score, NULL)) AS exam_1,
  SUM(IF(exam_id=2, score, NULL)) AS exam_2,
  SUM(IF(exam_id=3, score, NULL)) AS exam_3,
  SUM(IF(exam_id=4, score, NULL)) AS exam_4
FROM exam_scores
GROUP BY student_id;

SELECT
    student_name,
    MAX(CASE WHEN exam_id = 1 THEN score END) AS exam_1,
    MAX(CASE WHEN exam_id = 2 THEN score END) AS exam_2,
    MAX(CASE WHEN exam_id = 3 THEN score END) AS exam_3,
    MAX(CASE WHEN exam_id = 4 THEN score END) AS exam_4
FROM exam_scores
GROUP BY student_name;

SELECT
    student_name,
    MAX(IF(exam_id = 1, score, NULL)) AS exam_1,
    MAX(IF(exam_id = 2, score, NULL)) AS exam_2,
    MAX(IF(exam_id = 3, score, NULL)) AS exam_3,
    MAX(IF(exam_id = 4, score, NULL)) AS exam_4
FROM exam_scores
GROUP BY student_name;

SELECT student_name,
  SUM(CASE WHEN exam_id=1 THEN score ELSE NULL END) AS exam_1,
  SUM(CASE WHEN exam_id=2 THEN score ELSE NULL END) AS exam_2,
  SUM(CASE WHEN exam_id=3 THEN score ELSE NULL END) AS exam_3,
  SUM(CASE WHEN exam_id=4 THEN score ELSE NULL END) AS exam_4
FROM exam_scores
GROUP BY student_id;
