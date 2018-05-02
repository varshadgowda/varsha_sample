using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practises
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Student Details";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtSemisterName.Text=="")
            {
                lblMessage.Text = "please enter semister name";
            }
        }
    }
}