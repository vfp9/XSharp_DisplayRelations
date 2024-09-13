Using System
USING System.Collections.Generic
USING System.Text

BEGIN NAMESPACE DisplayRelations

	/// <summary>
    /// The DAL_Orders class.
    /// This Class is temporarily unavailable 
    /// because you can't pass parameters with double quotes or question marks in the value of the SelectCmd property.
    /// </summary>
    Define Class DAL_Orders As XSharp.VFP.CursorAdapter
        Constructor(tnStatementHandle)
            With This
                .Name           = "Orders"
                .Alias          = "Orders"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                .SelectCmd      = "SELECT * FROM Orders WHERE CustomerID = ?Customers.CustomerID ORDER BY CustomerID, OrderDate DESC"
            Endwith

            Return
        End Constructor
	ENDDEFINE
END NAMESPACE // DisplayRelations
