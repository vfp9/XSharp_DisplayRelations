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
        
        *!* Option 1, abandon for now
        *!* Public _oDE        As DataEnvironment

        Public Property oConnect As myConnect 
            Get 
                Return _oConnect 
            End Get
            Set 
                _oConnect := Value 
            End Set
        End Property

        *!* Option 1, abandon for now
        *!* Public Property oDE As DataEnvironment 
        *!*     Get 
        *!*         Return _oDE 
        *!*     End Get
        *!*     Set 
        *!*         _oDE := Value 
        *!*     End Set
        *!* End Property

        
        Public Constructor()   Strict
            InitializeComponent()
            This.CreatConnect()
            
            *!* Option 1, abandon for now
            *!* This.oDE = CreateObject("myBLL", This.oConnect.nStatementHandle)

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
        
        Private Method Form1_Load(sender As System.Object, e As System.EventArgs) As Void Strict
            *!* Option 1, abandon for now
            *!* With This.oDE
            *!*    A1= .Customers.CursorFill()
            *!*    A2= .Orders.CursorFill()
            *!*    A3= .OrderDetails.CursorFill()
            *!* Endwith
                
            Return
        End Method
    End Class 
End Namespace
