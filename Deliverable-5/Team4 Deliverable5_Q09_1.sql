SELECT productCategory.modelNum, productCategory.modelDescription, productOrder.orderNum, supplier.supplierNum, supplier.supplierName,
restockLineItem.lineItemEquipmentPrice
FROM productCategory,restockLineItem,productOrder, supplier
WHERE productCategory.modelNum=restockLineItem.modelNum
AND restockLineItem.orderNum=productOrder.orderNum
AND productOrder.supplierNum=supplier.supplierNum
ORDER BY productCategory.modelNum, productOrder.orderNum;
