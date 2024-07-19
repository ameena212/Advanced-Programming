using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using HouseCareObjects.Models;
using Microsoft.EntityFrameworkCore;
//using NWindBusinessObjects;

namespace HouseCare
{
    public partial class frmHome : Form
    {
        DBHomeServiceContext context;
        public frmHome()
        {
            InitializeComponent();
            context = new DBHomeServiceContext();
        }
        private void frmHome_Load(object sender, EventArgs e)
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
        private void btnManageOrders_Click(object sender, EventArgs e)
        {
            frmOrders orders = new frmOrders();
            orders.ShowDialog();
        }

        private void LoadStatistics()
        {
            //Load the statistics

            try
            {
                lblCustomers.Text = context.AppUsers.Count().ToString();

                lblTodayOrders.Text = context.AppServices.Where(d => d.Price != 0).Count().ToString();

                lblTodaySales.Text = context.Documents.Where(d => d.DocumentDescription != "NULL").Count().ToString();

            }
            catch (Exception)
            {

                throw; //in this case, we are throwing the exception so you can debug. Later, you should catch it and display and error messageusing MessageBox.Show(ex.Message);  
            }

        }
        private void btnChange_Click(object sender, EventArgs e)
        {

            Landing landingPage = new Landing();
            this.Hide();
            landingPage.Show();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadStatistics();
        }

        private void frmHome_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit(); //to solve the issue of application not closing die to hidden forms
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Landing landing = new Landing();
            this.Hide();
            landing.Show();
        }
    }
}
