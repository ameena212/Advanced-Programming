
namespace HouseCare
{
    partial class frmOrders
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
            dgvOrders = new DataGridView();
            label2 = new Label();
            groupBox1 = new GroupBox();
            btnResetFilter = new Button();
            btnFilter = new Button();
            txtFilterOrderNo = new TextBox();
            btnAdd = new Button();
            btnDetails = new Button();
            btnDelete = new Button();
            btnClose = new Button();
            ((System.ComponentModel.ISupportInitialize)dgvOrders).BeginInit();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // dgvOrders
            // 
            dgvOrders.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvOrders.BackgroundColor = SystemColors.ControlLight;
            dgvOrders.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvOrders.Location = new Point(24, 80);
            dgvOrders.MultiSelect = false;
            dgvOrders.Name = "dgvOrders";
            dgvOrders.RowHeadersWidth = 51;
            dgvOrders.RowTemplate.Height = 25;
            dgvOrders.Size = new Size(734, 376);
            dgvOrders.TabIndex = 0;
            dgvOrders.CellContentClick += dgvOrders_CellContentClick;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(55, 25);
            label2.Name = "label2";
            label2.Size = new Size(108, 15);
            label2.TabIndex = 2;
            label2.Text = "Filter by ServiceNo:";
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnResetFilter);
            groupBox1.Controls.Add(btnFilter);
            groupBox1.Controls.Add(txtFilterOrderNo);
            groupBox1.Controls.Add(label2);
            groupBox1.Location = new Point(24, 13);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(734, 61);
            groupBox1.TabIndex = 3;
            groupBox1.TabStop = false;
            groupBox1.Text = "Filters";
            // 
            // btnResetFilter
            // 
            btnResetFilter.BackColor = Color.WhiteSmoke;
            btnResetFilter.FlatAppearance.BorderSize = 0;
            btnResetFilter.FlatStyle = FlatStyle.Flat;
            btnResetFilter.ForeColor = Color.Black;
            btnResetFilter.Location = new Point(603, 22);
            btnResetFilter.Name = "btnResetFilter";
            btnResetFilter.Size = new Size(108, 23);
            btnResetFilter.TabIndex = 10;
            btnResetFilter.Text = "Reset / Refresh";
            btnResetFilter.UseVisualStyleBackColor = false;
            btnResetFilter.Click += btnResetFilter_Click;
            // 
            // btnFilter
            // 
            btnFilter.BackColor = Color.FromArgb(47, 152, 198);
            btnFilter.FlatStyle = FlatStyle.Flat;
            btnFilter.ForeColor = Color.White;
            btnFilter.Location = new Point(524, 22);
            btnFilter.Name = "btnFilter";
            btnFilter.Size = new Size(76, 23);
            btnFilter.TabIndex = 6;
            btnFilter.Text = "Filter";
            btnFilter.UseVisualStyleBackColor = false;
            btnFilter.Click += btnFilter_Click;
            // 
            // txtFilterOrderNo
            // 
            txtFilterOrderNo.Location = new Point(213, 23);
            txtFilterOrderNo.Name = "txtFilterOrderNo";
            txtFilterOrderNo.Size = new Size(66, 23);
            txtFilterOrderNo.TabIndex = 5;
            // 
            // btnAdd
            // 
            btnAdd.BackColor = Color.FromArgb(1, 90, 132);
            btnAdd.FlatStyle = FlatStyle.Flat;
            btnAdd.ForeColor = Color.White;
            btnAdd.Location = new Point(32, 473);
            btnAdd.Name = "btnAdd";
            btnAdd.Size = new Size(155, 42);
            btnAdd.TabIndex = 4;
            btnAdd.Text = "Add Service";
            btnAdd.UseVisualStyleBackColor = false;
            btnAdd.Click += btnAdd_Click;
            // 
            // btnDetails
            // 
            btnDetails.BackColor = Color.FromArgb(1, 90, 132);
            btnDetails.FlatStyle = FlatStyle.Flat;
            btnDetails.ForeColor = Color.White;
            btnDetails.Location = new Point(220, 473);
            btnDetails.Name = "btnDetails";
            btnDetails.Size = new Size(155, 42);
            btnDetails.TabIndex = 7;
            btnDetails.Text = "Edit Service";
            btnDetails.UseVisualStyleBackColor = false;
            btnDetails.Click += btnDetails_Click;
            // 
            // btnDelete
            // 
            btnDelete.BackColor = Color.Firebrick;
            btnDelete.FlatStyle = FlatStyle.Flat;
            btnDelete.ForeColor = Color.White;
            btnDelete.Location = new Point(405, 473);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(155, 42);
            btnDelete.TabIndex = 14;
            btnDelete.Text = "Delete";
            btnDelete.UseVisualStyleBackColor = false;
            btnDelete.Click += btnDelete_Click;
            // 
            // btnClose
            // 
            btnClose.BackColor = SystemColors.GradientActiveCaption;
            btnClose.FlatAppearance.BorderSize = 0;
            btnClose.FlatStyle = FlatStyle.Flat;
            btnClose.ForeColor = Color.Black;
            btnClose.Location = new Point(592, 473);
            btnClose.Name = "btnClose";
            btnClose.Size = new Size(155, 42);
            btnClose.TabIndex = 15;
            btnClose.Text = "Close";
            btnClose.UseVisualStyleBackColor = false;
            btnClose.Click += btnClose_Click;
            // 
            // frmOrders
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(770, 527);
            Controls.Add(btnClose);
            Controls.Add(btnDelete);
            Controls.Add(btnDetails);
            Controls.Add(btnAdd);
            Controls.Add(groupBox1);
            Controls.Add(dgvOrders);
            Name = "frmOrders";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Services Management";
            Load += frmOrders_Load;
            ((System.ComponentModel.ISupportInitialize)dgvOrders).EndInit();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView dgvOrders;
        private Label label2;
        private GroupBox groupBox1;
        private Button btnFilter;
        private TextBox txtFilterOrderNo;
        private Button btnAdd;
        private Button btnDetails;
        private Button btnResetFilter;
        private Button btnDelete;
        private Button btnClose;
    }
}