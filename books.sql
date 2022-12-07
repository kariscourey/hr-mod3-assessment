-- Write your query for "borrowed book report" here
SELECT b.title as title,
    m.name as name,
    co.checked_out_on AS checked_out_on
FROM book AS b
INNER JOIN checkout co
  ON (b.id = co.book_id)
INNER JOIN member m
  ON (co.member_id = m.id)
WHERE co.returned_on IS NULL

1 4  Robotics, Meta   Elif   2022-09-28
2 2  Preparing Inst   Bob    2022-09-05
4 1  Make: Elect      Grace  2022-09-01

-- soln
SELECT b.title, c.checked_out_on
FROM book b
INNER JOIN checkout c ON c.book_id = b.id
INNER JOIN member m on m.id = c.member_id
WHERE c.checkout_out_on IS NOT NULL AND returned_on IS NULL



-- Write your query for "complete book histories"
SELECT b.title as title,
    b.copies as copies,
    co.checked_out_on AS checked_out_on,
    co.returned_on AS returned_on,
    m.name as name
FROM book AS b
LEFT OUTER JOIN checkout co
  ON (b.id = co.book_id)
LEFT OUTER JOIN member m
  ON (co.member_id = m.id)


-- soln
SELECT b.title, b.copies, c.checked_out_on, c.returned_on, m.name
FROM book b
LEFT JOIN checkout c ON c.book_id = b.id
LEFT JOIN member m on m.id = c.member_id
