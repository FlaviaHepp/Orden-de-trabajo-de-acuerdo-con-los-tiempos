USE AdventureWorks2019
GO

--Se requiere conocer el detalle de producto, orden de trabajo y diferencia de los dias programados y reales

SELECT pp.ProductID, pp. Name AS Producto, WorkOrderID, OperationSequence AS Secuencia_operación, ScheduledEndDate AS Fecha_finalización_programada, ActualStartDate AS Fecha_inicio_actual, ActualEndDate AS Fecha_finalización_actual, DATEDIFF(DAY, ScheduledStartDate,  ScheduledEndDate) AS dias_programados, DATEDIFF(DAY, ActualStartDate, ActualEndDate) As dias_reales
FROM Production.WorkOrderRouting pwor
INNER JOIN Production.Product pp
ON pwor.ProductID = pp.ProductID
ORDER BY ProductID
