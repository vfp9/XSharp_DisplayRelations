Using System
USING System.Collections.Generic
USING System.Text

Begin Namespace DisplayRelations

	/// <summary>
    /// The DAL_CursorAdapter class.
    /// This Class is temporarily unavailable 
    /// because you can't pass parameters with double quotes or question marks in the value of the SelectCmd property.    
    /// </summary>
    Define Class DAL_Customers As XSharp.VFP.CursorAdapter
        Constructor(tnStatementHandle)
            With This
                .Name           = "Customers"
                .Alias          = "Customers"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                .SelectCmd      = "SELECT * FROM Customers ORDER BY CustomerID"
            Endwith 
            
            Return
        End Constructor  
	ENDDEFINE
END NAMESPACE // DisplayRelations
