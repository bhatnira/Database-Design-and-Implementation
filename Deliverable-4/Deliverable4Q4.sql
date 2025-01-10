SELECT CONCAT(customer.customerFirstName," ", customer.customerLastName) AS Customer_Name, itemSold.equipmentSerialNum, itemSold.modelNum,
productCategory.modelDescription, transaction.salesAgreementDate 
FROM customer , transaction, saleLineItem, itemSold, productCategory
WHERE customer.customerNum=transaction.customerNum
AND transaction.salesAgreementNum= saleLineItem.salesAgreementNum
AND saleLineItem.equipmentSerialNum= itemSold.equipmentSerialNum
AND itemSold.modelNum=productCategory.modelNum
AND DATE(transaction.salesAgreementDate)='2020-06-21';
