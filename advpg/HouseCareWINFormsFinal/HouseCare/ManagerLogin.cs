using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HouseCare
{
    public partial class ManagerLogin : Form
    {
        public ManagerLogin()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if ((textBox1.Text != string.Empty || textBox2.Text != string.Empty) || (textBox1.Text != string.Empty && textBox2.Text != string.Empty))
            {

                if ((textBox1.Text == "manager@gmail.com") && (textBox2.Text == "manager"))

                {

                    MessageBox.Show("Logged in successfully...");
                    Dashboardmanagercs Home = new Dashboardmanagercs();
                    this.Hide();
                    Home.Show();
                    textBox1.Clear();
                    textBox2.Clear();
                    //Call the form 'home'

                }
                else
                {

                    MessageBox.Show("Invalid email id or password...");
                }
            }
        }

        private void ManagerLogin_Load(object sender, EventArgs e)
        {

        }
    }
}
