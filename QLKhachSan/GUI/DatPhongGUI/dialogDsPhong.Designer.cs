﻿namespace QLKhachSan.GUI.DatPhongGUI
{
    partial class dialogDsPhong
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(dialogDsPhong));
            this.menuLoaiPhong = new System.Windows.Forms.MenuStrip();
            this.tấtCảToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnlPhong = new System.Windows.Forms.FlowLayoutPanel();
            this.btnPhongChon = new System.Windows.Forms.Button();
            this.menuLoaiPhong.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuLoaiPhong
            // 
            this.menuLoaiPhong.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.menuLoaiPhong.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuLoaiPhong.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tấtCảToolStripMenuItem});
            this.menuLoaiPhong.Location = new System.Drawing.Point(0, 0);
            this.menuLoaiPhong.Name = "menuLoaiPhong";
            this.menuLoaiPhong.Size = new System.Drawing.Size(994, 33);
            this.menuLoaiPhong.TabIndex = 0;
            this.menuLoaiPhong.Text = "menuStrip1";
            // 
            // tấtCảToolStripMenuItem
            // 
            this.tấtCảToolStripMenuItem.Name = "tấtCảToolStripMenuItem";
            this.tấtCảToolStripMenuItem.Size = new System.Drawing.Size(74, 29);
            this.tấtCảToolStripMenuItem.Text = "Tất cả";
            this.tấtCảToolStripMenuItem.Click += new System.EventHandler(this.tấtCảToolStripMenuItem_Click);
            // 
            // pnlPhong
            // 
            this.pnlPhong.Location = new System.Drawing.Point(0, 51);
            this.pnlPhong.Name = "pnlPhong";
            this.pnlPhong.Size = new System.Drawing.Size(994, 597);
            this.pnlPhong.TabIndex = 1;
            // 
            // btnPhongChon
            // 
            this.btnPhongChon.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnPhongChon.Image = ((System.Drawing.Image)(resources.GetObject("btnPhongChon.Image")));
            this.btnPhongChon.Location = new System.Drawing.Point(948, 0);
            this.btnPhongChon.Name = "btnPhongChon";
            this.btnPhongChon.Size = new System.Drawing.Size(46, 37);
            this.btnPhongChon.TabIndex = 0;
            this.btnPhongChon.UseVisualStyleBackColor = true;
            // 
            // dialogDsPhong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(994, 649);
            this.ControlBox = false;
            this.Controls.Add(this.btnPhongChon);
            this.Controls.Add(this.pnlPhong);
            this.Controls.Add(this.menuLoaiPhong);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "dialogDsPhong";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.dialogDsPhong_Load);
            this.menuLoaiPhong.ResumeLayout(false);
            this.menuLoaiPhong.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuLoaiPhong;
        private System.Windows.Forms.ToolStripMenuItem tấtCảToolStripMenuItem;
        private System.Windows.Forms.FlowLayoutPanel pnlPhong;
        private System.Windows.Forms.Button btnPhongChon;
    }
}