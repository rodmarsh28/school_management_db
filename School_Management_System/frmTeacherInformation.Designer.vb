<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmTeacherInformation
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmTeacherInformation))
        Me.ln = New System.Windows.Forms.TextBox()
        Me.addr = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnSave = New System.Windows.Forms.Button()
        Me.btnCancel = New System.Windows.Forms.Button()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.txtID = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.fn = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.mi = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cmbGen = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.dtpBD = New System.Windows.Forms.DateTimePicker()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.bp = New System.Windows.Forms.TextBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.mName = New System.Windows.Forms.TextBox()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.fName = New System.Windows.Forms.TextBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.cPersonName = New System.Windows.Forms.TextBox()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.cPersonCN = New System.Windows.Forms.TextBox()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.cn = New System.Windows.Forms.TextBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.chkInactive = New System.Windows.Forms.CheckBox()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'ln
        '
        Me.ln.Location = New System.Drawing.Point(12, 111)
        Me.ln.Name = "ln"
        Me.ln.Size = New System.Drawing.Size(162, 20)
        Me.ln.TabIndex = 2
        '
        'addr
        '
        Me.addr.Location = New System.Drawing.Point(11, 150)
        Me.addr.Name = "addr"
        Me.addr.Size = New System.Drawing.Size(378, 20)
        Me.addr.TabIndex = 3
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(13, 92)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(53, 13)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Lastname"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(11, 134)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(45, 13)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "Address"
        '
        'btnSave
        '
        Me.btnSave.Location = New System.Drawing.Point(101, 388)
        Me.btnSave.Name = "btnSave"
        Me.btnSave.Size = New System.Drawing.Size(94, 43)
        Me.btnSave.TabIndex = 10
        Me.btnSave.Text = "Save"
        Me.btnSave.UseVisualStyleBackColor = True
        '
        'btnCancel
        '
        Me.btnCancel.Location = New System.Drawing.Point(201, 388)
        Me.btnCancel.Name = "btnCancel"
        Me.btnCancel.Size = New System.Drawing.Size(94, 43)
        Me.btnCancel.TabIndex = 11
        Me.btnCancel.Text = "Cancel"
        Me.btnCancel.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(13, 19)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(61, 13)
        Me.Label5.TabIndex = 15
        Me.Label5.Text = "Teacher ID"
        '
        'txtID
        '
        Me.txtID.Enabled = False
        Me.txtID.Location = New System.Drawing.Point(12, 38)
        Me.txtID.Name = "txtID"
        Me.txtID.Size = New System.Drawing.Size(100, 20)
        Me.txtID.TabIndex = 14
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(177, 92)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(52, 13)
        Me.Label4.TabIndex = 17
        Me.Label4.Text = "Firstname"
        '
        'fn
        '
        Me.fn.Location = New System.Drawing.Point(180, 111)
        Me.fn.Name = "fn"
        Me.fn.Size = New System.Drawing.Size(152, 20)
        Me.fn.TabIndex = 16
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(335, 92)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(25, 13)
        Me.Label6.TabIndex = 19
        Me.Label6.Text = "M.I."
        '
        'mi
        '
        Me.mi.Location = New System.Drawing.Point(338, 111)
        Me.mi.Name = "mi"
        Me.mi.Size = New System.Drawing.Size(51, 20)
        Me.mi.TabIndex = 18
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(9, 176)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(42, 13)
        Me.Label3.TabIndex = 21
        Me.Label3.Text = "Gender"
        '
        'cmbGen
        '
        Me.cmbGen.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbGen.FormattingEnabled = True
        Me.cmbGen.Items.AddRange(New Object() {"Male", "Female"})
        Me.cmbGen.Location = New System.Drawing.Point(11, 192)
        Me.cmbGen.Name = "cmbGen"
        Me.cmbGen.Size = New System.Drawing.Size(101, 21)
        Me.cmbGen.TabIndex = 20
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(119, 176)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(54, 13)
        Me.Label7.TabIndex = 22
        Me.Label7.Text = "Birth Date"
        '
        'dtpBD
        '
        Me.dtpBD.CustomFormat = "MMMM dd, yyyy"
        Me.dtpBD.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtpBD.Location = New System.Drawing.Point(122, 192)
        Me.dtpBD.Name = "dtpBD"
        Me.dtpBD.Size = New System.Drawing.Size(141, 20)
        Me.dtpBD.TabIndex = 23
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(11, 216)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(58, 13)
        Me.Label8.TabIndex = 25
        Me.Label8.Text = "Birth Place"
        '
        'bp
        '
        Me.bp.Location = New System.Drawing.Point(11, 232)
        Me.bp.Name = "bp"
        Me.bp.Size = New System.Drawing.Size(378, 20)
        Me.bp.TabIndex = 24
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(13, 255)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(122, 13)
        Me.Label9.TabIndex = 27
        Me.Label9.Text = "Mother's Name (Maiden)"
        '
        'mName
        '
        Me.mName.Location = New System.Drawing.Point(13, 271)
        Me.mName.Name = "mName"
        Me.mName.Size = New System.Drawing.Size(376, 20)
        Me.mName.TabIndex = 26
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(13, 293)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(75, 13)
        Me.Label10.TabIndex = 29
        Me.Label10.Text = "Father's Name"
        '
        'fName
        '
        Me.fName.Location = New System.Drawing.Point(13, 309)
        Me.fName.Name = "fName"
        Me.fName.Size = New System.Drawing.Size(376, 20)
        Me.fName.TabIndex = 28
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(14, 332)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(183, 13)
        Me.Label11.TabIndex = 31
        Me.Label11.Text = "Contact Person Incase of Emergency"
        '
        'cPersonName
        '
        Me.cPersonName.Location = New System.Drawing.Point(14, 348)
        Me.cPersonName.Name = "cPersonName"
        Me.cPersonName.Size = New System.Drawing.Size(239, 20)
        Me.cPersonName.TabIndex = 30
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(262, 332)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(122, 13)
        Me.Label12.TabIndex = 33
        Me.Label12.Text = "Contact / Cellphone No."
        '
        'cPersonCN
        '
        Me.cPersonCN.Location = New System.Drawing.Point(263, 348)
        Me.cPersonCN.Name = "cPersonCN"
        Me.cPersonCN.Size = New System.Drawing.Size(126, 20)
        Me.cPersonCN.TabIndex = 32
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(268, 175)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(122, 13)
        Me.Label15.TabIndex = 39
        Me.Label15.Text = "Contact / Cellphone No."
        '
        'cn
        '
        Me.cn.Location = New System.Drawing.Point(268, 191)
        Me.cn.Name = "cn"
        Me.cn.Size = New System.Drawing.Size(122, 20)
        Me.cn.TabIndex = 38
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(308, 7)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(77, 77)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 40
        Me.PictureBox1.TabStop = False
        '
        'chkInactive
        '
        Me.chkInactive.AutoSize = True
        Me.chkInactive.Location = New System.Drawing.Point(125, 38)
        Me.chkInactive.Name = "chkInactive"
        Me.chkInactive.Size = New System.Drawing.Size(107, 17)
        Me.chkInactive.TabIndex = 41
        Me.chkInactive.Text = "Inactive Teacher"
        Me.chkInactive.UseVisualStyleBackColor = True
        '
        'frmTeacherInformation
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(402, 445)
        Me.Controls.Add(Me.chkInactive)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.Label15)
        Me.Controls.Add(Me.cn)
        Me.Controls.Add(Me.Label12)
        Me.Controls.Add(Me.cPersonCN)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.cPersonName)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.fName)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.mName)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.bp)
        Me.Controls.Add(Me.dtpBD)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.cmbGen)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.mi)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.fn)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.txtID)
        Me.Controls.Add(Me.btnCancel)
        Me.Controls.Add(Me.btnSave)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.addr)
        Me.Controls.Add(Me.ln)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmTeacherInformation"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Teacher's Information"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ln As System.Windows.Forms.TextBox
    Friend WithEvents addr As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents btnSave As System.Windows.Forms.Button
    Friend WithEvents btnCancel As System.Windows.Forms.Button
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents txtID As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents fn As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents mi As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmbGen As System.Windows.Forms.ComboBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents dtpBD As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents bp As System.Windows.Forms.TextBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents mName As System.Windows.Forms.TextBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents fName As System.Windows.Forms.TextBox
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents cPersonName As System.Windows.Forms.TextBox
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents cPersonCN As System.Windows.Forms.TextBox
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents cn As System.Windows.Forms.TextBox
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents chkInactive As System.Windows.Forms.CheckBox
End Class
