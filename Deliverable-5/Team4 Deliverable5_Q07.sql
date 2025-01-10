SELECT
transaction.salesAgreementDate AS `Sales Date`, customer.customerNum, CONCAT(customer.customerFirstName, ' ', customer.customerLastName) AS `Customer`, productCategory.modelNum AS `Model #`, productCategory.modelDescription AS `Model Description`, productCategory.modelManufacturer AS `Manufacturer`, itemSold.equipmentSalePrice AS Price
FROM customer, transaction, itemSold, productCategory, saleLineItem
WHERE customer.customerNum = transaction.customerNum
AND transaction.salesAgreementNum = saleLineItem.salesAgreementNum
AND saleLineItem.equipmentSerialNum = itemSold.equipmentSerialNum
AND productCategory.modelNum = itemSold.modelNum
AND transaction.salesAgreementDate > CURRENT_DATE - INTERVAL 24 MONTH
ORDER BY `Sales Date`;
