using HouseCareObjects.Models;
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
    public partial class Dashboardmanagercs : Form
    {
        private DBHomeServiceContext context;

        public Dashboardmanagercs()
        {
            InitializeComponent();
            context = new DBHomeServiceContext();
        }

        private void btnManageOrders_Click(object sender, EventArgs e)
        {
            frmOrders orders = new frmOrders();
            orders.ShowDialog();
        }

        private void Dashboardmanagercs_Load(object sender, EventArgs e)
        {
            //Load Employee Full name from the Employee ID
            try
            {
                // var emp = context.Roles.Where(x => x.id == Global.id).FirstOrDefault();
                // lblEmployeeName.Text = emp.Name;
            }
            catch (Exception)
            {

                throw; //in this case, we are throwing the exception so you can debug. Later, you should catch it and display and error messageusing MessageBox.Show(ex.Message);  
            }

            LoadStatistics();
        }

        private void LoadStatistics()
        {
            try
            {
                // lblCustomers.Text = context.Users.Count().ToString();

                lblTodayOrders.Text = context.AppServices.Where(d => d.Price != 0).Count().ToString();

                lblTodaySales.Text = context.Documents.Where(d => d.DocumentDescription != "NULL").Count().ToString();

            }
            catch (Exception)
            {

                throw; //in this case, we are throwing the exception so you can debug. Later, you should catch it and display and error messageusing MessageBox.Show(ex.Message);  
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Landing landing = new Landing();
            this.Hide();
            landing.Show();
        }
    }

}
