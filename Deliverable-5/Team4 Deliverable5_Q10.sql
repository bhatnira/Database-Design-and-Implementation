PREPARE customerNum_in FROM
"SELECT customer.customerNum, CONCAT(customer.customerFirstName, ' ', customer.customerLastName) AS `Name`,
creditCard.creditCardNum, creditCard.creditCardType, CONCAT(creditCard.creditCardExpirationMonth, '/' ,creditCard.creditCardExpirationYear) AS `Exp Date`
FROM customer, holdsAccount, creditCard
WHERE customer.customerNum=holdsAccount.customerNum
AND holdsAccount.creditCardNum= creditCard.creditCardNum
AND customer.customerNum LIKE ?";
SET @a= 2;
EXECUTE customerNum_in USING  @a;
-- DEALLOCATE PREPARE customerNum_in;
