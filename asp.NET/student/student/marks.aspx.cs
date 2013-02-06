using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class marks : System.Web.UI.Page
    {
        const string bazaConnString = "server=mysql.lrk.si; User id=tt3710;password=tt3710;Persist Security Info=True;database=tt3710";
    
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = GridView1.SelectedRow.Cells[1].Text;
            MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
            try
            {
                bazaPovezava.Open();
                string sqlSelect = "select description from subject where id = '" + id + "'";
                MySqlCommand bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
                string result = bazaUkaz.ExecuteScalar().ToString();

                Label1.Text = result;
            }
            catch (Exception exce)
            {
                Label1.Text = "Napacno izpolnjeni podatki";
            }
            finally
            {
                bazaPovezava.Close();
            }
        }
    }
}