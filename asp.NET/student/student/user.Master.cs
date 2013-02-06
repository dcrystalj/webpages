using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class user : System.Web.UI.MasterPage
    {
        const string bazaConnString = "server=mysql.lrk.si; User id=tt3710;password=tt3710;Persist Security Info=True;database=tt3710";
        public string userid = "";
        public string name = "";
        public string mail = "";
        public string surname = "";

       
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
                string sqlSelect = "select * from user where id = '" + Session["id"] + "'";
                MySqlCommand bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
                MySqlDataReader reader = bazaUkaz.ExecuteReader();

                int s = 0;
                while (reader.Read())
                {
                    userid = reader["id"].ToString();
                    name = reader["name"].ToString();
                    surname = reader["surname"].ToString();
                    mail = reader["mail"].ToString();
                    s = Int32.Parse(reader["status"].ToString());
                }

                if (s < 1)
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