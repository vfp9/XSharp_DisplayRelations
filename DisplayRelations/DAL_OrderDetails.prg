Using System
USING System.Collections.Generic
USING System.Text

BEGIN NAMESPACE DisplayRelations

	/// <summary>
    /// The DAL_OrderDetails class.
    /// This Class is temporarily unavailable 
    /// because you can't pass parameters with double quotes or question marks in the value of the SelectCmd property.    
    /// </summary>
    Define Class DAL_OrderDetails As XSharp.VFP.CursorAdapter
        Constructor(tnStatementHandle)
            With This
                .Name           = "OrderDetails"
                .Alias          = "OrderDetails"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                .SelectCmd      = "SELECT A.*,	B.ProductName FROM OrderDetails A LEFT JOIN Products B ON A.ProductID = B.ProductID WHERE A.OrderID = ?Orders.OrderID"
            Endwith

            Return
        End Constructor
	ENDDEFINE
END NAMESPACE // DisplayRelations
