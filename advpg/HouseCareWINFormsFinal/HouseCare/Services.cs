using HouseCareObjects.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace HouseCare
{
    public partial class frmOrders : Form
    {


        DBHomeServiceContext context;
        public frmOrders()
        {
            InitializeComponent();
            context = new DBHomeServiceContext();
        }

        private void frmOrders_Load(object sender, EventArgs e)
        {

            try
            {
                // ddlFilterCustomer.DataSource = context.Users.ToList(); ;

                //ddlFilterCustomer.DisplayMember = "ContactName";
                //ddlFilterCustomer.ValueMember = "CustomerID";
                //ddlFilterCustomer.SelectedItem = null;
            }
            catch (Exception)
            {

                throw; //in this case, we are throwing the exception so you can debug. Later, you should catch it and display and error messageusing MessageBox.Show(ex.Message);  
            }

            RefreshOrdersGridview();
        }


        private void btnFilter_Click(object sender, EventArgs e)
        {
            RefreshOrdersGridview();
        }

        private void btnResetFilter_Click(object sender, EventArgs e)
        {
            txtFilterOrderNo.Text = "";
            // ddlFilterCustomer.SelectedItem = null;
            RefreshOrdersGridview();
        }

        private void RefreshOrdersGridview()
        {
            try
            {

                dgvOrders.DataSource = null;

                var ordersToShow = context.AppServices.AsQueryable(); //get all if no filter is selected
                                                                      //AsQuerable() is needed since the output from Orders without the extention methods is just DBSet,
                                                                      //while the filter extention methods below require and return an IQuerable type

                if (txtFilterOrderNo.Text != "")
                {
                    ordersToShow = ordersToShow
                        .Where(x => x.ServiceId == Convert.ToInt32(txtFilterOrderNo.Text));

                    //if order id is specified in the filters, get the order with that id
                }
                dgvOrders.DataSource = ordersToShow.ToList();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (dgvOrders.SelectedCells.Count > 0 && dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value != null)
            {
                int cell = Convert.ToInt32(dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value);
                addservice frmOrdersDet = new addservice();
                frmOrdersDet.ShowDialog();
            }
            else
            {
                // Handle case where selected cell value is null or cannot be converted
                MessageBox.Show("Please select a valid cell.");

                // int cell = Convert.ToInt32(dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value);
                //frmDetailsDialogueEdit frmOrdersDet = new frmDetailsDialogueEdit(cell);
                // frmOrdersDet.ShowDialog();
            }
            RefreshOrdersGridview();


        }

        private void btnDetails_Click(object sender, EventArgs e)
        {
            if (dgvOrders.SelectedCells.Count > 0 && dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value != null)
            {
                int cell = Convert.ToInt32(dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value);
                frmDetailsDialogueEdit frmOrdersDet = new frmDetailsDialogueEdit(cell);
                frmOrdersDet.ShowDialog();
            }
            else
            {
                // Handle case where selected cell value is null or cannot be converted
                MessageBox.Show("Please select a valid cell.");

                // int cell = Convert.ToInt32(dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value);
                //frmDetailsDialogueEdit frmOrdersDet = new frmDetailsDialogueEdit(cell);
                // frmOrdersDet.ShowDialog();
            }
        }

        private void dgvOrders_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            //find the order
            int firstcell = Convert.ToInt32(dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value);
            AppService order = context.AppServices.Single(x => x.ServiceId == firstcell);


            if (MessageBox.Show("Are you sure you want to delete order (" + firstcell + ") & its details?", "Confirm Delete", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                try
                {
                    //Get all order details related to the selected order
                    //delete them
                    // var alldet = context.OrderDetails.Where(o => o.Id == order.Id);
                    // context.OrderDetails.RemoveRange(alldet);

                    //delete the selected order
                    context.AppServices.Remove(order);

                    //save context changes to actually excute the SQL statement
                    context.SaveChanges();

                    MessageBox.Show("Deleted successfully.");

                    //refresh the gridview after deleting the order
                    RefreshOrdersGridview();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private DBHomeServiceContext GetContext()
        {
            return context;
        }

        private void btnEditOrder_Click(object sender, EventArgs e, DBHomeServiceContext context)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void btnEditOrder_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    int selectedOrderId = Convert.ToInt32(dgvOrders.SelectedCells[0].OwningRow.Cells[0].Value);
            //    AppService selectedOrder = context.AppServices.Find(selectedOrderId);
            //    frmOrders frmOrdersAdd = new frmOrders(selectedOrder);
            //    frmOrdersAdd.ShowDialog();

            //    if (frmOrdersAdd.DialogResult == DialogResult.OK)
            //    {
            //        RefreshOrdersGridview();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message);
            //}

        }

        private void dgvOrders_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
