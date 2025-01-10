SELECT customer.customerNum, CONCAT(customer.customerFirstName, ' ', customer.customerLastName) AS `Customer Name`, transaction.salesAgreementNum, itemSold.equipmentSalePrice, SUM(equipmentSalePrice) AS `Purchase Total`
FROM customer
Inner JOIN transaction ON customer.customerNum = transaction.customerNum
INNER JOIN saleLineItem ON transaction.salesAgreementNum = saleLineItem.salesAgreementNum
INNER JOIN itemSold ON saleLineItem.equipmentSerialNum = itemSold.equipmentSerialNum
GROUP BY customerNum, salesAgreementNum;
