Using System
Using System.Collections.Generic
Using System.Text

Using XSharp.VFP.UI

Begin Namespace DisplayRelations

	/// <summary>
    /// The myBLL2 class.
    /// </summary>
    *!* 继承 .NET 类时必须使用 X# 语法的类定义(Core 方言的类定义语法)     by xinjie  2024.12.03
    Class myBLL2 Inherit DataEnvironment
        Public  _Customers       As DAL_Customers2
        Public  _Orders          As DAL_Orders2
        Public  _OrderDetails    As DAL_OrderDetails2

        Public Property Customers As DAL_Customers2
            Get
                Return _Customers
            End Get
            Set
                _Customers := Value
            End Set
        End Property

        Public Property Orders As DAL_Orders2
            Get
                Return _Orders
            End Get
            Set
                _Orders := Value
            End Set
        End Property

        Public Property OrderDetails As DAL_OrderDetails2
            Get
                Return _OrderDetails
            End Get
            Set
                _OrderDetails := Value
            End Set
        End Property

        Constructor(tnStatementHandle As Int)
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
	End Class
End Namespace // DisplayRelations
