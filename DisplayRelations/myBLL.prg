Using System
USING System.Collections.Generic
Using System.Text

Using XSharp.VFP.UI

BEGIN NAMESPACE DisplayRelations

	/// <summary>
    /// The myBLL class.
    /// </summary>
    Define Class myBLL As DataEnvironment
        Customers       = .null.
        Orders          = .null.
        OrderDetails    = .null.
                   
        Constructor(tnStatementHandle)
            With This
                .Name           = "myDE"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                .Customers      = CreateObject("DAL_Customers",     tnStatementHandle)
                .Orders         = CreateObject("DAL_Orders",        tnStatementHandle)
                .OrderDetails   = CreateObject("DAL_OrderDetails",  tnStatementHandle)
            Endwith
            Return
        End Constructor    
        
	Enddefine
END NAMESPACE // DisplayRelations
