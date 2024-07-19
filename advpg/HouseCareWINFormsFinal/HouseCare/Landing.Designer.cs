
namespace HouseCare
{
    partial class Landing
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Landing));
            label1 = new Label();
            ddlEmployees = new ComboBox();
            btnEnter = new Button();
            pictureBox1 = new PictureBox();
            groupBox1 = new GroupBox();
            button1 = new Button();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(35, 36);
            label1.Name = "label1";
            label1.Size = new Size(89, 20);
            label1.TabIndex = 0;
            label1.Text = "Continue as:";
            // 
            // ddlEmployees
            // 
            ddlEmployees.FormattingEnabled = true;
            ddlEmployees.Location = new Point(35, 84);
            ddlEmployees.Margin = new Padding(3, 4, 3, 4);
            ddlEmployees.Name = "ddlEmployees";
            ddlEmployees.Size = new Size(339, 28);
            ddlEmployees.TabIndex = 1;
            ddlEmployees.SelectedIndexChanged += ddlEmployees_SelectedIndexChanged;
            // 
            // btnEnter
            // 
            btnEnter.BackColor = Color.FromArgb(1, 90, 132);
            btnEnter.ForeColor = Color.White;
            btnEnter.Location = new Point(35, 145);
            btnEnter.Margin = new Padding(3, 4, 3, 4);
            btnEnter.Name = "btnEnter";
            btnEnter.Size = new Size(161, 101);
            btnEnter.TabIndex = 2;
            btnEnter.Text = "Enter";
            btnEnter.UseVisualStyleBackColor = false;
            btnEnter.Click += btnEnter_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(37, 96);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(345, 271);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 3;
            pictureBox1.TabStop = false;
            // 
            // groupBox1
            // 
            groupBox1.BackColor = Color.White;
            groupBox1.Controls.Add(button1);
            groupBox1.Controls.Add(label1);
            groupBox1.Controls.Add(ddlEmployees);
            groupBox1.Controls.Add(btnEnter);
            groupBox1.Location = new Point(408, 96);
            groupBox1.Margin = new Padding(3, 4, 3, 4);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(3, 4, 3, 4);
            groupBox1.Size = new Size(410, 271);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Welcome";
            // 
            // button1
            // 
            button1.BackColor = Color.Firebrick;
            button1.ForeColor = Color.White;
            button1.Location = new Point(213, 145);
            button1.Margin = new Padding(3, 4, 3, 4);
            button1.Name = "button1";
            button1.Size = new Size(161, 101);
            button1.TabIndex = 3;
            button1.Text = "Lougout";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // Landing
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            BackgroundImage = (Image)resources.GetObject("$this.BackgroundImage");
            ClientSize = new Size(880, 451);
            Controls.Add(groupBox1);
            Controls.Add(pictureBox1);
            Margin = new Padding(3, 4, 3, 4);
            Name = "Landing";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Landing";
            FormClosing += Landing_FormClosing;
            Load += Landing_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox ddlEmployees;
        private System.Windows.Forms.Button btnEnter;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private Button button1;
    }
}