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

        Constructor(tnStatementHandle)
            With This
                .Name           = "Customers"
                .DataSource     = tnStatementHandle
                .SelectCmd      = .DefineSelect()
                .CursorFill()
            Endwith

            Return
        End Constructor

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
