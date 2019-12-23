<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmSchoolYearBuild
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.btnClose = New System.Windows.Forms.Button()
        Me.btnSave = New System.Windows.Forms.Button()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.lblCountSec = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel6 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel7 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.dgvSec = New System.Windows.Forms.DataGridView()
        Me.Column4 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column3 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.StatusStrip2 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel2 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.lblCountCharges = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel8 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel9 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.dgvCharges = New System.Windows.Forms.DataGridView()
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn3 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column5 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.StatusStrip3 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel14 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.lblChargeDesc = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel12 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.lblTotAmount = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel4 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.lblTotApp = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel3 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.lblCountPD = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel10 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel11 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.dgvPD = New System.Windows.Forms.DataGridView()
        Me.DataGridViewTextBoxColumn4 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn5 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn6 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.GroupBox1.SuspendLayout()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        CType(Me.dgvSec, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage2.SuspendLayout()
        Me.StatusStrip2.SuspendLayout()
        CType(Me.dgvCharges, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage3.SuspendLayout()
        Me.StatusStrip3.SuspendLayout()
        CType(Me.dgvPD, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btnClose
        '
        Me.btnClose.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.btnClose.Location = New System.Drawing.Point(430, 330)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(125, 35)
        Me.btnClose.TabIndex = 13
        Me.btnClose.Text = "Close"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'btnSave
        '
        Me.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.btnSave.Location = New System.Drawing.Point(312, 330)
        Me.btnSave.Name = "btnSave"
        Me.btnSave.Size = New System.Drawing.Size(115, 35)
        Me.btnSave.TabIndex = 12
        Me.btnSave.Text = "Save"
        Me.btnSave.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.TabControl1)
        Me.GroupBox1.Location = New System.Drawing.Point(0, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(866, 324)
        Me.GroupBox1.TabIndex = 17
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "School Year Build up"
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Location = New System.Drawing.Point(3, 19)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(860, 299)
        Me.TabControl1.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.StatusStrip1)
        Me.TabPage1.Controls.Add(Me.dgvSec)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Size = New System.Drawing.Size(852, 273)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Section Include"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1, Me.lblCountSec, Me.ToolStripStatusLabel6, Me.ToolStripStatusLabel7})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 244)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(852, 29)
        Me.StatusStrip1.TabIndex = 5
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(76, 24)
        Me.ToolStripStatusLabel1.Text = "No. Count's :"
        '
        'lblCountSec
        '
        Me.lblCountSec.MergeIndex = 1
        Me.lblCountSec.Name = "lblCountSec"
        Me.lblCountSec.Size = New System.Drawing.Size(13, 24)
        Me.lblCountSec.Text = "0"
        '
        'ToolStripStatusLabel6
        '
        Me.ToolStripStatusLabel6.BorderSides = CType((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom), System.Windows.Forms.ToolStripStatusLabelBorderSides)
        Me.ToolStripStatusLabel6.BorderStyle = System.Windows.Forms.Border3DStyle.Raised
        Me.ToolStripStatusLabel6.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.ToolStripStatusLabel6.Font = New System.Drawing.Font("Segoe UI", 11.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel6.Name = "ToolStripStatusLabel6"
        Me.ToolStripStatusLabel6.Padding = New System.Windows.Forms.Padding(0, 0, 25, 0)
        Me.ToolStripStatusLabel6.Size = New System.Drawing.Size(49, 24)
        Me.ToolStripStatusLabel6.Text = "+"
        '
        'ToolStripStatusLabel7
        '
        Me.ToolStripStatusLabel7.BorderSides = CType((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom), System.Windows.Forms.ToolStripStatusLabelBorderSides)
        Me.ToolStripStatusLabel7.BorderStyle = System.Windows.Forms.Border3DStyle.Raised
        Me.ToolStripStatusLabel7.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.ToolStripStatusLabel7.Font = New System.Drawing.Font("Segoe UI", 11.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel7.Name = "ToolStripStatusLabel7"
        Me.ToolStripStatusLabel7.Padding = New System.Windows.Forms.Padding(0, 0, 25, 0)
        Me.ToolStripStatusLabel7.Size = New System.Drawing.Size(44, 24)
        Me.ToolStripStatusLabel7.Text = "-"
        '
        'dgvSec
        '
        Me.dgvSec.AllowUserToAddRows = False
        Me.dgvSec.AllowUserToDeleteRows = False
        Me.dgvSec.AllowUserToResizeRows = False
        Me.dgvSec.BackgroundColor = System.Drawing.Color.White
        Me.dgvSec.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvSec.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Column4, Me.Column1, Me.Column2, Me.Column3})
        Me.dgvSec.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgvSec.Location = New System.Drawing.Point(0, 0)
        Me.dgvSec.Name = "dgvSec"
        Me.dgvSec.ReadOnly = True
        Me.dgvSec.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgvSec.Size = New System.Drawing.Size(852, 273)
        Me.dgvSec.TabIndex = 3
        '
        'Column4
        '
        Me.Column4.HeaderText = "Section No."
        Me.Column4.Name = "Column4"
        Me.Column4.ReadOnly = True
        '
        'Column1
        '
        Me.Column1.HeaderText = "Section Name"
        Me.Column1.Name = "Column1"
        Me.Column1.ReadOnly = True
        Me.Column1.Width = 140
        '
        'Column2
        '
        Me.Column2.HeaderText = "Grade"
        Me.Column2.Name = "Column2"
        Me.Column2.ReadOnly = True
        '
        'Column3
        '
        Me.Column3.HeaderText = "Student Count"
        Me.Column3.Name = "Column3"
        Me.Column3.ReadOnly = True
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.StatusStrip2)
        Me.TabPage2.Controls.Add(Me.dgvCharges)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Size = New System.Drawing.Size(852, 273)
        Me.TabPage2.TabIndex = 0
        Me.TabPage2.Text = "Tuition fee / Charges"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'StatusStrip2
        '
        Me.StatusStrip2.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel2, Me.lblCountCharges, Me.ToolStripStatusLabel8, Me.ToolStripStatusLabel9})
        Me.StatusStrip2.Location = New System.Drawing.Point(0, 244)
        Me.StatusStrip2.Name = "StatusStrip2"
        Me.StatusStrip2.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip2.Size = New System.Drawing.Size(852, 29)
        Me.StatusStrip2.TabIndex = 6
        Me.StatusStrip2.Text = "StatusStrip2"
        '
        'ToolStripStatusLabel2
        '
        Me.ToolStripStatusLabel2.Name = "ToolStripStatusLabel2"
        Me.ToolStripStatusLabel2.Size = New System.Drawing.Size(76, 24)
        Me.ToolStripStatusLabel2.Text = "No. Count's :"
        '
        'lblCountCharges
        '
        Me.lblCountCharges.MergeIndex = 1
        Me.lblCountCharges.Name = "lblCountCharges"
        Me.lblCountCharges.Size = New System.Drawing.Size(13, 24)
        Me.lblCountCharges.Text = "0"
        '
        'ToolStripStatusLabel8
        '
        Me.ToolStripStatusLabel8.BorderSides = CType((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom), System.Windows.Forms.ToolStripStatusLabelBorderSides)
        Me.ToolStripStatusLabel8.BorderStyle = System.Windows.Forms.Border3DStyle.Raised
        Me.ToolStripStatusLabel8.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.ToolStripStatusLabel8.Font = New System.Drawing.Font("Segoe UI", 11.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel8.Name = "ToolStripStatusLabel8"
        Me.ToolStripStatusLabel8.Padding = New System.Windows.Forms.Padding(0, 0, 25, 0)
        Me.ToolStripStatusLabel8.Size = New System.Drawing.Size(49, 24)
        Me.ToolStripStatusLabel8.Text = "+"
        '
        'ToolStripStatusLabel9
        '
        Me.ToolStripStatusLabel9.BorderSides = CType((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom), System.Windows.Forms.ToolStripStatusLabelBorderSides)
        Me.ToolStripStatusLabel9.BorderStyle = System.Windows.Forms.Border3DStyle.Raised
        Me.ToolStripStatusLabel9.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.ToolStripStatusLabel9.Font = New System.Drawing.Font("Segoe UI", 11.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel9.Name = "ToolStripStatusLabel9"
        Me.ToolStripStatusLabel9.Padding = New System.Windows.Forms.Padding(0, 0, 25, 0)
        Me.ToolStripStatusLabel9.Size = New System.Drawing.Size(44, 24)
        Me.ToolStripStatusLabel9.Text = "-"
        '
        'dgvCharges
        '
        Me.dgvCharges.AllowUserToAddRows = False
        Me.dgvCharges.AllowUserToDeleteRows = False
        Me.dgvCharges.AllowUserToResizeRows = False
        Me.dgvCharges.BackgroundColor = System.Drawing.Color.White
        Me.dgvCharges.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvCharges.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DataGridViewTextBoxColumn1, Me.DataGridViewTextBoxColumn2, Me.DataGridViewTextBoxColumn3, Me.Column5})
        Me.dgvCharges.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgvCharges.Location = New System.Drawing.Point(0, 0)
        Me.dgvCharges.Name = "dgvCharges"
        Me.dgvCharges.ReadOnly = True
        Me.dgvCharges.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgvCharges.Size = New System.Drawing.Size(852, 273)
        Me.dgvCharges.TabIndex = 4
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.HeaderText = "No."
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        Me.DataGridViewTextBoxColumn1.ReadOnly = True
        '
        'DataGridViewTextBoxColumn2
        '
        Me.DataGridViewTextBoxColumn2.HeaderText = "Particulars"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        Me.DataGridViewTextBoxColumn2.ReadOnly = True
        Me.DataGridViewTextBoxColumn2.Width = 220
        '
        'DataGridViewTextBoxColumn3
        '
        Me.DataGridViewTextBoxColumn3.HeaderText = "Amount"
        Me.DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        Me.DataGridViewTextBoxColumn3.ReadOnly = True
        '
        'Column5
        '
        Me.Column5.HeaderText = "Due Applied"
        Me.Column5.Name = "Column5"
        Me.Column5.ReadOnly = True
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.StatusStrip3)
        Me.TabPage3.Controls.Add(Me.dgvPD)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(852, 273)
        Me.TabPage3.TabIndex = 1
        Me.TabPage3.Text = "Payment Due"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'StatusStrip3
        '
        Me.StatusStrip3.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel14, Me.lblChargeDesc, Me.ToolStripStatusLabel12, Me.lblTotAmount, Me.ToolStripStatusLabel4, Me.lblTotApp, Me.ToolStripStatusLabel3, Me.lblCountPD, Me.ToolStripStatusLabel10, Me.ToolStripStatusLabel11})
        Me.StatusStrip3.Location = New System.Drawing.Point(3, 241)
        Me.StatusStrip3.Name = "StatusStrip3"
        Me.StatusStrip3.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip3.Size = New System.Drawing.Size(846, 29)
        Me.StatusStrip3.TabIndex = 6
        Me.StatusStrip3.Text = "StatusStrip3"
        '
        'ToolStripStatusLabel14
        '
        Me.ToolStripStatusLabel14.Name = "ToolStripStatusLabel14"
        Me.ToolStripStatusLabel14.Size = New System.Drawing.Size(108, 24)
        Me.ToolStripStatusLabel14.Text = "Charge Description"
        '
        'lblChargeDesc
        '
        Me.lblChargeDesc.MergeIndex = 1
        Me.lblChargeDesc.Name = "lblChargeDesc"
        Me.lblChargeDesc.Size = New System.Drawing.Size(0, 24)
        '
        'ToolStripStatusLabel12
        '
        Me.ToolStripStatusLabel12.Name = "ToolStripStatusLabel12"
        Me.ToolStripStatusLabel12.Size = New System.Drawing.Size(132, 24)
        Me.ToolStripStatusLabel12.Text = "Total Amount Charges :"
        '
        'lblTotAmount
        '
        Me.lblTotAmount.MergeIndex = 1
        Me.lblTotAmount.Name = "lblTotAmount"
        Me.lblTotAmount.Size = New System.Drawing.Size(13, 24)
        Me.lblTotAmount.Text = "0"
        '
        'ToolStripStatusLabel4
        '
        Me.ToolStripStatusLabel4.Name = "ToolStripStatusLabel4"
        Me.ToolStripStatusLabel4.Size = New System.Drawing.Size(103, 24)
        Me.ToolStripStatusLabel4.Text = "Total Apllied Due :"
        '
        'lblTotApp
        '
        Me.lblTotApp.MergeIndex = 1
        Me.lblTotApp.Name = "lblTotApp"
        Me.lblTotApp.Size = New System.Drawing.Size(13, 24)
        Me.lblTotApp.Text = "0"
        '
        'ToolStripStatusLabel3
        '
        Me.ToolStripStatusLabel3.Name = "ToolStripStatusLabel3"
        Me.ToolStripStatusLabel3.Size = New System.Drawing.Size(76, 24)
        Me.ToolStripStatusLabel3.Text = "No. Count's :"
        '
        'lblCountPD
        '
        Me.lblCountPD.MergeIndex = 1
        Me.lblCountPD.Name = "lblCountPD"
        Me.lblCountPD.Size = New System.Drawing.Size(13, 24)
        Me.lblCountPD.Text = "0"
        '
        'ToolStripStatusLabel10
        '
        Me.ToolStripStatusLabel10.BorderSides = CType((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom), System.Windows.Forms.ToolStripStatusLabelBorderSides)
        Me.ToolStripStatusLabel10.BorderStyle = System.Windows.Forms.Border3DStyle.Raised
        Me.ToolStripStatusLabel10.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.ToolStripStatusLabel10.Font = New System.Drawing.Font("Segoe UI", 11.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel10.Name = "ToolStripStatusLabel10"
        Me.ToolStripStatusLabel10.Padding = New System.Windows.Forms.Padding(0, 0, 25, 0)
        Me.ToolStripStatusLabel10.Size = New System.Drawing.Size(49, 24)
        Me.ToolStripStatusLabel10.Text = "+"
        '
        'ToolStripStatusLabel11
        '
        Me.ToolStripStatusLabel11.BorderSides = CType((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) _
                    Or System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom), System.Windows.Forms.ToolStripStatusLabelBorderSides)
        Me.ToolStripStatusLabel11.BorderStyle = System.Windows.Forms.Border3DStyle.Raised
        Me.ToolStripStatusLabel11.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.ToolStripStatusLabel11.Font = New System.Drawing.Font("Segoe UI", 11.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel11.Name = "ToolStripStatusLabel11"
        Me.ToolStripStatusLabel11.Padding = New System.Windows.Forms.Padding(0, 0, 25, 0)
        Me.ToolStripStatusLabel11.Size = New System.Drawing.Size(44, 24)
        Me.ToolStripStatusLabel11.Text = "-"
        '
        'dgvPD
        '
        Me.dgvPD.AllowUserToAddRows = False
        Me.dgvPD.AllowUserToDeleteRows = False
        Me.dgvPD.AllowUserToResizeRows = False
        Me.dgvPD.BackgroundColor = System.Drawing.Color.White
        Me.dgvPD.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvPD.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DataGridViewTextBoxColumn4, Me.DataGridViewTextBoxColumn5, Me.DataGridViewTextBoxColumn6})
        Me.dgvPD.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgvPD.Location = New System.Drawing.Point(3, 3)
        Me.dgvPD.Name = "dgvPD"
        Me.dgvPD.ReadOnly = True
        Me.dgvPD.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgvPD.Size = New System.Drawing.Size(846, 267)
        Me.dgvPD.TabIndex = 5
        '
        'DataGridViewTextBoxColumn4
        '
        Me.DataGridViewTextBoxColumn4.HeaderText = "No."
        Me.DataGridViewTextBoxColumn4.Name = "DataGridViewTextBoxColumn4"
        Me.DataGridViewTextBoxColumn4.ReadOnly = True
        '
        'DataGridViewTextBoxColumn5
        '
        Me.DataGridViewTextBoxColumn5.HeaderText = "Description"
        Me.DataGridViewTextBoxColumn5.Name = "DataGridViewTextBoxColumn5"
        Me.DataGridViewTextBoxColumn5.ReadOnly = True
        Me.DataGridViewTextBoxColumn5.Width = 220
        '
        'DataGridViewTextBoxColumn6
        '
        Me.DataGridViewTextBoxColumn6.HeaderText = "Due Date"
        Me.DataGridViewTextBoxColumn6.Name = "DataGridViewTextBoxColumn6"
        Me.DataGridViewTextBoxColumn6.ReadOnly = True
        Me.DataGridViewTextBoxColumn6.Width = 140
        '
        'frmSchoolYearBuild
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(866, 370)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.btnSave)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "frmSchoolYearBuild"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "School Year Build up Information"
        Me.GroupBox1.ResumeLayout(False)
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        CType(Me.dgvSec, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        Me.StatusStrip2.ResumeLayout(False)
        Me.StatusStrip2.PerformLayout()
        CType(Me.dgvCharges, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage3.ResumeLayout(False)
        Me.TabPage3.PerformLayout()
        Me.StatusStrip3.ResumeLayout(False)
        Me.StatusStrip3.PerformLayout()
        CType(Me.dgvPD, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents btnSave As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents lblCountSec As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents dgvSec As System.Windows.Forms.DataGridView
    Friend WithEvents Column4 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents dgvCharges As System.Windows.Forms.DataGridView
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents dgvPD As System.Windows.Forms.DataGridView
    Friend WithEvents DataGridViewTextBoxColumn4 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn5 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn6 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ToolStripStatusLabel6 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel7 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents StatusStrip2 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel2 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents lblCountCharges As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel8 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel9 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents StatusStrip3 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel4 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents lblCountPD As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel10 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel11 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column5 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ToolStripStatusLabel14 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents lblChargeDesc As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel12 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents lblTotAmount As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents lblTotApp As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel3 As System.Windows.Forms.ToolStripStatusLabel
End Class
