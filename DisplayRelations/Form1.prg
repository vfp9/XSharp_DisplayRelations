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

Begin Namespace DisplayRelations

    Public Partial Class Form1 ;
        Inherit System.Windows.Forms.Form

        Public  _oConnect    As myConnect

        Public Property oConnect As myConnect 
            Get 
                Return _oConnect 
            End Get
            Set 
                _oConnect := Value 
            End Set
        End Property

        Public Constructor()   Strict
            InitializeComponent()

            With This
                .CreatConnect()
            Endwith

            Return
        End Constructor

        Private Method cmdClose_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.Close()
            Return
        End Method

        Private Method  CreatConnect() As Void Strict
            With This
                .oConnect = CreateObject("myConnect")
                .oConnect.CreateConnect()
            Endwith
            
            Return
        End Method
    End Class
End Namespace
