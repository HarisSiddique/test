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
    public partial class Registration : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd, cmd2;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String queryStr;
        String queryStr2;
        
        String name;
        String des;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void registerEventMethod(object sender, EventArgs e)
        {
            registerUser();

        }

        private void registerUser()
        {
            
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "";
            queryStr2 = "";

            queryStr = "INSERT INTO test.users (username, password, Name, Designation)" + 
                "VALUES('"+userTextBox.Text +"','"+passwordTextBox.Text+"','"
                +NameTextBox.Text+"','"+designationTextBox.Text+"')";

            queryStr2 = "SELECT * FROM test.users WHERE username='" + userTextBox.Text +
                "'AND password='" + passwordTextBox.Text + "'";

           // queryStr2 = "DELETE FROM test.users WHERE username='" + userTextBox.Text +
             //  "'AND password='" + passwordTextBox.Text + "'";
            

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr,conn);


            cmd.ExecuteReader();
            conn.Close();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            cmd2 = new MySql.Data.MySqlClient.MySqlCommand(queryStr2, conn);


            reader = cmd2.ExecuteReader();

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

                //MessageBox.Show(name+"|"+des);
                
            }

            Response.Redirect("Home.aspx", false);
            NameTextBox.Text = String.Empty;
            userTextBox.Text = String.Empty;
            passwordTextBox.Text = String.Empty;
            designationTextBox.Text = String.Empty;

            reader.Close();
            conn.Close();

        }

    }
}
