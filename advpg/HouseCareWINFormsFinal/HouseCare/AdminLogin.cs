
namespace HouseCare
{
    public partial class AdminLogin : Form
    {
        public AdminLogin()
        {
            InitializeComponent();
        }

        private void Label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            if ((textBox1.Text != string.Empty || textBox2.Text != string.Empty) || (textBox1.Text != string.Empty && textBox2.Text != string.Empty))
            {

                if ((textBox1.Text == "admin@gmail.com") && (textBox2.Text == "@Admin123"))

                {

                    MessageBox.Show("Logged in successfully...");
                    frmHome Home = new frmHome();
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

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void AdminLogin_Load(object sender, EventArgs e)
        {

        }
    }
}
