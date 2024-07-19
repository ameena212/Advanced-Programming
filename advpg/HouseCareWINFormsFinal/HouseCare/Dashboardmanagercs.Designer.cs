namespace HouseCare
{
    partial class Dashboardmanagercs
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Dashboardmanagercs));
            pictureBox1 = new PictureBox();
            btnRefresh = new Button();
            groupBox2 = new GroupBox();
            button1 = new Button();
            btnManageOrders = new Button();
            pictureBox2 = new PictureBox();
            lblTodaySales = new Label();
            lblTodayOrders = new Label();
            pictureBox6 = new PictureBox();
            label1 = new Label();
            groupBox7 = new GroupBox();
            groupBox1 = new GroupBox();
            groupBox5 = new GroupBox();
            label3 = new Label();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox6).BeginInit();
            groupBox7.SuspendLayout();
            groupBox1.SuspendLayout();
            groupBox5.SuspendLayout();
            SuspendLayout();
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(12, 5);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(206, 128);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 15;
            pictureBox1.TabStop = false;
            // 
            // btnRefresh
            // 
            btnRefresh.BackColor = Color.WhiteSmoke;
            btnRefresh.FlatAppearance.BorderSize = 0;
            btnRefresh.FlatStyle = FlatStyle.Flat;
            btnRefresh.Font = new Font("Segoe UI", 9F, FontStyle.Underline, GraphicsUnit.Point);
            btnRefresh.ForeColor = Color.FromArgb(1, 90, 132);
            btnRefresh.Location = new Point(64, 262);
            btnRefresh.Margin = new Padding(3, 4, 3, 4);
            btnRefresh.Name = "btnRefresh";
            btnRefresh.Size = new Size(119, 29);
            btnRefresh.TabIndex = 15;
            btnRefresh.Text = "Refresh";
            btnRefresh.UseVisualStyleBackColor = false;
            // 
            // groupBox2
            // 
            groupBox2.BackColor = Color.WhiteSmoke;
            groupBox2.Controls.Add(button1);
            groupBox2.Controls.Add(btnRefresh);
            groupBox2.Controls.Add(btnManageOrders);
            groupBox2.Location = new Point(12, 137);
            groupBox2.Margin = new Padding(3, 4, 3, 4);
            groupBox2.Name = "groupBox2";
            groupBox2.Padding = new Padding(3, 4, 3, 4);
            groupBox2.Size = new Size(206, 309);
            groupBox2.TabIndex = 14;
            groupBox2.TabStop = false;
            groupBox2.Text = "Manager Menu";
            // 
            // button1
            // 
            button1.BackColor = Color.Firebrick;
            button1.FlatStyle = FlatStyle.Flat;
            button1.ForeColor = Color.White;
            button1.Location = new Point(19, 145);
            button1.Margin = new Padding(3, 4, 3, 4);
            button1.Name = "button1";
            button1.Size = new Size(187, 67);
            button1.TabIndex = 16;
            button1.Text = "Lougout";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // btnManageOrders
            // 
            btnManageOrders.BackColor = Color.FromArgb(1, 90, 132);
            btnManageOrders.FlatStyle = FlatStyle.Flat;
            btnManageOrders.ForeColor = Color.White;
            btnManageOrders.Location = new Point(24, 45);
            btnManageOrders.Margin = new Padding(3, 4, 3, 4);
            btnManageOrders.Name = "btnManageOrders";
            btnManageOrders.Size = new Size(187, 67);
            btnManageOrders.TabIndex = 8;
            btnManageOrders.Text = "Manage";
            btnManageOrders.UseVisualStyleBackColor = false;
            btnManageOrders.Click += btnManageOrders_Click;
            // 
            // pictureBox2
            // 
            pictureBox2.BackColor = Color.White;
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(35, 29);
            pictureBox2.Margin = new Padding(3, 4, 3, 4);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(114, 107);
            pictureBox2.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox2.TabIndex = 10;
            pictureBox2.TabStop = false;
            // 
            // lblTodaySales
            // 
            lblTodaySales.Font = new Font("Segoe UI Semibold", 20.25F, FontStyle.Bold, GraphicsUnit.Point);
            lblTodaySales.Location = new Point(6, 177);
            lblTodaySales.Name = "lblTodaySales";
            lblTodaySales.Size = new Size(160, 49);
            lblTodaySales.TabIndex = 7;
            lblTodaySales.Text = "lblTodaySales";
            lblTodaySales.TextAlign = ContentAlignment.TopCenter;
            // 
            // lblTodayOrders
            // 
            lblTodayOrders.Font = new Font("Segoe UI Semibold", 20.25F, FontStyle.Bold, GraphicsUnit.Point);
            lblTodayOrders.Location = new Point(7, 177);
            lblTodayOrders.Name = "lblTodayOrders";
            lblTodayOrders.Size = new Size(160, 49);
            lblTodayOrders.TabIndex = 7;
            lblTodayOrders.Text = "lblTodayOrders";
            lblTodayOrders.TextAlign = ContentAlignment.TopCenter;
            // 
            // pictureBox6
            // 
            pictureBox6.BackColor = Color.White;
            pictureBox6.Image = (Image)resources.GetObject("pictureBox6.Image");
            pictureBox6.Location = new Point(35, 29);
            pictureBox6.Margin = new Padding(3, 4, 3, 4);
            pictureBox6.Name = "pictureBox6";
            pictureBox6.Size = new Size(114, 107);
            pictureBox6.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox6.TabIndex = 10;
            pictureBox6.TabStop = false;
            // 
            // label1
            // 
            label1.Location = new Point(8, 150);
            label1.Name = "label1";
            label1.Size = new Size(160, 27);
            label1.TabIndex = 2;
            label1.Text = "Documents";
            label1.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // groupBox7
            // 
            groupBox7.BackColor = Color.White;
            groupBox7.Controls.Add(pictureBox6);
            groupBox7.Controls.Add(label1);
            groupBox7.Controls.Add(lblTodaySales);
            groupBox7.Location = new Point(16, 28);
            groupBox7.Margin = new Padding(3, 4, 3, 4);
            groupBox7.Name = "groupBox7";
            groupBox7.Padding = new Padding(3, 4, 3, 4);
            groupBox7.Size = new Size(174, 241);
            groupBox7.TabIndex = 16;
            groupBox7.TabStop = false;
            // 
            // groupBox1
            // 
            groupBox1.BackColor = Color.White;
            groupBox1.Controls.Add(groupBox7);
            groupBox1.Controls.Add(groupBox5);
            groupBox1.Location = new Point(225, 137);
            groupBox1.Margin = new Padding(3, 4, 3, 4);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(3, 4, 3, 4);
            groupBox1.Size = new Size(397, 309);
            groupBox1.TabIndex = 13;
            groupBox1.TabStop = false;
            groupBox1.Text = "Dashboard";
            // 
            // groupBox5
            // 
            groupBox5.BackColor = Color.White;
            groupBox5.Controls.Add(pictureBox2);
            groupBox5.Controls.Add(label3);
            groupBox5.Controls.Add(lblTodayOrders);
            groupBox5.Location = new Point(207, 28);
            groupBox5.Margin = new Padding(3, 4, 3, 4);
            groupBox5.Name = "groupBox5";
            groupBox5.Padding = new Padding(3, 4, 3, 4);
            groupBox5.Size = new Size(174, 241);
            groupBox5.TabIndex = 15;
            groupBox5.TabStop = false;
            // 
            // label3
            // 
            label3.Location = new Point(7, 157);
            label3.Name = "label3";
            label3.Size = new Size(160, 27);
            label3.TabIndex = 2;
            label3.Text = "Services";
            label3.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // Dashboardmanagercs
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(633, 450);
            Controls.Add(pictureBox1);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            Name = "Dashboardmanagercs";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Dashboardmanagercs";
            Load += Dashboardmanagercs_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox6).EndInit();
            groupBox7.ResumeLayout(false);
            groupBox1.ResumeLayout(false);
            groupBox5.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private PictureBox pictureBox1;
        private Button btnRefresh;
        private GroupBox groupBox2;
        private Button btnManageOrders;
        private PictureBox pictureBox2;
        private Label lblTodaySales;
        private Label lblTodayOrders;
        private PictureBox pictureBox6;
        private Label label1;
        private GroupBox groupBox7;
        private GroupBox groupBox1;
        private GroupBox groupBox5;
        private Label label3;
        private Button button1;
    }
}