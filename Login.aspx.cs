using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using Makaan.helper;

namespace Makaan
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = user.getcon();
            string role = user.Login(txtEmail.Text, txtPassword.Text);

            if (role != null)
            {
                Session["UserEmail"] = txtEmail.Text;
                Session["UserRole"] = role;
                Response.Redirect(role == "Seller" ? "Seller/Index.aspx" : "Index.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid email or password!";
            }
        }
    }
}
