SELECT m.name as name,
    b.title as title,
    MIN(c.checked_out_on) as min
FROM member as m
INNER JOIN checkout c
    ON (m.id = c.member_id)
INNER JOIN book b
    ON (c.book_id = b.id)
WHERE c.returned_on IS NULL
GROUP BY m.name, b.title;

4   1   Grace   2022-09-01  Make:Electronics
2   2   Bob     2022-09-05  Preparing Instructional Objectives
    3   Zane
1   4   Elif    2022-09-28  Robotics, Mechatronics, AI
