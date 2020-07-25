namespace QL_Vat_Lieu_Xay_Dung_WinFormApp
{
    partial class frmDanhMucHangHoa
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
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtMaDanhMuc = new DevExpress.XtraEditors.TextEdit();
            this.txtTenDanhMuc = new DevExpress.XtraEditors.TextEdit();
            this.lblMaDanhMuc = new DevExpress.XtraEditors.LabelControl();
            this.lblTenDanhMuc = new DevExpress.XtraEditors.LabelControl();
            this.lblHinhAnh = new DevExpress.XtraEditors.LabelControl();
            this.lblTrangThai = new DevExpress.XtraEditors.LabelControl();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.btnTimKiem = new DevExpress.XtraEditors.SimpleButton();
            this.stackPanel1 = new DevExpress.Utils.Layout.StackPanel();
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnUpload = new DevExpress.XtraEditors.SimpleButton();
            this.lblURL = new System.Windows.Forms.Label();
            this.cbMaDanhMucCha = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblDanhMucCha = new DevExpress.XtraEditors.LabelControl();
            this.xtraOpenFileDialog1 = new DevExpress.XtraEditors.XtraOpenFileDialog(this.components);
            this.xtraSaveFileDialog1 = new DevExpress.XtraEditors.XtraSaveFileDialog(this.components);
            this.cbTrangThai = new DevExpress.XtraEditors.ComboBoxEdit();
            this.datagv_DanhMuc = new DevExpress.XtraGrid.GridControl();
            this.gv_DanhMuc = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaDanhMuc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTenDanhMuc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.stackPanel1)).BeginInit();
            this.stackPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbMaDanhMucCha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTrangThai.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.datagv_DanhMuc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_DanhMuc)).BeginInit();
            this.SuspendLayout();
            // 
            // txtMaDanhMuc
            // 
            this.txtMaDanhMuc.Location = new System.Drawing.Point(166, 31);
            this.txtMaDanhMuc.Name = "txtMaDanhMuc";
            this.txtMaDanhMuc.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaDanhMuc.Properties.Appearance.Options.UseFont = true;
            this.txtMaDanhMuc.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtMaDanhMuc.Size = new System.Drawing.Size(277, 30);
            this.txtMaDanhMuc.TabIndex = 6;
            // 
            // txtTenDanhMuc
            // 
            this.txtTenDanhMuc.Location = new System.Drawing.Point(166, 76);
            this.txtTenDanhMuc.Name = "txtTenDanhMuc";
            this.txtTenDanhMuc.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenDanhMuc.Properties.Appearance.Options.UseFont = true;
            this.txtTenDanhMuc.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtTenDanhMuc.Size = new System.Drawing.Size(277, 30);
            this.txtTenDanhMuc.TabIndex = 6;
            // 
            // lblMaDanhMuc
            // 
            this.lblMaDanhMuc.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaDanhMuc.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblMaDanhMuc.Appearance.Options.UseFont = true;
            this.lblMaDanhMuc.Appearance.Options.UseForeColor = true;
            this.lblMaDanhMuc.Location = new System.Drawing.Point(29, 35);
            this.lblMaDanhMuc.Name = "lblMaDanhMuc";
            this.lblMaDanhMuc.Size = new System.Drawing.Size(114, 21);
            this.lblMaDanhMuc.TabIndex = 5;
            this.lblMaDanhMuc.Text = "Mã danh mục";
            // 
            // lblTenDanhMuc
            // 
            this.lblTenDanhMuc.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenDanhMuc.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblTenDanhMuc.Appearance.Options.UseFont = true;
            this.lblTenDanhMuc.Appearance.Options.UseForeColor = true;
            this.lblTenDanhMuc.Location = new System.Drawing.Point(29, 80);
            this.lblTenDanhMuc.Name = "lblTenDanhMuc";
            this.lblTenDanhMuc.Size = new System.Drawing.Size(120, 21);
            this.lblTenDanhMuc.TabIndex = 5;
            this.lblTenDanhMuc.Text = "Tên danh mục";
            // 
            // lblHinhAnh
            // 
            this.lblHinhAnh.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHinhAnh.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblHinhAnh.Appearance.Options.UseFont = true;
            this.lblHinhAnh.Appearance.Options.UseForeColor = true;
            this.lblHinhAnh.Location = new System.Drawing.Point(472, 83);
            this.lblHinhAnh.Name = "lblHinhAnh";
            this.lblHinhAnh.Size = new System.Drawing.Size(77, 21);
            this.lblHinhAnh.TabIndex = 2;
            this.lblHinhAnh.Text = "Hình ảnh";
            // 
            // lblTrangThai
            // 
            this.lblTrangThai.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTrangThai.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblTrangThai.Appearance.Options.UseFont = true;
            this.lblTrangThai.Appearance.Options.UseForeColor = true;
            this.lblTrangThai.Location = new System.Drawing.Point(29, 128);
            this.lblTrangThai.Name = "lblTrangThai";
            this.lblTrangThai.Size = new System.Drawing.Size(87, 21);
            this.lblTrangThai.TabIndex = 0;
            this.lblTrangThai.Text = "Trạng thái";
            // 
            // btnThem
            // 
            this.btnThem.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThem.Appearance.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnThem.Appearance.Options.UseFont = true;
            this.btnThem.Appearance.Options.UseForeColor = true;
            this.btnThem.Appearance.Options.UseTextOptions = true;
            this.btnThem.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnThem.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnThem.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnThem.ImageOptions.SvgImage = global::QL_Vat_Lieu_Xay_Dung_WinFormApp.Properties.Resources.addparameter;
            this.btnThem.Location = new System.Drawing.Point(20, 4);
            this.btnThem.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnThem.Name = "btnThem";
            this.btnThem.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnThem.Size = new System.Drawing.Size(213, 68);
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
            this.btnSua.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnSua.ImageOptions.Image = global::QL_Vat_Lieu_Xay_Dung_WinFormApp.Properties.Resources.edittask_32x32;
            this.btnSua.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnSua.Location = new System.Drawing.Point(273, 6);
            this.btnSua.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnSua.Name = "btnSua";
            this.btnSua.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnSua.Size = new System.Drawing.Size(254, 64);
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
            this.btnXoa.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnXoa.ImageOptions.Image = global::QL_Vat_Lieu_Xay_Dung_WinFormApp.Properties.Resources.removepivotfield_32x32;
            this.btnXoa.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnXoa.Location = new System.Drawing.Point(567, 4);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnXoa.Size = new System.Drawing.Size(197, 68);
            this.btnXoa.TabIndex = 4;
            this.btnXoa.Text = "Xoá hoá đơn";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.Appearance.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnTimKiem.Appearance.Options.UseFont = true;
            this.btnTimKiem.Appearance.Options.UseForeColor = true;
            this.btnTimKiem.Appearance.Options.UseTextOptions = true;
            this.btnTimKiem.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnTimKiem.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnTimKiem.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnTimKiem.ImageOptions.SvgImage = global::QL_Vat_Lieu_Xay_Dung_WinFormApp.Properties.Resources.actions_zoom;
            this.btnTimKiem.Location = new System.Drawing.Point(804, 4);
            this.btnTimKiem.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnTimKiem.Size = new System.Drawing.Size(197, 68);
            this.btnTimKiem.TabIndex = 5;
            this.btnTimKiem.Text = "Tìm kiếm";
            // 
            // stackPanel1
            // 
            this.stackPanel1.Appearance.BackColor = System.Drawing.Color.White;
            this.stackPanel1.Appearance.Options.UseBackColor = true;
            this.tablePanel1.SetColumn(this.stackPanel1, 0);
            this.stackPanel1.Controls.Add(this.btnThem);
            this.stackPanel1.Controls.Add(this.btnSua);
            this.stackPanel1.Controls.Add(this.btnXoa);
            this.stackPanel1.Controls.Add(this.btnTimKiem);
            this.stackPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stackPanel1.Location = new System.Drawing.Point(3, 675);
            this.stackPanel1.Name = "stackPanel1";
            this.tablePanel1.SetRow(this.stackPanel1, 2);
            this.stackPanel1.Size = new System.Drawing.Size(973, 77);
            this.stackPanel1.TabIndex = 2;
            // 
            // tablePanel1
            // 
            this.tablePanel1.Appearance.BackColor = System.Drawing.Color.White;
            this.tablePanel1.Appearance.Options.UseBackColor = true;
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 55F)});
            this.tablePanel1.Controls.Add(this.datagv_DanhMuc);
            this.tablePanel1.Controls.Add(this.stackPanel1);
            this.tablePanel1.Controls.Add(this.panel1);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(0, 0);
            this.tablePanel1.Margin = new System.Windows.Forms.Padding(15);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 211.6004F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 459.5965F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F)});
            this.tablePanel1.Size = new System.Drawing.Size(979, 755);
            this.tablePanel1.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightSkyBlue;
            this.tablePanel1.SetColumn(this.panel1, 0);
            this.panel1.Controls.Add(this.cbTrangThai);
            this.panel1.Controls.Add(this.btnUpload);
            this.panel1.Controls.Add(this.lblURL);
            this.panel1.Controls.Add(this.cbMaDanhMucCha);
            this.panel1.Controls.Add(this.lblDanhMucCha);
            this.panel1.Controls.Add(this.txtMaDanhMuc);
            this.panel1.Controls.Add(this.txtTenDanhMuc);
            this.panel1.Controls.Add(this.lblMaDanhMuc);
            this.panel1.Controls.Add(this.lblTenDanhMuc);
            this.panel1.Controls.Add(this.lblHinhAnh);
            this.panel1.Controls.Add(this.lblTrangThai);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(0);
            this.panel1.Name = "panel1";
            this.tablePanel1.SetRow(this.panel1, 0);
            this.panel1.Size = new System.Drawing.Size(979, 212);
            this.panel1.TabIndex = 0;
            // 
            // btnUpload
            // 
            this.btnUpload.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUpload.Appearance.Options.UseFont = true;
            this.btnUpload.Location = new System.Drawing.Point(804, 124);
            this.btnUpload.Name = "btnUpload";
            this.btnUpload.Size = new System.Drawing.Size(113, 29);
            this.btnUpload.TabIndex = 11;
            this.btnUpload.Text = "Upload File";
            // 
            // lblURL
            // 
            this.lblURL.AutoSize = true;
            this.lblURL.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblURL.ForeColor = System.Drawing.Color.DeepSkyBlue;
            this.lblURL.Location = new System.Drawing.Point(537, 129);
            this.lblURL.Name = "lblURL";
            this.lblURL.Size = new System.Drawing.Size(0, 21);
            this.lblURL.TabIndex = 10;
            // 
            // cbMaDanhMucCha
            // 
            this.cbMaDanhMucCha.Location = new System.Drawing.Point(611, 34);
            this.cbMaDanhMucCha.Name = "cbMaDanhMucCha";
            this.cbMaDanhMucCha.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbMaDanhMucCha.Properties.Appearance.Options.UseFont = true;
            this.cbMaDanhMucCha.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.cbMaDanhMucCha.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbMaDanhMucCha.Size = new System.Drawing.Size(306, 30);
            this.cbMaDanhMucCha.TabIndex = 8;
            // 
            // lblDanhMucCha
            // 
            this.lblDanhMucCha.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDanhMucCha.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblDanhMucCha.Appearance.Options.UseFont = true;
            this.lblDanhMucCha.Appearance.Options.UseForeColor = true;
            this.lblDanhMucCha.Location = new System.Drawing.Point(472, 38);
            this.lblDanhMucCha.Name = "lblDanhMucCha";
            this.lblDanhMucCha.Size = new System.Drawing.Size(121, 21);
            this.lblDanhMucCha.TabIndex = 7;
            this.lblDanhMucCha.Text = "Danh mục cha";
            // 
            // xtraOpenFileDialog1
            // 
            this.xtraOpenFileDialog1.FileName = "xtraOpenFileDialog1";
            // 
            // xtraSaveFileDialog1
            // 
            this.xtraSaveFileDialog1.FileName = "xtraSaveFileDialog1";
            // 
            // cbTrangThai
            // 
            this.cbTrangThai.Location = new System.Drawing.Point(166, 125);
            this.cbTrangThai.Name = "cbTrangThai";
            this.cbTrangThai.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbTrangThai.Properties.Appearance.Options.UseFont = true;
            this.cbTrangThai.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.cbTrangThai.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbTrangThai.Size = new System.Drawing.Size(277, 30);
            this.cbTrangThai.TabIndex = 12;
            // 
            // datagv_DanhMuc
            // 
            this.tablePanel1.SetColumn(this.datagv_DanhMuc, 0);
            this.datagv_DanhMuc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagv_DanhMuc.Location = new System.Drawing.Point(3, 215);
            this.datagv_DanhMuc.MainView = this.gv_DanhMuc;
            this.datagv_DanhMuc.Name = "datagv_DanhMuc";
            this.tablePanel1.SetRow(this.datagv_DanhMuc, 1);
            this.datagv_DanhMuc.Size = new System.Drawing.Size(973, 454);
            this.datagv_DanhMuc.TabIndex = 3;
            this.datagv_DanhMuc.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gv_DanhMuc});
            // 
            // gv_DanhMuc
            // 
            this.gv_DanhMuc.GridControl = this.datagv_DanhMuc;
            this.gv_DanhMuc.Name = "gv_DanhMuc";
            // 
            // frmDanhMucHangHoa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(979, 755);
            this.Controls.Add(this.tablePanel1);
            this.Name = "frmDanhMucHangHoa";
            this.Text = "Danh mục hàng hoá";
            ((System.ComponentModel.ISupportInitialize)(this.txtMaDanhMuc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTenDanhMuc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.stackPanel1)).EndInit();
            this.stackPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbMaDanhMucCha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTrangThai.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.datagv_DanhMuc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_DanhMuc)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private DevExpress.XtraEditors.TextEdit txtMaDanhMuc;
        private DevExpress.XtraEditors.TextEdit txtTenDanhMuc;
        private DevExpress.XtraEditors.LabelControl lblMaDanhMuc;
        private DevExpress.XtraEditors.LabelControl lblTenDanhMuc;
        private DevExpress.XtraEditors.LabelControl lblHinhAnh;
        private DevExpress.XtraEditors.LabelControl lblTrangThai;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnTimKiem;
        private DevExpress.Utils.Layout.StackPanel stackPanel1;
        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.ComboBoxEdit cbMaDanhMucCha;
        private DevExpress.XtraEditors.LabelControl lblDanhMucCha;
        private System.Windows.Forms.Label lblURL;
        private DevExpress.XtraEditors.XtraOpenFileDialog xtraOpenFileDialog1;
        private DevExpress.XtraEditors.XtraSaveFileDialog xtraSaveFileDialog1;
        private DevExpress.XtraEditors.SimpleButton btnUpload;
        private DevExpress.XtraEditors.ComboBoxEdit cbTrangThai;
        private DevExpress.XtraGrid.GridControl datagv_DanhMuc;
        private DevExpress.XtraGrid.Views.Grid.GridView gv_DanhMuc;
    }
}