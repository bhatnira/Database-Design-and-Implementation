SELECT productOrder.orderNum, productOrder.orderDatePlaced, productOrder.orderDateReceived, supplier.supplierNum, supplier.supplierName, supplier.supplierContact, supplier.supplierPhone
FROM productOrder, supplier
WHERE productOrder.supplierNum = supplier.supplierNum
AND productOrder.orderDatePlaced < CURRENT_DATE - INTERVAL 1 MONTH
AND productOrder.orderDateReceived IS NULL
ORDER BY productOrder.orderDatePlaced ASC;
