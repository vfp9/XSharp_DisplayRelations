Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing
Using System.Linq

Using System.Text
Using System.Threading.Tasks

Using System.Windows.Forms

Using INIParser
Using INIParser.Model

Using XSharp.VFP
Using XSharp.VFP.UI
 

Begin Namespace DisplayRelations

    Public Partial Class Form1 ;
        Inherit System.Windows.Forms.Form

        Public _oConnect   As myConnect
        Public _oDE        As myBLL2
        
        Private Method BindControls() As Void Strict
            Select Customers
            With This
                Var loDS = DbDataSource()
                .bsCustomers.DataSource = loDS
                
                .txtCustID.DataBindings.Add("Text",     bsCustomers, "CustomerID")
                .txtCompany.DataBindings.Add("Text",    bsCustomers, "CompanyName")
                .txtContact.DataBindings.Add("Text",    bsCustomers, "ContactName")
                
                .BindingOrders()
                .BindingOrderDetails()
                .GrandTotal()
            Endwith
        End Method
        
        Private Method GrandTotal()
            Select OrderDetails
                
            Local lnSum As Currency 
            Sum UnitPrice * Quantity * (1 - Discount) To lnSum

            This.txtTotal.Text = lnSum.ToString()
            
            Return
        End Method
        
        Private Method BindingOrders()
            Select Orders
            With This
                .grdOrders.DataSource   = .bsOrders
                
                Var loDS = DbDataSource()
                With loDS
                    .ShowDeleted    = .f.
                    .ShowRecno      = .f.
                Endwith
                
                .bsOrders.DataSource    = loDS
            Endwith    
        End Method
        
        Private Method BindingOrderDetails
            Select OrderDetails
            With This
                .grdDetails.DataSource   = .bsOrderDetails
                
                Var loDS = DbDataSource()
                With loDS
                    .ShowDeleted    = .f.
                    .ShowRecno      = .f.
                Endwith
                
                .bsOrderDetails.DataSource    = loDS
            Endwith
        End Method
               
        Public Property oConnect As myConnect 
            Get 
                Return _oConnect 
            End Get
            Set 
                _oConnect := Value 
            End Set
        End Property

        Public Property oDE As myBLL2
            Get 
                Return _oDE 
            End Get
            Set 
                _oDE := Value 
            End Set
        End Property

    
        Public Constructor()   Strict
            InitializeComponent()
            This.CreatConnect()
            
            *!* Option 1, abandon for now
            *!* This.oDE = CreateObject("myBLL", This.oConnect.nStatementHandle)
            
            *!* Option 2           
            This.oDE = CreateObject("myBLL2", This.oConnect.nStatementHandle)
            This.BindControls()
            This.grdDetailsSetStyle()
            
            Return
        End Constructor
               
        Private Method cmdClose_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.Close()
            Return
        End Method

        Private Method  CreatConnect() As Void Strict
            With This
                .oConnect = CreateObject("myConnect")
            Endwith
            
            Return
        End Method
        
        Private Method cmdFirst_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.bsCustomers.MoveFirst()
            This.DE_Refresh()
            
            Return
        End Method
        
        
        Private Method cmdPrevious_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.bsCustomers.MovePrevious()
            This.DE_Refresh()
            
            Return
        End Method
        
        Private Method cmdNext_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.bsCustomers.MoveNext()
            This.DE_Refresh()
            
            Return
        End Method

        Private Method cmdLast_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.bsCustomers.MoveLast()
            This.DE_Refresh()
            
            Return
        End Method
        
        Private Method DE_Refresh()
            This.Orders_Refresh()
            This.OrderDetails_Refresh()
            This.GrandTotal()
        End Method
        
        Private Method Orders_Refresh
            With This.oDE.Orders
                .SelectCmd = .DefineSelect()
                .CursorFill()
            Endwith
                
            This.BindingOrders()
            This.bsOrders.ResetBindings(.f.)

        End Method
        
        Private Method OrderDetails_Refresh
            With This.oDE.OrderDetails
                .SelectCmd = .DefineSelect()
                .CursorFill()
            Endwith    
            
            This.BindingOrderDetails()
            This.bsOrderDetails.ResetBindings(.f.)            
        End Method
        
        Private Method grdOrders_SelectionChanged(sender As System.Object, e As System.EventArgs) As Void Strict
            If !Empty(This.txtCompany.Text)
                This.OrderDetails_Refresh()
                This.GrandTotal()
            Endif
            
            Return
        End Method
        
        Private Method grdDetailsSetStyle()
            With This.grdDetails
                .Columns[2].DefaultCellStyle.BackColor = color.Blue
                .Columns[3].DefaultCellStyle.BackColor = color.Blue
                .Columns[4].DefaultCellStyle.BackColor = color.Blue
            Endwith
        End Method
    End Class 
End Namespace
