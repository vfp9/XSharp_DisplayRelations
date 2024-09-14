Using System
USING System.Collections.Generic
Using System.Text

Using XSharp.VFP.UI

BEGIN NAMESPACE DisplayRelations

	/// <summary>
    /// The myBLL class.
    /// </summary>
    Define Class myBLL As DataEnvironment
        Customers       As DAL_Customers2
        Orders          As DAL_Orders2
        OrderDetails    As DAL_OrderDetails2
                   
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
