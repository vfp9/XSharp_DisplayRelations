﻿Using System
USING System.Collections.Generic
Using System.Text

Using XSharp.VFP

BEGIN NAMESPACE DisplayRelations

	/// <summary>
    /// The DAL_OrderDetails class.
    /// Using the Custom Emulation CursorAdapter
    /// </summary>
    Define Class DAL_OrderDetails2 As Custom
        Alias           = "OrderDetails"
        DataSourceType  = "ODBC"
        DataSource      = -1
        SelectCmd       = ""
    
        Constructor(tnStatementHandle)
            With This
                .Name           = "OrderDetails"
                .Alias          = "OrderDetails"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                .SelectCmd      = .DefineSelect()
                .CursorFill()
            Endwith

            Return
        End Constructor
        
        Procedure DefineSelect()  As String
            Local lnPara As Int, lcSelect As String
            lnPara = Orders.OrderID

            Text To lcSelect Noshow Textmerge Pretext 1 + 2 + 4 + 8
                Select A.*,	B.ProductName 
                    From OrderDetails A 
                        LEFT Join Products B 
                            On A.ProductID = B.ProductID 
                    Where A.OrderID = <<lnPara>>
            Endtext

            Return lcSelect
        Endproc

        Procedure CursorFill()
            Local lnReturn As Int
            lnReturn = SQLExec(This.DataSource, This.SelectCmd, This.Alias)

            Return
        Endproc

        Procedure CursorRefresh()
            Return
        Endproc
    Enddefine
END NAMESPACE // DisplayRelations
