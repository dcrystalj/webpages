using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class admin : System.Web.UI.MasterPage
    {
        const string bazaConnString = "server=mysql.lrk.si; User id=tt3710;password=tt3710;Persist Security Info=True;database=tt3710";

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
             try
            {
              
            if (Session["id"] == null)
            {
                Server.Transfer("/login.aspx");
            }

            bazaPovezava.Open();
            string sqlSelect = "select status from user where id = '" + Session["id"] + "'";
            MySqlCommand bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
            int s = Int32.Parse(bazaUkaz.ExecuteScalar().ToString());

            if (s < 2)
            {
                Server.Transfer("/login.aspx");
            }
            }
             catch (Exception exce)
             {
             }
             finally
             {
                 bazaPovezava.Close();
             }
        }
    }
}