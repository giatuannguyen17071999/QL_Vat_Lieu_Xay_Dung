﻿namespace QL_Vat_Lieu_Xay_Dung_WinFormApp
{
    partial class frmManHinh
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
            this.xtraSaveFileDialog1 = new DevExpress.XtraEditors.XtraSaveFileDialog(this.components);
            this.cbManHinhCha = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblCha = new DevExpress.XtraEditors.LabelControl();
            this.gv_ManHinh = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.datagv_ManHinh = new DevExpress.XtraGrid.GridControl();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.stackPanel1 = new DevExpress.Utils.Layout.StackPanel();
            this.btnTimKiem = new DevExpress.XtraEditors.SimpleButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtMaManHinh = new DevExpress.XtraEditors.TextEdit();
            this.txtTenManHinh = new DevExpress.XtraEditors.TextEdit();
            this.lblMaManHinh = new DevExpress.XtraEditors.LabelControl();
            this.lblTenManHinh = new DevExpress.XtraEditors.LabelControl();
            this.lblIconCSS = new DevExpress.XtraEditors.LabelControl();
            this.lblURL__ = new DevExpress.XtraEditors.LabelControl();
            this.xtraOpenFileDialog1 = new DevExpress.XtraEditors.XtraOpenFileDialog(this.components);
            this.txtURL_ = new DevExpress.XtraEditors.TextEdit();
            this.txtIconCSS = new DevExpress.XtraEditors.TextEdit();
            this.lblSort = new DevExpress.XtraEditors.LabelControl();
            this.txtSortOrder = new DevExpress.XtraEditors.TextEdit();
            this.toggleSwitchHoatDong = new DevExpress.XtraEditors.ToggleSwitch();
            this.lblHoatDong = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.cbManHinhCha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_ManHinh)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.datagv_ManHinh)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.stackPanel1)).BeginInit();
            this.stackPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaManHinh.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTenManHinh.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtURL_.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIconCSS.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSortOrder.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.toggleSwitchHoatDong.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // xtraSaveFileDialog1
            // 
            this.xtraSaveFileDialog1.FileName = "xtraSaveFileDialog1";
            // 
            // cbManHinhCha
            // 
            this.cbManHinhCha.Location = new System.Drawing.Point(611, 34);
            this.cbManHinhCha.Name = "cbManHinhCha";
            this.cbManHinhCha.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbManHinhCha.Properties.Appearance.Options.UseFont = true;
            this.cbManHinhCha.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.cbManHinhCha.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbManHinhCha.Size = new System.Drawing.Size(306, 30);
            this.cbManHinhCha.TabIndex = 8;
            // 
            // lblCha
            // 
            this.lblCha.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCha.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblCha.Appearance.Options.UseFont = true;
            this.lblCha.Appearance.Options.UseForeColor = true;
            this.lblCha.Location = new System.Drawing.Point(472, 38);
            this.lblCha.Name = "lblCha";
            this.lblCha.Size = new System.Drawing.Size(114, 21);
            this.lblCha.TabIndex = 7;
            this.lblCha.Text = "Màn hình cha";
            // 
            // gv_ManHinh
            // 
            this.gv_ManHinh.GridControl = this.datagv_ManHinh;
            this.gv_ManHinh.Name = "gv_ManHinh";
            // 
            // datagv_ManHinh
            // 
            this.tablePanel1.SetColumn(this.datagv_ManHinh, 0);
            this.datagv_ManHinh.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagv_ManHinh.Location = new System.Drawing.Point(3, 215);
            this.datagv_ManHinh.MainView = this.gv_ManHinh;
            this.datagv_ManHinh.Name = "datagv_ManHinh";
            this.tablePanel1.SetRow(this.datagv_ManHinh, 1);
            this.datagv_ManHinh.Size = new System.Drawing.Size(961, 529);
            this.datagv_ManHinh.TabIndex = 3;
            this.datagv_ManHinh.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gv_ManHinh});
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
            this.btnThem.Location = new System.Drawing.Point(14, 3);
            this.btnThem.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnThem.Name = "btnThem";
            this.btnThem.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnThem.Size = new System.Drawing.Size(202, 68);
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
            this.btnSua.Location = new System.Drawing.Point(13, 77);
            this.btnSua.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnSua.Name = "btnSua";
            this.btnSua.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnSua.Size = new System.Drawing.Size(204, 64);
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
            this.btnXoa.Location = new System.Drawing.Point(16, 147);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnXoa.Size = new System.Drawing.Size(198, 68);
            this.btnXoa.TabIndex = 4;
            this.btnXoa.Text = "Xoá hoá đơn";
            // 
            // tablePanel1
            // 
            this.tablePanel1.Appearance.BackColor = System.Drawing.Color.White;
            this.tablePanel1.Appearance.Options.UseBackColor = true;
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 84.31F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 20.69F)});
            this.tablePanel1.Controls.Add(this.datagv_ManHinh);
            this.tablePanel1.Controls.Add(this.stackPanel1);
            this.tablePanel1.Controls.Add(this.panel1);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(20, 0);
            this.tablePanel1.Margin = new System.Windows.Forms.Padding(15);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 211.6004F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 459.5965F)});
            this.tablePanel1.Size = new System.Drawing.Size(1204, 747);
            this.tablePanel1.TabIndex = 2;
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
            this.stackPanel1.Location = new System.Drawing.Point(970, 3);
            this.stackPanel1.Name = "stackPanel1";
            this.tablePanel1.SetRow(this.stackPanel1, 0);
            this.tablePanel1.SetRowSpan(this.stackPanel1, 2);
            this.stackPanel1.Size = new System.Drawing.Size(231, 741);
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
            this.btnTimKiem.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnTimKiem.ImageOptions.ImageToTextAlignment = DevExpress.XtraEditors.ImageAlignToText.LeftCenter;
            this.btnTimKiem.ImageOptions.SvgImage = global::QL_Vat_Lieu_Xay_Dung_WinFormApp.Properties.Resources.actions_zoom;
            this.btnTimKiem.Location = new System.Drawing.Point(16, 221);
            this.btnTimKiem.Margin = new System.Windows.Forms.Padding(20, 3, 20, 3);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.PaintStyle = DevExpress.XtraEditors.Controls.PaintStyles.Light;
            this.btnTimKiem.Size = new System.Drawing.Size(198, 68);
            this.btnTimKiem.TabIndex = 5;
            this.btnTimKiem.Text = "Tìm kiếm";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightSkyBlue;
            this.tablePanel1.SetColumn(this.panel1, 0);
            this.panel1.Controls.Add(this.lblHoatDong);
            this.panel1.Controls.Add(this.toggleSwitchHoatDong);
            this.panel1.Controls.Add(this.txtSortOrder);
            this.panel1.Controls.Add(this.lblSort);
            this.panel1.Controls.Add(this.txtIconCSS);
            this.panel1.Controls.Add(this.txtURL_);
            this.panel1.Controls.Add(this.cbManHinhCha);
            this.panel1.Controls.Add(this.lblCha);
            this.panel1.Controls.Add(this.txtMaManHinh);
            this.panel1.Controls.Add(this.txtTenManHinh);
            this.panel1.Controls.Add(this.lblMaManHinh);
            this.panel1.Controls.Add(this.lblTenManHinh);
            this.panel1.Controls.Add(this.lblIconCSS);
            this.panel1.Controls.Add(this.lblURL__);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(0);
            this.panel1.Name = "panel1";
            this.tablePanel1.SetRow(this.panel1, 0);
            this.panel1.Size = new System.Drawing.Size(967, 212);
            this.panel1.TabIndex = 0;
            // 
            // txtMaManHinh
            // 
            this.txtMaManHinh.Location = new System.Drawing.Point(166, 31);
            this.txtMaManHinh.Name = "txtMaManHinh";
            this.txtMaManHinh.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaManHinh.Properties.Appearance.Options.UseFont = true;
            this.txtMaManHinh.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtMaManHinh.Size = new System.Drawing.Size(277, 30);
            this.txtMaManHinh.TabIndex = 6;
            // 
            // txtTenManHinh
            // 
            this.txtTenManHinh.Location = new System.Drawing.Point(166, 76);
            this.txtTenManHinh.Name = "txtTenManHinh";
            this.txtTenManHinh.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenManHinh.Properties.Appearance.Options.UseFont = true;
            this.txtTenManHinh.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtTenManHinh.Size = new System.Drawing.Size(277, 30);
            this.txtTenManHinh.TabIndex = 6;
            // 
            // lblMaManHinh
            // 
            this.lblMaManHinh.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaManHinh.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblMaManHinh.Appearance.Options.UseFont = true;
            this.lblMaManHinh.Appearance.Options.UseForeColor = true;
            this.lblMaManHinh.Location = new System.Drawing.Point(29, 35);
            this.lblMaManHinh.Name = "lblMaManHinh";
            this.lblMaManHinh.Size = new System.Drawing.Size(110, 21);
            this.lblMaManHinh.TabIndex = 5;
            this.lblMaManHinh.Text = "Mã màn hình";
            // 
            // lblTenManHinh
            // 
            this.lblTenManHinh.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenManHinh.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblTenManHinh.Appearance.Options.UseFont = true;
            this.lblTenManHinh.Appearance.Options.UseForeColor = true;
            this.lblTenManHinh.Location = new System.Drawing.Point(29, 80);
            this.lblTenManHinh.Name = "lblTenManHinh";
            this.lblTenManHinh.Size = new System.Drawing.Size(116, 21);
            this.lblTenManHinh.TabIndex = 5;
            this.lblTenManHinh.Text = "Tên màn hình";
            // 
            // lblIconCSS
            // 
            this.lblIconCSS.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIconCSS.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblIconCSS.Appearance.Options.UseFont = true;
            this.lblIconCSS.Appearance.Options.UseForeColor = true;
            this.lblIconCSS.Location = new System.Drawing.Point(472, 83);
            this.lblIconCSS.Name = "lblIconCSS";
            this.lblIconCSS.Size = new System.Drawing.Size(71, 21);
            this.lblIconCSS.TabIndex = 2;
            this.lblIconCSS.Text = "Icon css";
            // 
            // lblURL__
            // 
            this.lblURL__.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblURL__.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblURL__.Appearance.Options.UseFont = true;
            this.lblURL__.Appearance.Options.UseForeColor = true;
            this.lblURL__.Location = new System.Drawing.Point(29, 128);
            this.lblURL__.Name = "lblURL__";
            this.lblURL__.Size = new System.Drawing.Size(35, 21);
            this.lblURL__.TabIndex = 0;
            this.lblURL__.Text = "URL";
            // 
            // xtraOpenFileDialog1
            // 
            this.xtraOpenFileDialog1.FileName = "xtraOpenFileDialog1";
            // 
            // txtURL_
            // 
            this.txtURL_.Location = new System.Drawing.Point(166, 124);
            this.txtURL_.Name = "txtURL_";
            this.txtURL_.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtURL_.Properties.Appearance.Options.UseFont = true;
            this.txtURL_.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtURL_.Size = new System.Drawing.Size(277, 30);
            this.txtURL_.TabIndex = 9;
            // 
            // txtIconCSS
            // 
            this.txtIconCSS.Location = new System.Drawing.Point(613, 79);
            this.txtIconCSS.Name = "txtIconCSS";
            this.txtIconCSS.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtIconCSS.Properties.Appearance.Options.UseFont = true;
            this.txtIconCSS.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtIconCSS.Size = new System.Drawing.Size(304, 30);
            this.txtIconCSS.TabIndex = 10;
            // 
            // lblSort
            // 
            this.lblSort.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSort.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblSort.Appearance.Options.UseFont = true;
            this.lblSort.Appearance.Options.UseForeColor = true;
            this.lblSort.Location = new System.Drawing.Point(472, 128);
            this.lblSort.Name = "lblSort";
            this.lblSort.Size = new System.Drawing.Size(87, 21);
            this.lblSort.TabIndex = 11;
            this.lblSort.Text = "Sort order";
            // 
            // txtSortOrder
            // 
            this.txtSortOrder.Location = new System.Drawing.Point(611, 124);
            this.txtSortOrder.Name = "txtSortOrder";
            this.txtSortOrder.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSortOrder.Properties.Appearance.Options.UseFont = true;
            this.txtSortOrder.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            this.txtSortOrder.Size = new System.Drawing.Size(304, 30);
            this.txtSortOrder.TabIndex = 12;
            // 
            // toggleSwitchHoatDong
            // 
            this.toggleSwitchHoatDong.Location = new System.Drawing.Point(859, 172);
            this.toggleSwitchHoatDong.Name = "toggleSwitchHoatDong";
            this.toggleSwitchHoatDong.Properties.OffText = "Off";
            this.toggleSwitchHoatDong.Properties.OnText = "On";
            this.toggleSwitchHoatDong.Size = new System.Drawing.Size(95, 24);
            this.toggleSwitchHoatDong.TabIndex = 13;
            // 
            // lblHoatDong
            // 
            this.lblHoatDong.Appearance.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHoatDong.Appearance.ForeColor = System.Drawing.Color.DarkBlue;
            this.lblHoatDong.Appearance.Options.UseFont = true;
            this.lblHoatDong.Appearance.Options.UseForeColor = true;
            this.lblHoatDong.Location = new System.Drawing.Point(737, 172);
            this.lblHoatDong.Name = "lblHoatDong";
            this.lblHoatDong.Size = new System.Drawing.Size(105, 21);
            this.lblHoatDong.TabIndex = 14;
            this.lblHoatDong.Text = "Hoạt động ?";
            // 
            // frmManHinh
            // 
            this.Appearance.BackColor = System.Drawing.Color.White;
            this.Appearance.Options.UseBackColor = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1244, 747);
            this.Controls.Add(this.tablePanel1);
            this.Name = "frmManHinh";
            this.Padding = new System.Windows.Forms.Padding(20, 0, 20, 0);
            this.Text = "frmManHinh";
            ((System.ComponentModel.ISupportInitialize)(this.cbManHinhCha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_ManHinh)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.datagv_ManHinh)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.stackPanel1)).EndInit();
            this.stackPanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaManHinh.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTenManHinh.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtURL_.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIconCSS.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSortOrder.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.toggleSwitchHoatDong.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.XtraSaveFileDialog xtraSaveFileDialog1;
        private DevExpress.XtraEditors.ComboBoxEdit cbManHinhCha;
        private DevExpress.XtraEditors.LabelControl lblCha;
        private DevExpress.XtraGrid.Views.Grid.GridView gv_ManHinh;
        private DevExpress.XtraGrid.GridControl datagv_ManHinh;
        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.Utils.Layout.StackPanel stackPanel1;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnTimKiem;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.TextEdit txtMaManHinh;
        private DevExpress.XtraEditors.TextEdit txtTenManHinh;
        private DevExpress.XtraEditors.LabelControl lblMaManHinh;
        private DevExpress.XtraEditors.LabelControl lblTenManHinh;
        private DevExpress.XtraEditors.LabelControl lblIconCSS;
        private DevExpress.XtraEditors.LabelControl lblURL__;
        private DevExpress.XtraEditors.XtraOpenFileDialog xtraOpenFileDialog1;
        private DevExpress.XtraEditors.TextEdit txtSortOrder;
        private DevExpress.XtraEditors.LabelControl lblSort;
        private DevExpress.XtraEditors.TextEdit txtIconCSS;
        private DevExpress.XtraEditors.TextEdit txtURL_;
        private DevExpress.XtraEditors.LabelControl lblHoatDong;
        private DevExpress.XtraEditors.ToggleSwitch toggleSwitchHoatDong;
    }
}