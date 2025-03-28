using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Makaan.helper;

namespace Makaan
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        UserClass user;
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
        }
        void startcon()
        {
            con = new SqlConnection();
            user = new UserClass();
            con = user.getcon();
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con = user.getcon();
            if (user.insert(txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtPhone.Text, txtCity.Text, txtPassword.Text, ddlUserType.SelectedValue)) {
                Response.Redirect("Index.aspx");
            }
        }
    }
}