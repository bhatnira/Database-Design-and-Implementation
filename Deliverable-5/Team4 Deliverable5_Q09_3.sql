SELECT productCategory.modelNum, productCategory.modelDescription,
COUNT(DISTINCT supplier.supplierNum) AS Total_supplier
FROM productCategory,restockLineItem,productOrder, supplier
WHERE productCategory.modelNum=restockLineItem.modelNum
AND restockLineItem.orderNum=productOrder.orderNum
AND productOrder.supplierNum=supplier.supplierNum
GROUP BY  productCategory.modelDescription
HAVING COUNT(Total_supplier)>1
ORDER BY modelNum ASC;

