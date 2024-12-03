Using System
USING System.Collections.Generic
Using System.Text

Using XSharp.VFP

BEGIN NAMESPACE DisplayRelations

	/// <summary>
    /// The DAL_Orders class.
    /// Using the Custom Emulation CursorAdapter
    /// </summary>
    Define Class DAL_Orders2 As Custom
        Alias           = "Orders"
        DataSourceType  = "ODBC"
        DataSource      = -1
        SelectCmd       = ""
        
        *!* Define Class 语法定义的类中不能使用构造函数，但是可以使用传统的 Init 完成创建类实例时的初始化    by xinjie  2024.12.03
        Procedure Init(tnStatementHandle)
            With This
                .Name           = "Orders"
                .Alias          = "Orders"
                .DataSourceType = "ODBC"
                .DataSource     = tnStatementHandle
                .SelectCmd      = .DefineSelect()
                .CursorFill()
            Endwith

            Return
        Endproc
        
        Procedure DefineSelect()  As String
            Local lcPara As String, lcSelect As String
            lcPara = Customers.CustomerID

            Text To lcSelect Noshow Textmerge Pretext 1 + 2 + 4 + 8
                Select * From Orders Where CustomerID = '<<lcPara>>' Order By CustomerID, OrderDate DESC
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
