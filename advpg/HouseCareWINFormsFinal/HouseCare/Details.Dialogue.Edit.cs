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
    public partial class frmDetailsDialogueEdit : Form
    {
        DBHomeServiceContext context;
        AppService ord = new AppService();
        internal AppService orderdet;

        bool isNew; //we can use this flag to indicate wether the user is creating new record, or updating existing one

        public frmDetailsDialogueEdit(int orderId) //if new line, we just need the order ID
        {
            InitializeComponent();
            context = new DBHomeServiceContext();
            orderdet = new AppService();
            txtOrderID.Text = orderId.ToString();

            isNew = true; //Setting the flag is an alternative way of knowing whether the user selected new or edit
        }
        public frmDetailsDialogueEdit(AppService o) //if editing existing line, we need OrderDetail object
        {
            InitializeComponent();
            context = new DBHomeServiceContext();
            orderdet = o;

            isNew = false; //Setting the flag is an alternative way of knowing whether the user selected new or edit 
        }

        private void frmOrderDetailAddEdit_Load(object sender, EventArgs e)
        {
            // Load data into ddlProduct dropdown
            ddlProduct.DataSource = context.AppServices.ToList();
            ddlProduct.DisplayMember = "ServiceName";
            ddlProduct.ValueMember = "ServiceId";

            if (!isNew)
            {
                // If it's not a new entry, populate controls with existing data
                ddlProduct.SelectedValue = orderdet.ServiceId;
                txtOrderID.Text = orderdet.ServiceId.ToString(); // Corrected: Use .Text instead of .SelectedText
                txttype.Text = orderdet.ServiceType; // Corrected: Use .Text instead of .SelectedText
                txtdesc.Text = orderdet.ServiceDescription; // Corrected: Use .Text instead of .SelectedText
                txtdur.Text = orderdet.ServiceDuration; // Corrected: Use .Text instead of .SelectedText
                txtUnitPrice.Text = orderdet.Price.ToString(); // Corrected: Use .Text instead of .SelectedText
                ddlProduct.Enabled = false;
            }

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (isNew)
            {
                orderdet.ServiceId = Convert.ToInt32(ddlProduct.SelectedValue);
                orderdet.ServiceName = ddlProduct.Text;
                orderdet.ServiceType = txttype.Text;
                orderdet.ServiceDescription = txtdesc.Text;
                orderdet.ServiceDuration = txtdur.Text;

                context.AppServices.Update(orderdet);
                context.AppServices.Add(orderdet);
            }
            else
            {
                context.AppServices.Update(orderdet);
            }

            context.SaveChanges();
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (isNew && ddlProduct.SelectedItem != null)
            {
                AppService selectedService = (AppService)ddlProduct.SelectedItem;
                txtOrderID.Text = selectedService.ServiceId.ToString();
                txttype.Text = selectedService.ServiceType;
                txtdesc.Text = selectedService.ServiceDescription;
                txtdur.Text = selectedService.ServiceDuration;
                txtUnitPrice.Text = selectedService.Price.ToString();
            }
        }

        private void txtUnitPrice_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void txtOrderID_TextChanged(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
