using HouseCareObjects.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//using NWindBusinessObjects;

namespace HouseCare
{
    public partial class Landing : Form
    {
        DBHomeServiceContext context; //create a context of the database
        public Landing()
        {
            InitializeComponent();
            context = new DBHomeServiceContext(); //instantiate the context
        }

        private void Landing_Load(object sender, EventArgs e)
        {
            try
            {
                //The display and value members control what users will see, 
                //and what the 'SelectedValue' will be when one of the items was selected
                ddlEmployees.DataSource = context.UserRoles.ToList();
                ddlEmployees.DisplayMember = "UserType"; //A property we created
                ddlEmployees.ValueMember = "UserRoleID";
            }
            catch (Exception ex)
            {

                throw; //in this case, we are throwing the exception so you can debug. Later, you should catch it and display and error messageusing MessageBox.Show(ex.Message);  

            }

            //using datasource binding is better than using a loop such as
            //foreach (var employee in context.Employees)
            //{
            //    ddlEmployees.Items.Add(employee);
            //}
        }

        private void btnEnter_Click(object sender, EventArgs e)
        {
            int global;
            global = Convert.ToInt32(ddlEmployees.SelectedValue);

            if (global == 1)
            {
                AdminLogin AdminLogin = new AdminLogin();
                this.Hide();
                AdminLogin.Show();
            }
            if (global == 2)
            {
                ManagerLogin ManagerLogin = new ManagerLogin();
                this.Hide();
                ManagerLogin.Show();
            }
            else
            {
                //alternatively, and if you are using the ToString override method, you can read .SelectedItem and cast it to Employee, and store the whole object in Global class
                // using something like: Employee e = (Employee)ddlEmployees.SelectedItem

              //  MessageBox.Show("Invalid user in this stage !!!");
            }
        }

        private void Landing_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void ddlEmployees_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
