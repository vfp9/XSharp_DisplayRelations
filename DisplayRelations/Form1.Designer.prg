﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.21.0.3
//     Timestamp      : 2024/10/26 21:32:28
//     
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//  </auto-generated>
//------------------------------------------------------------------------------
Begin Namespace DisplayRelations

    Public Partial Class Form1

        /// <summary>
        /// Required designer variable.
        /// </summary>
        Private components := Null As System.ComponentModel.IContainer
        Private grpInstructions As System.Windows.Forms.GroupBox
        Private grpCustomer As System.Windows.Forms.GroupBox
        Private grdOrders As System.Windows.Forms.DataGridView
        Private grdDetails As System.Windows.Forms.DataGridView
        Private cmdNext As System.Windows.Forms.Button
        Private cmdLast As System.Windows.Forms.Button
        Private cmdClose As System.Windows.Forms.Button
        Private label1 As System.Windows.Forms.Label
        Private label5 As System.Windows.Forms.Label
        Private cmdFirst As System.Windows.Forms.Button
        Private cmdPrevious As System.Windows.Forms.Button
        Private txtCustID As System.Windows.Forms.TextBox
        Private lblCustID As System.Windows.Forms.Label
        Private txtTotal As System.Windows.Forms.TextBox
        Private txtContact As System.Windows.Forms.TextBox
        Private txtCompany As System.Windows.Forms.TextBox
        Private lblCompany As System.Windows.Forms.Label
        Private lblContact As System.Windows.Forms.Label
        Private bsOrders As System.Windows.Forms.BindingSource
        Private bsOrderDetails As System.Windows.Forms.BindingSource
        Private bsCustomers As System.Windows.Forms.BindingSource

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        Protected Override Method Dispose(disposing As Logic) As Void  Strict

            If (disposing .AND. (components != null))
                components:Dispose()
            Endif
            Super:Dispose(disposing)
			Return
        End Method
        #region Windows Form Designer generated Code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Private Method InitializeComponent() As Void Strict
            Self:components := System.ComponentModel.Container{}
            Local resources := System.ComponentModel.ComponentResourceManager{Typeof(Form1)} As System.ComponentModel.ComponentResourceManager
            Self:grpInstructions := System.Windows.Forms.GroupBox{}
            Self:label1 := System.Windows.Forms.Label{}
            Self:grpCustomer := System.Windows.Forms.GroupBox{}
            Self:txtTotal := System.Windows.Forms.TextBox{}
            Self:txtContact := System.Windows.Forms.TextBox{}
            Self:txtCompany := System.Windows.Forms.TextBox{}
            Self:txtCustID := System.Windows.Forms.TextBox{}
            Self:lblCompany := System.Windows.Forms.Label{}
            Self:label5 := System.Windows.Forms.Label{}
            Self:lblContact := System.Windows.Forms.Label{}
            Self:lblCustID := System.Windows.Forms.Label{}
            Self:grdOrders := System.Windows.Forms.DataGridView{}
            Self:bsOrders := System.Windows.Forms.BindingSource{Self:components}
            Self:grdDetails := System.Windows.Forms.DataGridView{}
            Self:cmdFirst := System.Windows.Forms.Button{}
            Self:cmdPrevious := System.Windows.Forms.Button{}
            Self:cmdNext := System.Windows.Forms.Button{}
            Self:cmdLast := System.Windows.Forms.Button{}
            Self:cmdClose := System.Windows.Forms.Button{}
            Self:bsOrderDetails := System.Windows.Forms.BindingSource{Self:components}
            Self:bsCustomers := System.Windows.Forms.BindingSource{Self:components}
            Self:grpInstructions:SuspendLayout()
            Self:grpCustomer:SuspendLayout()
            ((System.ComponentModel.ISupportInitialize)(Self:grdOrders)):BeginInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bsOrders)):BeginInit()
            ((System.ComponentModel.ISupportInitialize)(Self:grdDetails)):BeginInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bsOrderDetails)):BeginInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bsCustomers)):BeginInit()
            Self:SuspendLayout()
            // 
            // grpInstructions
            // 
            resources:ApplyResources(Self:grpInstructions, "grpInstructions")
            Self:grpInstructions:Controls:Add(Self:label1)
            Self:grpInstructions:Name := "grpInstructions"
            Self:grpInstructions:TabStop := false
            // 
            // label1
            // 
            resources:ApplyResources(Self:label1, "label1")
            Self:label1:Name := "label1"
            // 
            // grpCustomer
            // 
            resources:ApplyResources(Self:grpCustomer, "grpCustomer")
            Self:grpCustomer:Controls:Add(Self:txtTotal)
            Self:grpCustomer:Controls:Add(Self:txtContact)
            Self:grpCustomer:Controls:Add(Self:txtCompany)
            Self:grpCustomer:Controls:Add(Self:txtCustID)
            Self:grpCustomer:Controls:Add(Self:lblCompany)
            Self:grpCustomer:Controls:Add(Self:label5)
            Self:grpCustomer:Controls:Add(Self:lblContact)
            Self:grpCustomer:Controls:Add(Self:lblCustID)
            Self:grpCustomer:Name := "grpCustomer"
            Self:grpCustomer:TabStop := false
            // 
            // txtTotal
            // 
            Self:txtTotal:ForeColor := System.Drawing.Color.Blue
            resources:ApplyResources(Self:txtTotal, "txtTotal")
            Self:txtTotal:Name := "txtTotal"
            Self:txtTotal:ReadOnly := true
            // 
            // txtContact
            // 
            resources:ApplyResources(Self:txtContact, "txtContact")
            Self:txtContact:Name := "txtContact"
            Self:txtContact:ReadOnly := true
            // 
            // txtCompany
            // 
            resources:ApplyResources(Self:txtCompany, "txtCompany")
            Self:txtCompany:Name := "txtCompany"
            Self:txtCompany:ReadOnly := true
            // 
            // txtCustID
            // 
            resources:ApplyResources(Self:txtCustID, "txtCustID")
            Self:txtCustID:Name := "txtCustID"
            Self:txtCustID:ReadOnly := true
            // 
            // lblCompany
            // 
            resources:ApplyResources(Self:lblCompany, "lblCompany")
            Self:lblCompany:Name := "lblCompany"
            // 
            // label5
            // 
            resources:ApplyResources(Self:label5, "label5")
            Self:label5:Name := "label5"
            // 
            // lblContact
            // 
            resources:ApplyResources(Self:lblContact, "lblContact")
            Self:lblContact:Name := "lblContact"
            // 
            // lblCustID
            // 
            resources:ApplyResources(Self:lblCustID, "lblCustID")
            Self:lblCustID:Name := "lblCustID"
            // 
            // grdOrders
            // 
            Self:grdOrders:AllowUserToAddRows := false
            Self:grdOrders:AllowUserToDeleteRows := false
            Self:grdOrders:AllowUserToResizeRows := false
            resources:ApplyResources(Self:grdOrders, "grdOrders")
            Self:grdOrders:ColumnHeadersHeightSizeMode := System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
            Self:grdOrders:Name := "grdOrders"
            Self:grdOrders:ReadOnly := true
            Self:grdOrders:RowTemplate:Height := 30
            Self:grdOrders:SelectionMode := System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
            Self:grdOrders:SelectionChanged += System.EventHandler{ Self, @grdOrders_SelectionChanged() }
            // 
            // bsOrders
            // 
            Self:bsOrders:AllowNew := false
            // 
            // grdDetails
            // 
            Self:grdDetails:AllowUserToAddRows := false
            Self:grdDetails:AllowUserToDeleteRows := false
            Self:grdDetails:AllowUserToResizeRows := false
            resources:ApplyResources(Self:grdDetails, "grdDetails")
            Self:grdDetails:ColumnHeadersHeightSizeMode := System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
            Self:grdDetails:Name := "grdDetails"
            Self:grdDetails:ReadOnly := true
            Self:grdDetails:RowTemplate:Height := 30
            Self:grdDetails:SelectionMode := System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
            // 
            // cmdFirst
            // 
            resources:ApplyResources(Self:cmdFirst, "cmdFirst")
            Self:cmdFirst:Name := "cmdFirst"
            Self:cmdFirst:UseVisualStyleBackColor := true
            Self:cmdFirst:Click += System.EventHandler{ Self, @cmdFirst_Click() }
            // 
            // cmdPrevious
            // 
            resources:ApplyResources(Self:cmdPrevious, "cmdPrevious")
            Self:cmdPrevious:Name := "cmdPrevious"
            Self:cmdPrevious:UseVisualStyleBackColor := true
            Self:cmdPrevious:Click += System.EventHandler{ Self, @cmdPrevious_Click() }
            // 
            // cmdNext
            // 
            resources:ApplyResources(Self:cmdNext, "cmdNext")
            Self:cmdNext:Name := "cmdNext"
            Self:cmdNext:UseVisualStyleBackColor := true
            Self:cmdNext:Click += System.EventHandler{ Self, @cmdNext_Click() }
            // 
            // cmdLast
            // 
            resources:ApplyResources(Self:cmdLast, "cmdLast")
            Self:cmdLast:Name := "cmdLast"
            Self:cmdLast:UseVisualStyleBackColor := true
            Self:cmdLast:Click += System.EventHandler{ Self, @cmdLast_Click() }
            // 
            // cmdClose
            // 
            resources:ApplyResources(Self:cmdClose, "cmdClose")
            Self:cmdClose:Name := "cmdClose"
            Self:cmdClose:UseVisualStyleBackColor := true
            Self:cmdClose:Click += System.EventHandler{ Self, @cmdClose_Click() }
            // 
            // Form1
            // 
            resources:ApplyResources(Self, "$this")
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:Controls:Add(Self:cmdClose)
            Self:Controls:Add(Self:cmdLast)
            Self:Controls:Add(Self:cmdNext)
            Self:Controls:Add(Self:cmdPrevious)
            Self:Controls:Add(Self:cmdFirst)
            Self:Controls:Add(Self:grdDetails)
            Self:Controls:Add(Self:grdOrders)
            Self:Controls:Add(Self:grpCustomer)
            Self:Controls:Add(Self:grpInstructions)
            Self:Name := "Form1"
            Self:grpInstructions:ResumeLayout(false)
            Self:grpCustomer:ResumeLayout(false)
            Self:grpCustomer:PerformLayout()
            ((System.ComponentModel.ISupportInitialize)(Self:grdOrders)):EndInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bsOrders)):EndInit()
            ((System.ComponentModel.ISupportInitialize)(Self:grdDetails)):EndInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bsOrderDetails)):EndInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bsCustomers)):EndInit()
            Self:ResumeLayout(false)
        End Method
        #endregion
    End Class 
End Namespace
