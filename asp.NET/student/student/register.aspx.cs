using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class register : System.Web.UI.Page
    {
        const string bazaConnString = "server=mysql.lrk.si; User id=tt3710;password=tt3710;Persist Security Info=True;database=tt3710";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
                try
                {
                    bazaPovezava.Open();//INSERT INTO user VALUES ('$id','$name','$surname','$mail','1','$passwd')
                    string sqlSelect = "INSERT INTO user VALUES ('"+studentid.Text +"','" + name.Text + "','" + surname.Text + "','" + mail.Text + "','1','" + passwd.Text + "')";
                    MySqlCommand bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
                    bazaUkaz.ExecuteNonQuery();


                    Label1.Text = "Uspešen vpis";
                }
                catch (Exception exce)
                {
                    Label1.Text = "Prišlo je do napake pri pisanju v bazo." + exce;
                }
                finally
                {
                    bazaPovezava.Close();
                }
            }
            else
            {
                Label1.Text = "Napacno izpolnjeno";
            }
        }
    }
}