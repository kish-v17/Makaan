using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Makaan.helper
{
    public class UserClass
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public SqlConnection getcon()
        {
            string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();
            return con;
        }
        public bool insert(string fnm, string lnm, string email, string phn, string city,string pwd, string role)
        {
            cmd = new SqlCommand("insert into UserTbl(FirstName,LastName,Email,Mobile,City,Password,Role) values(@fnm,@lnm,@eml,@phn,@city,@pwd, @role)",con);
            cmd.Parameters.AddWithValue("@fnm",fnm);
            cmd.Parameters.AddWithValue("@lnm",lnm);
            cmd.Parameters.AddWithValue("@eml",email);
            cmd.Parameters.AddWithValue("@phn",phn);
            cmd.Parameters.AddWithValue("@city",city);
            cmd.Parameters.AddWithValue("@pwd",pwd);
            cmd.Parameters.AddWithValue("@role",role);
            if (cmd.ExecuteNonQuery()>=1)
            {
                return true;
            }
            return false;
        }
        public string Login(string email, string password)
        {
            SqlDataAdapter da = new SqlDataAdapter($"SELECT Role FROM UserTbl WHERE Email = '{email}' AND Password = '{password}'", con);

            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                return ds.Tables[0].Rows[0]["Role"].ToString(); 
            }
            return null; 
        }

    }

}