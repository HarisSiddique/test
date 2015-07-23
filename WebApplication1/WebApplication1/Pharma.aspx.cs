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

namespace WebApplication1
{
    public partial class Pharma : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn; // conn2, conn3;
        //MySql.Data.MySqlClient.MySqlCommand cmd, cmd2, cmd3;
        //MySql.Data.MySqlClient.MySqlDataReader reader, reader2;

        String queryStr;
        //String queryStr2;
        //String queryStr3;


        String name;
        String des;

        protected void Page_Load(object sender, EventArgs e)
        {
            name = (String)(Session["uname"]);
            userLabel.Text = name;
            des = (String)(Session["udesig"]);
            desLabel.Text = des;

             if (!Page.IsPostBack)
            {
                loadGridview();
                loadUser();
                
            }

        }


        private void loadUser()
        {
            ddldoctor.DataSource = loadData();
            ddldoctor.DataTextField = "dr_name";
            ddldoctor.DataValueField = "dr_name";
            ddldoctor.DataBind();
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

            queryStr = "SELECT * FROM test.prscrip";
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

            queryStr = "SELECT * FROM test.prscrip WHERE dr_name='" + dis + "'";
            //cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            //cmd.ExecuteReader();
            MySql.Data.MySqlClient.MySqlDataAdapter adap = new MySql.Data.MySqlClient.MySqlDataAdapter(queryStr, conn);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            conn.Close();
            return (ds);
            
        }

        protected void ddldoctor_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadGridview(ddldoctor.SelectedItem.Value);
        }
    }
}
