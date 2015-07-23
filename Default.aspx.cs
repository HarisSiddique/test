using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String queryStr;
        String name;
        String des;




        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submitEventMethod(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "";

            queryStr = "SELECT * FROM test.users WHERE username='"+TextBox1.Text+
                "'AND password='"+TextBox2.Text+"'";
                

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            name = "";
            des = "";
            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("Name"));
                des = reader.GetString(reader.GetOrdinal("Designation"));
            }

            if (reader.HasRows)
            {
                Session["uname"] = name;
                Session["udesig"] = des;
                Response.BufferOutput = true;
                if (des == "Doctor")
                {
                    Response.Redirect("Home.aspx", false);
                }
                if (des == "Pharma")
                {
                    Response.Redirect("Pharma.aspx", false);
                }
            }
            else
            {
                MessageBox.Show("Invalid User");
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                
            }

            reader.Close();
            conn.Close();
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
 
        }

        protected void registerEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx",false);
        }
    }
}
