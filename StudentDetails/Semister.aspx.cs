using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Practises
{
    public partial class Semister : System.Web.UI.Page
    {
        static string ConnectionString = ConfigurationManager.ConnectionStrings["PractisesConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSemisterName.Text = string.Empty;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtSemisterName.Text == "")
            {
                lblMessage.Text = "please enter semister name.";
            }

            else
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Semister(semistername) values('" + txtSemisterName.Text + "')", con);
                cmd.CommandType = CommandType.Text;
                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblMessage.Text = "saved Successfully";
                    txtSemisterName.Text = "";
                    lblMessage.Style.Add("color", "green");
                }
                else
                {
                    lblMessage.Text = "Error while saving data.";
                }
            }
        }
    }
}