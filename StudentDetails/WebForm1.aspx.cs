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
    public partial class WebForm1 : System.Web.UI.Page
    {
        static string ConnectionString = ConfigurationManager.ConnectionStrings["PractisesConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = String.Empty;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "")
            {
                lblMessage.Text = "Please enter GenderName";
            }
            else
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Gender(Name)values('" + txtName + "')", con);
                cmd.CommandType = CommandType.Text;
                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblMessage.Text = "saved successfully";
                    txtName.Text = "";
                    lblMessage.Style.Add("color", "green");

                }
                else
                {
                    lblMessage.Text = "error while saving data";
                }
            }
        }

        
    }
}

         