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


    public partial class addservice : Form
    {
        DBHomeServiceContext context;
        public addservice()
        {
            InitializeComponent();
            context = new DBHomeServiceContext();
        }

        private void addservice_Load(object sender, EventArgs e)
        {

            //txtServiceName.Text = txtServiceName.Text.Trim();


            combocatid.DataSource = context.AppCategories.ToList();
            combocatid.DisplayMember = "CategoryName";
            combocatid.ValueMember = "CategoryId";

        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Validate input fields before adding the service
                if (ValidateInput())
                {
                    // Create a new service object and populate its properties with the input values
                    AppService newService = new AppService
                    {
                        //ServiceId = Convert.ToInt32(comboservicename.SelectedValue),
                        ServiceName = txtServiceName.Text,
                        ServiceType = txttype.Text,
                        ServiceDescription = txtdesc.Text,
                        CategoryId = Convert.ToInt32(combocatid.SelectedValue), // Assuming CategoryId is an integer
                        ServiceDuration = Convert.ToInt32(txtdur.Text).ToString(), // Assuming ServiceDuration is an integer
                        Price = (float)Convert.ToDecimal(txtprice.Text) // Assuming Price is a decimal
                    };

                    // TODO: Add code to save the new service to the database
                    context.AppServices.Add(newService);
                    context.SaveChanges();
                    // Optionally, display a success message
                    MessageBox.Show("Service added successfully.", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    // Clear input fields after adding the service
                    ClearInputFields();
                }
                else
                {
                    // If input validation fails, display an error message
                    MessageBox.Show("Please fill in all required fields with valid values.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                // If an exception occurs during the addition process, display an error message
                MessageBox.Show("Error: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private bool ValidateInput()
        {
            // Implement validation logic here
            // Return true if all required fields contain valid values, otherwise return false

            // Check if any of the required fields are empty
            if (string.IsNullOrWhiteSpace(txtServiceName.Text) ||
                string.IsNullOrWhiteSpace(txttype.Text) ||
                string.IsNullOrWhiteSpace(txtdesc.Text) ||
                string.IsNullOrWhiteSpace(combocatid.Text) ||
                string.IsNullOrWhiteSpace(txtdur.Text) ||
                string.IsNullOrWhiteSpace(txtprice.Text))
            {
                return false;
            }

            // Additional validation checks can be added here

            return true; // All fields contain valid values
        }




        private void ClearInputFields()
        {
            // Clear the text of all input fields
            txtServiceName.Clear();
            txttype.Clear();
            txtdesc.Clear();
            combocatid.DataSource = null;
            txtdur.Clear();
            txtprice.Clear();
        }

        private void combocatid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                //if (ddlAddServise.SelectedItem != null)
                //{
                //    // Find the product from the ddlProduct by casting the selected item
                //    AppService product = (AppService)ddlProduct.SelectedItem;


                //}
                //else
                //{
                //    txtUnitPrice.Text = "";

                //    // Optional: Make the default values for qty & discount 1 and 0
                //    // txtQty.Text = "1";
                //    // txtDiscount.Text = "0";
                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void comboservicename_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                //if (ddlProduct.SelectedItem != null)
                //{
                //    // Find the product from the ddlProduct by casting the selected item
                //    AppService product = (AppService)ddlProduct.SelectedItem;


                //}
                //else
                //{
                //   // txtUnitPrice.Text = "";

                //    // Optional: Make the default values for qty & discount 1 and 0
                //    // txtQty.Text = "1";
                //    // txtDiscount.Text = "0";
                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void txtServiceName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
