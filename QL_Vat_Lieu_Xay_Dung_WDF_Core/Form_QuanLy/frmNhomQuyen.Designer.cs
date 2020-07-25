namespace QL_Vat_Lieu_Xay_Dung_WDF_Core
{
    partial class frmNhomQuyen
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        ///
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.layoutControl = new DevExpress.XtraLayout.LayoutControl();
            this.layoutControlGroup = new DevExpress.XtraLayout.LayoutControlGroup();
            this.xtraSaveFileDialog1 = new DevExpress.XtraEditors.XtraSaveFileDialog(this.components);
            this.gv_NhomQuyen = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.datagv_NhomQuyen = new DevExpress.XtraGrid.GridControl();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.stackPanel1 = new DevExpress.Utils.Layout.StackPanel();
            this.btnTimKiem = new DevExpress.XtraEditors.SimpleButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtNhomQuyen = new DevExpress.XtraEditors.TextEdit();
            this.txtMoTa = new DevExpress.XtraEditors.TextEdit();
            this.lblNhomQuyen = new DevExpress.XtraEditors.LabelControl();
            this.lblMota = new DevExpress.XtraEditors.LabelControl();
            this.xtraOpenFileDialog1 = new DevExpress.XtraEditors.XtraOpenFileDialog(this.components);
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl)).BeginInit();
            this.layoutControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_NhomQuyen)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.datagv_NhomQuyen)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.stackPanel1)).BeginInit();
            this.stackPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtNhomQuyen.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMoTa.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            this.SuspendLayout();
            // 
            // layoutControl
            // 
            this.layoutControl.AllowCustomization = false;
            this.layoutControl.Controls.Add(this.tablePanel1);
            this.layoutControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl.Location = new System.Drawing.Point(0, 0);
            this.layoutControl.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.layoutControl.Name = "layoutControl";
            this.layoutControl.Root = this.layoutControlGroup;
            this.layoutControl.Size = new System.Drawing.Size(1028, 749);
            this.layoutControl.TabIndex = 1;
            // 
            // layoutControlGroup
            // 
            this.layoutControlGroup.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.layoutControlGroup.GroupBordersVisible = false;
            this.layoutControlGroup.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem1});
            this.layoutControlGroup.Name = "layoutControlGroup";
            this.layoutControlGroup.Padding = new DevExpress.XtraLayout.Utils.Padding(20, 20, 0, 0);
            this.layoutControlGroup.Size = new System.Drawing.Size(1028, 749);
            this.layoutControlGroup.TextVisible = false;
            // 
            // xtraSaveFileDialog1
            // 
            this.xtraSaveFileDialog1.FileName = "xtraSaveFileDialog1";
            // 
            // gv_NhomQuyen
            // 
            this.gv_NhomQuyen.GridControl = this.datagv_NhomQuyen;
            this.gv_NhomQuyen.Name = "gv_NhomQuyen";
            // 
            // datagv_NhomQuyen
            // 
            this.tablePanel1.SetColumn(this.datagv_NhomQuyen, 0);
            this.datagv_NhomQuyen.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagv_NhomQuyen.Location = new System.Drawing.Point(3, 123);
            this.datagv_NhomQuyen.MainView = this.gv_NhomQuyen;
            this.datagv_NhomQuyen.Name = "datagv_NhomQuyen";
            this.tablePanel1.SetRow(this.datagv_NhomQuyen, 1);
            this.datagv_NhomQuyen.Size = new System.Drawing.Size(736, 619);
            this.datagv_NhomQuyen.TabIndex = 3;
            this.datagv_NhomQuyen.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gv_NhomQuyen});
            // 
            // btnThem
            // 
            this.btnThem.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThem.Appearance.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnThem.Appearance.Options.UseFont = true;
            this.btnThem.Appearance.Options.UseForeColor = true;
            this.btnThem.Appearance.Options.UseTextOptions = true;
            this.btnThem.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnThem.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnThem.ImageOptions.SvgImage = global::QL_Vat_Lieu_Xay_Dung_WDF_Core.Properties.Resources.addparameter;
            this.btnThem.Location = new System.Drawing.Point(16, 3);
            this.btnThem.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnThem.Name = "btnThem";
            this.btnThem.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnThem.Size = new System.Drawing.Size(204, 68);
            this.btnThem.TabIndex = 2;
            this.btnThem.Text = "Tạo mới hoá đơn";
            // 
            // btnSua
            // 
            this.btnSua.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSua.Appearance.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnSua.Appearance.Options.UseFont = true;
            this.btnSua.Appearance.Options.UseForeColor = true;
            this.btnSua.Appearance.Options.UseTextOptions = true;
            this.btnSua.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnSua.ImageOptions.Image = global::QL_Vat_Lieu_Xay_Dung_WDF_Core.Properties.Resources.edittask_32x32;
            this.btnSua.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnSua.Location = new System.Drawing.Point(16, 77);
            this.btnSua.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnSua.Name = "btnSua";
            this.btnSua.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnSua.Size = new System.Drawing.Size(203, 64);
            this.btnSua.TabIndex = 3;
            this.btnSua.Text = "Chỉnh sửa hoá đơn";
            // 
            // btnXoa
            // 
            this.btnXoa.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoa.Appearance.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnXoa.Appearance.Options.UseFont = true;
            this.btnXoa.Appearance.Options.UseForeColor = true;
            this.btnXoa.Appearance.Options.UseTextOptions = true;
            this.btnXoa.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnXoa.ImageOptions.Image = global::QL_Vat_Lieu_Xay_Dung_WDF_Core.Properties.Resources.removepivotfield_32x32;
            this.btnXoa.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnXoa.Location = new System.Drawing.Point(20, 147);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnXoa.Size = new System.Drawing.Size(196, 68);
            this.btnXoa.TabIndex = 4;
            this.btnXoa.Text = "Xoá hoá đơn";
            // 
            // tablePanel1
            // 
            this.tablePanel1.Appearance.BackColor = System.Drawing.Color.White;
            this.tablePanel1.Appearance.Options.UseBackColor = true;
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 79.23F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 25.77F)});
            this.tablePanel1.Controls.Add(this.datagv_NhomQuyen);
            this.tablePanel1.Controls.Add(this.stackPanel1);
            this.tablePanel1.Controls.Add(this.panel1);
            this.tablePanel1.Location = new System.Drawing.Point(22, 2);
            this.tablePanel1.Margin = new System.Windows.Forms.Padding(15);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 120F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 551.1997F)});
            this.tablePanel1.Size = new System.Drawing.Size(984, 745);
            this.tablePanel1.TabIndex = 4;
            // 
            // stackPanel1
            // 
            this.stackPanel1.Appearance.BackColor = System.Drawing.Color.White;
            this.stackPanel1.Appearance.Options.UseBackColor = true;
            this.tablePanel1.SetColumn(this.stackPanel1, 1);
            this.stackPanel1.Controls.Add(this.btnThem);
            this.stackPanel1.Controls.Add(this.btnSua);
            this.stackPanel1.Controls.Add(this.btnXoa);
            this.stackPanel1.Controls.Add(this.btnTimKiem);
            this.stackPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stackPanel1.LayoutDirection = DevExpress.Utils.Layout.StackPanelLayoutDirection.TopDown;
            this.stackPanel1.Location = new System.Drawing.Point(745, 3);
            this.stackPanel1.Name = "stackPanel1";
            this.tablePanel1.SetRow(this.stackPanel1, 0);
            this.tablePanel1.SetRowSpan(this.stackPanel1, 2);
            this.stackPanel1.Size = new System.Drawing.Size(236, 739);
            this.stackPanel1.TabIndex = 2;
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.Appearance.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnTimKiem.Appearance.Options.UseFont = true;
            this.btnTimKiem.Appearance.Options.UseForeColor = true;
            this.btnTimKiem.Appearance.Options.UseTextOptions = true;
            this.btnTimKiem.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnTimKiem.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnTimKiem.ImageOptions.SvgImage = global::QL_Vat_Lieu_Xay_Dung_WDF_Core.Properties.Resources.actions_zoom;
            this.btnTimKiem.Location = new System.Drawing.Point(20, 221);
            this.btnTimKiem.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnTimKiem.Size = new System.Drawing.Size(196, 68);
            this.btnTimKiem.TabIndex = 5;
            this.btnTimKiem.Text = "Tìm kiếm";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightSkyBlue;
            this.tablePanel1.SetColumn(this.panel1, 0);
            this.panel1.Controls.Add(this.txtNhomQuyen);
            this.panel1.Controls.Add(this.txtMoTa);
            this.panel1.Controls.Add(this.lblNhomQuyen);
            this.panel1.Controls.Add(this.lblMota);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(0);
            this.panel1.Name = "panel1";
            this.tablePanel1.SetRow(this.panel1, 0);
            this.panel1.Size = new System.Drawing.Size(742, 120);
            this.panel1.TabIndex = 0;
            // 
            // txtNhomQuyen
            // 
            this.txtNhomQuyen.Location = new System.Drawing.Point(195, 19);
            this.txtNhomQuyen.Name = "txtNhomQuyen";
            this.txtNhomQuyen.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNhomQuyen.Properties.Appearance.Options.UseFont = true;
            this.txtNhomQuyen.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtNhomQuyen.Size = new System.Drawing.Size(415, 30);
            this.txtNhomQuyen.TabIndex = 6;
            // 
            // txtMoTa
            // 
            this.txtMoTa.Location = new System.Drawing.Point(195, 64);
            this.txtMoTa.Name = "txtMoTa";
            this.txtMoTa.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMoTa.Properties.Appearance.Options.UseFont = true;
            this.txtMoTa.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtMoTa.Size = new System.Drawing.Size(415, 30);
            this.txtMoTa.TabIndex = 6;
            // 
            // lblNhomQuyen
            // 
            this.lblNhomQuyen.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNhomQuyen.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblNhomQuyen.Appearance.Options.UseFont = true;
            this.lblNhomQuyen.Appearance.Options.UseForeColor = true;
            this.lblNhomQuyen.Location = new System.Drawing.Point(58, 23);
            this.lblNhomQuyen.Name = "lblNhomQuyen";
            this.lblNhomQuyen.Size = new System.Drawing.Size(98, 21);
            this.lblNhomQuyen.TabIndex = 5;
            this.lblNhomQuyen.Text = "Nhớm uyền";
            // 
            // lblMota
            // 
            this.lblMota.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMota.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblMota.Appearance.Options.UseFont = true;
            this.lblMota.Appearance.Options.UseForeColor = true;
            this.lblMota.Location = new System.Drawing.Point(58, 68);
            this.lblMota.Name = "lblMota";
            this.lblMota.Size = new System.Drawing.Size(48, 21);
            this.lblMota.TabIndex = 5;
            this.lblMota.Text = "Mô tả";
            // 
            // xtraOpenFileDialog1
            // 
            this.xtraOpenFileDialog1.FileName = "xtraOpenFileDialog1";
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.Control = this.tablePanel1;
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(988, 749);
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextVisible = false;
            // 
            // frmNhomQuyen
            // 
            this.Appearance.BackColor = System.Drawing.Color.White;
            this.Appearance.Options.UseBackColor = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1028, 749);
            this.Controls.Add(this.layoutControl);
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmNhomQuyen";
            this.Text = "Form Nhóm quyền";
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl)).EndInit();
            this.layoutControl.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_NhomQuyen)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.datagv_NhomQuyen)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.stackPanel1)).EndInit();
            this.stackPanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtNhomQuyen.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMoTa.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraLayout.LayoutControl layoutControl;
        private DevExpress.XtraLayout.LayoutControlGroup layoutControlGroup;
        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraGrid.GridControl datagv_NhomQuyen;
        private DevExpress.XtraGrid.Views.Grid.GridView gv_NhomQuyen;
        private DevExpress.Utils.Layout.StackPanel stackPanel1;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnTimKiem;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.TextEdit txtNhomQuyen;
        private DevExpress.XtraEditors.TextEdit txtMoTa;
        private DevExpress.XtraEditors.LabelControl lblNhomQuyen;
        private DevExpress.XtraEditors.LabelControl lblMota;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraEditors.XtraSaveFileDialog xtraSaveFileDialog1;
        private DevExpress.XtraEditors.XtraOpenFileDialog xtraOpenFileDialog1;
    }
}