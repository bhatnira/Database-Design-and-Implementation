SELECT
    DISTINCT supplier.supplierNum, supplier.supplierName
FROM
    supplier, productOrder
WHERE productOrder.orderDateReceived IS NOT NULL
ORDER BY
    supplier.supplierName;
