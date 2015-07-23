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
    public partial class Home : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn, conn2, conn3;
        MySql.Data.MySqlClient.MySqlCommand cmd, cmd2, cmd3;
        //MySql.Data.MySqlClient.MySqlDataReader reader, reader2;

        String queryStr;
        String queryStr2;
        String queryStr3;


        String name;
        String des;
        protected void Page_Load(object sender, EventArgs e)
        {

           // if (!Page.IsPostBack)
            {
                //MessageBox.Show("invalid");
                name = (String)(Session["uname"]);
                userLabel.Text = name;
                des = (String)(Session["udesig"]);
                desLabel.Text = des;
            }
            
            if (!Page.IsPostBack)
            {
                loadGridview();
                loadUser();
                
            }
           
        }

        private void loadUser()
        {
            ddluser.DataSource = loadData();
            ddluser.DataTextField = "for_disease";
            ddluser.DataValueField = "for_disease";
            ddluser.DataBind();
        }

        private void loadGridview()
        {
            GridView1.DataSource = loadData();
            GridView1.DataBind();
        }

        private void loadGridview(String dis)
        {
            GridView1.DataSource = loadData(dis);
            GridView1.DataBind();
        }

        private DataSet loadData()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT * FROM test.drugs";
            //cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            //cmd.ExecuteReader();
            MySql.Data.MySqlClient.MySqlDataAdapter adap = new MySql.Data.MySqlClient.MySqlDataAdapter(queryStr, conn);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            conn.Close();
            return (ds);
            
        }

        private DataSet loadData(String dis)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT * FROM test.drugs WHERE for_disease='"+dis+"'";
            //cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            //cmd.ExecuteReader();
            MySql.Data.MySqlClient.MySqlDataAdapter adap = new MySql.Data.MySqlClient.MySqlDataAdapter(queryStr, conn);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            conn.Close();
            return (ds);
            
        }

        protected void ddluser_SelectedIndexChanged(object sender, EventArgs e)
        {
            //String ddlValue = new String(ddluser.SelectedValue());
            loadGridview(ddluser.SelectedItem.Value);
        }


        protected void sendPrescriptionMethod(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();
            String connString2 = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();
            String connString3 = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConString"].ToString();


            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn2 = new MySql.Data.MySqlClient.MySqlConnection(connString2);
            conn3 = new MySql.Data.MySqlClient.MySqlConnection(connString3);
            conn.Open();
            conn2.Open();
            conn3.Open();

            queryStr = "";
            queryStr2 = "";
            queryStr3 = "";

            queryStr = "INSERT INTO test.prscrip (pr_ID, pa_ID, dr_name, medicine, quantity)" +
                "VALUES('" + pr_id.Text + "','" + pa_id.Text + "','"
                + name + "','" + med_name.Text + "','" + quantity.Text + "')";

            queryStr2 = "INSERT INTO test.patient (pa_ID, medicine, quantity, pa_name)" +
                "VALUES('" + pa_id.Text + "','" + med_name.Text + "','"
                + quantity.Text + "','" + pa_name.Text + "')";

            queryStr3 = "UPDATE test.drugs SET drugs.quantity = drugs.quantity-'" + 
                quantity.Text + "' WHERE drugs.medicine='" + med_name.Text + "'";

            // queryStr2 = "DELETE FROM test.users WHERE username='" + userTextBox.Text +
            //  "'AND password='" + passwordTextBox.Text + "'";


            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd2 = new MySql.Data.MySqlClient.MySqlCommand(queryStr2,conn2);
            cmd3 = new MySql.Data.MySqlClient.MySqlCommand(queryStr3, conn3);

            cmd.ExecuteReader();
            cmd2.ExecuteReader();
            cmd3.ExecuteReader();

            pa_id.Text = String.Empty;
            pr_id.Text = String.Empty;
            med_name.Text = String.Empty;
            quantity.Text = String.Empty;
            pa_name.Text = String.Empty;


            conn3.Close();
            conn2.Close();  
            conn.Close();

            acknowLabel.Visible = true;
            acknowLabel.Text = "Prescription Received by Server";
        }

        

               
        
    }
}
