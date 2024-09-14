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

Using XSharp.VFP.UI
 

Begin Namespace DisplayRelations

    Public Partial Class Form1 ;
        Inherit System.Windows.Forms.Form

        Public _oConnect   As myConnect
        
        Public _oDE        As DataEnvironment
        
        Private Method BindControls() As Void Strict
            Select Customers
            With This
                Var loDS = DbDataSource()
                This.bsCustomers.DataSource = loDS
                
                This.txtCustID.DataBindings.Add("Text", bsCustomers, "CustomerID")
                This.txtCompany.DataBindings.Add("Text", bsCustomers, "CompanyName")
                This.txtContact.DataBindings.Add("Text", bsCustomers, "ContactName")
            Endwith
            
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
                
            Select OrderDetails
            With This
                .grdDetails.DataSource   = .bsOrderDetails
                
                Var loDS = DbDataSource()
                With loDS
                    .ShowDeleted    = .f.
                    .ShowRecno      = .f.
                Endwith
                
                .bsOrderDetails.DataSource    = loDS
                
                Local lnSum As Currency 
                Sum UnitPrice * Quantity * (1 - Discount) To lnSum
                //lnSum = round(lnSum, 2)
                This.txtTotal.Text = lnSum.ToString()
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

        Public Property oDE As DataEnvironment 
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
            Set Date Ansi
            This.oDE = CreateObject("myBLL2", This.oConnect.nStatementHandle)
            This.BindControls()
            
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
    End Class 
End Namespace
