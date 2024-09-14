Using System
Using System.Collections.Generic
Using System.Text

Using XSharp.VFP.UI

Begin Namespace DisplayRelations

	/// <summary>
    /// The myBLL2 class.
    /// </summary>
    Define Class myBLL2 As DataEnvironment    
        Customers       As DAL_Customers2
        Orders          As DAL_Orders2
        OrderDetails    As DAL_OrderDetails2

        Constructor(tnStatementHandle)
            With This
                .Name           = "myDE"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                
                .Customers      = CreateObject("DAL_Customers2",     tnStatementHandle)
                .Orders         = CreateObject("DAL_Orders2",        tnStatementHandle)
                .OrderDetails   = CreateObject("DAL_OrderDetails2",  tnStatementHandle)
            Endwith
                
            Return
        End Constructor

	Enddefine
End Namespace // DisplayRelations
