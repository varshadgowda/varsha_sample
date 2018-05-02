using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Sample1
{
    public partial class Category : System.Web.UI.Page
    {
        static string ConnectionString = ConfigurationManager.ConnectionStrings["Sample1ConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            fnLoadGrid();
        }

        protected void txtCategoryName_TextChanged(object sender, EventArgs e)
        {
            if (txtCategoryName.Text == string.Empty)
            {
                lblMessage.Text = "enter CategoryName";
            }
            else
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Category(CategoryName) values('" + txtCategoryName.Text + "')", con);
                cmd.CommandType = CommandType.Text;
                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblMessage.Text = "saved successfully";
                    txtCategoryName.Text = "";
                    lblMessage.Style.Add("color", "Blue");
                    fnLoadGrid();
                }
                con.Close();
            }
        }
        protected void fnLoadGrid()
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM CATEGORY",con);
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            grdCaategory.DataSource = dt;
            grdCaategory.DataBind();
            con.Close();
        }
        protected void imgDelete_OnClick(object sender, EventArgs e)
        {
            ImageButton img = sender as ImageButton;
            int CatID = Convert.ToInt32(img.CommandName.ToString());
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Category where categoryID=" + CatID + "",con);
            cmd.CommandType = CommandType.Text;
            if(cmd.ExecuteNonQuery()>0)
            {
                lblMessage.Text = "Deleted Successfully";
                txtCategoryName.Text = "";
                fnLoadGrid();
            }
        }
    }
}
    

              

     