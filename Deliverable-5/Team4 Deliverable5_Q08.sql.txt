-- Part a

CREATE VIEW `Del 5 Q8a` AS
SELECT productCategory.modelNum, productCategory.modelDescription, COUNT(itemSold.modelNum) AS `Total Sales`
FROM productCategory, itemSold
WHERE itemSold.modelNum = productCategory.modelNum
GROUP BY productCategory.modelNum;

-- Part b

SELECT*
FROM
    `Del 5 Q8a`
ORDER BY MAX(`Total Sales`);

