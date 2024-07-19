namespace HouseCare
{
    partial class addservice
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
            panel1 = new Panel();
            txtServiceName = new TextBox();
            combocatid = new ComboBox();
            txttype = new TextBox();
            txtdesc = new TextBox();
            txtdur = new TextBox();
            txtprice = new TextBox();
            label7 = new Label();
            label6 = new Label();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            button1 = new Button();
            button3 = new Button();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.Controls.Add(txtServiceName);
            panel1.Controls.Add(combocatid);
            panel1.Controls.Add(txttype);
            panel1.Controls.Add(txtdesc);
            panel1.Controls.Add(txtdur);
            panel1.Controls.Add(txtprice);
            panel1.Controls.Add(label7);
            panel1.Controls.Add(label6);
            panel1.Controls.Add(label5);
            panel1.Controls.Add(label4);
            panel1.Controls.Add(label3);
            panel1.Controls.Add(label2);
            panel1.Location = new Point(43, 3);
            panel1.Name = "panel1";
            panel1.Size = new Size(711, 286);
            panel1.TabIndex = 0;
            // 
            // txtServiceName
            // 
            txtServiceName.Location = new Point(249, 47);
            txtServiceName.Name = "txtServiceName";
            txtServiceName.Size = new Size(377, 23);
            txtServiceName.TabIndex = 13;
            txtServiceName.TextChanged += txtServiceName_TextChanged;
            // 
            // combocatid
            // 
            combocatid.FormattingEnabled = true;
            combocatid.Location = new Point(249, 148);
            combocatid.Name = "combocatid";
            combocatid.Size = new Size(377, 23);
            combocatid.TabIndex = 12;
            combocatid.SelectedIndexChanged += combocatid_SelectedIndexChanged;
            // 
            // txttype
            // 
            txttype.Location = new Point(249, 78);
            txttype.Name = "txttype";
            txttype.Size = new Size(377, 23);
            txttype.TabIndex = 11;
            // 
            // txtdesc
            // 
            txtdesc.Location = new Point(249, 116);
            txtdesc.Name = "txtdesc";
            txtdesc.Size = new Size(377, 23);
            txtdesc.TabIndex = 10;
            // 
            // txtdur
            // 
            txtdur.Location = new Point(249, 177);
            txtdur.Name = "txtdur";
            txtdur.Size = new Size(377, 23);
            txtdur.TabIndex = 9;
            // 
            // txtprice
            // 
            txtprice.Location = new Point(249, 208);
            txtprice.Name = "txtprice";
            txtprice.Size = new Size(377, 23);
            txtprice.TabIndex = 8;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(39, 211);
            label7.Name = "label7";
            label7.Size = new Size(33, 15);
            label7.TabIndex = 5;
            label7.Text = "Price";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(39, 182);
            label6.Name = "label6";
            label6.Size = new Size(93, 15);
            label6.TabIndex = 1;
            label6.Text = "Service Duration";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(39, 151);
            label5.Name = "label5";
            label5.Size = new Size(69, 15);
            label5.TabIndex = 4;
            label5.Text = "Category ID";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(39, 119);
            label4.Name = "label4";
            label4.Size = new Size(107, 15);
            label4.TabIndex = 3;
            label4.Text = "Service Description";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(39, 86);
            label3.Name = "label3";
            label3.Size = new Size(71, 15);
            label3.TabIndex = 2;
            label3.Text = "Service Type";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(39, 53);
            label2.Name = "label2";
            label2.Size = new Size(79, 15);
            label2.TabIndex = 1;
            label2.Text = "Service Name";
            // 
            // button1
            // 
            button1.BackColor = SystemColors.HotTrack;
            button1.Location = new Point(72, 335);
            button1.Name = "button1";
            button1.Size = new Size(103, 40);
            button1.TabIndex = 1;
            button1.Text = "Add";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // button3
            // 
            button3.BackColor = Color.FromArgb(192, 0, 0);
            button3.Location = new Point(621, 335);
            button3.Name = "button3";
            button3.Size = new Size(103, 40);
            button3.TabIndex = 3;
            button3.Text = "Cancel";
            button3.UseVisualStyleBackColor = false;
            button3.Click += button3_Click;
            // 
            // addservice
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(790, 432);
            Controls.Add(button3);
            Controls.Add(button1);
            Controls.Add(panel1);
            Name = "addservice";
            Text = "addservice";
            Load += addservice_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private Label label6;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label label2;
        private ComboBox combocatid;
        private TextBox txttype;
        private TextBox txtdesc;
        private TextBox txtdur;
        private TextBox txtprice;
        private Label label7;
        private Button button1;
        private Button button3;
        private TextBox txtServiceName;
    }
}