
namespace HouseCare
{
    partial class frmDetailsDialogueEdit
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
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            txtOrderID = new TextBox();
            ddlProduct = new ComboBox();
            groupBox1 = new GroupBox();
            txtdur = new TextBox();
            txtdesc = new TextBox();
            label8 = new Label();
            label6 = new Label();
            label1 = new Label();
            txttype = new TextBox();
            txtUnitPrice = new TextBox();
            txtQty = new TextBox();
            label5 = new Label();
            btnSave = new Button();
            btnCancel = new Button();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(36, 68);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(94, 25);
            label2.TabIndex = 1;
            label2.Text = "Service ID:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(36, 117);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(119, 25);
            label3.TabIndex = 2;
            label3.Text = "Service Name";
            label3.Click += label3_Click;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(36, 310);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(53, 25);
            label4.TabIndex = 3;
            label4.Text = "Price:";
            // 
            // txtOrderID
            // 
            txtOrderID.Location = new Point(229, 55);
            txtOrderID.Margin = new Padding(4, 5, 4, 5);
            txtOrderID.Name = "txtOrderID";
            txtOrderID.ReadOnly = true;
            txtOrderID.Size = new Size(308, 31);
            txtOrderID.TabIndex = 7;
            txtOrderID.TextChanged += txtOrderID_TextChanged;
            // 
            // ddlProduct
            // 
            ddlProduct.FormattingEnabled = true;
            ddlProduct.Location = new Point(229, 103);
            ddlProduct.Margin = new Padding(4, 5, 4, 5);
            ddlProduct.Name = "ddlProduct";
            ddlProduct.Size = new Size(308, 33);
            ddlProduct.TabIndex = 8;
            ddlProduct.SelectedIndexChanged += ddlProduct_SelectedIndexChanged;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(txtdur);
            groupBox1.Controls.Add(txtdesc);
            groupBox1.Controls.Add(label8);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(label1);
            groupBox1.Controls.Add(txttype);
            groupBox1.Controls.Add(txtUnitPrice);
            groupBox1.Controls.Add(txtQty);
            groupBox1.Controls.Add(ddlProduct);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(txtOrderID);
            groupBox1.Controls.Add(label5);
            groupBox1.Location = new Point(17, 20);
            groupBox1.Margin = new Padding(4, 5, 4, 5);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(4, 5, 4, 5);
            groupBox1.Size = new Size(601, 445);
            groupBox1.TabIndex = 19;
            groupBox1.TabStop = false;
            groupBox1.Text = "Service Info";
            groupBox1.Enter += groupBox1_Enter;
            // 
            // txtdur
            // 
            txtdur.Location = new Point(229, 248);
            txtdur.Margin = new Padding(4, 5, 4, 5);
            txtdur.Name = "txtdur";
            txtdur.Size = new Size(308, 31);
            txtdur.TabIndex = 20;
            // 
            // txtdesc
            // 
            txtdesc.Location = new Point(229, 200);
            txtdesc.Margin = new Padding(4, 5, 4, 5);
            txtdesc.Name = "txtdesc";
            txtdesc.Size = new Size(308, 31);
            txtdesc.TabIndex = 19;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(36, 262);
            label8.Margin = new Padding(4, 0, 4, 0);
            label8.Name = "label8";
            label8.Size = new Size(141, 25);
            label8.TabIndex = 17;
            label8.Text = "Service Duration";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(36, 213);
            label6.Margin = new Padding(4, 0, 4, 0);
            label6.Name = "label6";
            label6.Size = new Size(158, 25);
            label6.TabIndex = 15;
            label6.Text = "Service Descripton";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(36, 165);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(109, 25);
            label1.TabIndex = 14;
            label1.Text = "Service Type";
            label1.Click += label1_Click;
            // 
            // txttype
            // 
            txttype.Location = new Point(229, 152);
            txttype.Margin = new Padding(4, 5, 4, 5);
            txttype.Name = "txttype";
            txttype.Size = new Size(308, 31);
            txttype.TabIndex = 13;
            // 
            // txtUnitPrice
            // 
            txtUnitPrice.Location = new Point(229, 297);
            txtUnitPrice.Margin = new Padding(4, 5, 4, 5);
            txtUnitPrice.Name = "txtUnitPrice";
            txtUnitPrice.Size = new Size(308, 31);
            txtUnitPrice.TabIndex = 12;
            txtUnitPrice.TextChanged += txtUnitPrice_TextChanged;
            // 
            // txtQty
            // 
            txtQty.Location = new Point(229, 345);
            txtQty.Margin = new Padding(4, 5, 4, 5);
            txtQty.Name = "txtQty";
            txtQty.Size = new Size(308, 31);
            txtQty.TabIndex = 10;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(36, 358);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(84, 25);
            label5.TabIndex = 4;
            label5.Text = "Quantity:";
            // 
            // btnSave
            // 
            btnSave.BackColor = Color.FromArgb(1, 90, 132);
            btnSave.FlatStyle = FlatStyle.Flat;
            btnSave.ForeColor = Color.White;
            btnSave.Location = new Point(84, 525);
            btnSave.Margin = new Padding(4, 5, 4, 5);
            btnSave.Name = "btnSave";
            btnSave.Size = new Size(173, 68);
            btnSave.TabIndex = 20;
            btnSave.Text = "Save and Close";
            btnSave.UseVisualStyleBackColor = false;
            btnSave.Click += btnSave_Click;
            // 
            // btnCancel
            // 
            btnCancel.BackColor = Color.Firebrick;
            btnCancel.FlatStyle = FlatStyle.Flat;
            btnCancel.ForeColor = Color.White;
            btnCancel.Location = new Point(416, 525);
            btnCancel.Margin = new Padding(4, 5, 4, 5);
            btnCancel.Name = "btnCancel";
            btnCancel.Size = new Size(116, 68);
            btnCancel.TabIndex = 22;
            btnCancel.Text = "Cancel";
            btnCancel.UseVisualStyleBackColor = false;
            btnCancel.Click += btnCancel_Click;
            // 
            // frmDetailsDialogueEdit
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.Window;
            ClientSize = new Size(640, 628);
            Controls.Add(btnCancel);
            Controls.Add(btnSave);
            Controls.Add(groupBox1);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmDetailsDialogueEdit";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Edit Service";
            Load += frmOrderDetailAddEdit_Load;
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion
        private Label label2;
        private Label label3;
        private Label label4;
        private TextBox txtOrderID;
        private ComboBox ddlProduct;
        private GroupBox groupBox1;
        private Button btnSave;
        private Button btnCancel;
        private TextBox txtUnitPrice;
        private Label label1;
        private TextBox txttype;
        private TextBox txtQty;
        private Label label5;
        private Label label8;
        private Label label6;
        private TextBox txtdur;
        private TextBox txtdesc;
    }
}