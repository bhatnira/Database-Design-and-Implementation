SELECT productCategory.modelNum, productCategory.modelDescription,
supplier.supplierNum
FROM productCategory,restockLineItem,productOrder, supplier
WHERE productCategory.modelNum=restockLineItem.modelNum
AND restockLineItem.orderNum=productOrder.orderNum
AND productOrder.supplierNum=supplier.supplierNum;

 
