using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practises
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "")
            {
                lblErrorMessage.Text = "Please enter username";
            }
            else if (txtPassword.Text == "")
            {
                lblErrorMessage.Text = "Please Enter Password";
            }
            else if (txtUserName.Text != "admin" && txtPassword.Text != "admin")
            {
                lblErrorMessage.Text = "Invalid Username and Password";
            }
            else
            {
                Response.Redirect("Semister.aspx");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUserName.Text = string.Empty;
            txtPassword.Text = string.Empty;
        }
    }
}




 


     