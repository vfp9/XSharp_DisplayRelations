Using System
USING System.Collections.Generic
Using System.Text

Using XSharp.VFP

Begin Namespace DisplayRelations

	/// <summary>
    /// The DAL_CursorAdapter class.
    /// Using the Custom Emulation CursorAdapter
    /// </summary>
    Define Class DAL_Customers2 As Custom
        Alias           = "Customers"
        DataSourceType  = "ODBC"
        DataSource      = -1
        SelectCmd       = ""

        *!* Define Class 语法定义的类中不能使用构造函数，但是可以使用传统的 Init 完成创建类实例时的初始化    by xinjie  2024.12.03
        Procedure Init(tnStatementHandle)
            With This
                .Name           = "Customers"
                .DataSource     = tnStatementHandle
                .SelectCmd      = .DefineSelect()
                .CursorFill()
            Endwith

            Return
        Endproc

        Procedure DefineSelect()  As String
            Local lcSelect As String

            Text To lcSelect Noshow Textmerge Pretext 1 + 2 + 4 + 8
                Select * From Customers Order By CustomerID
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
