using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class login : System.Web.UI.Page
    {

        const string bazaConnString = "server=mysql.lrk.si; User id=tt3710;password=tt3710;Persist Security Info=True;database=tt3710";
    
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Prihajate iz države "+ wsGeoIp();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
                try
                {
                    bazaPovezava.Open();
                    string sqlSelect ="select status from user where id = '" + loginusername.Text+"' and passwd = '"+loginpassword.Text+"'";
                    MySqlCommand bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
                    string result = bazaUkaz.ExecuteScalar().ToString();

                    if (result.Equals("")){
                        Label1.Text = "Napačno izpolnjeno";
                        return;
                    }

                    int s = Int32.Parse(result);
                    
                        if (s == 1)
                        {
                            Session["id"]=loginusername.Text;
                            Server.Transfer("/user.aspx");
                        }
                        else if (s == 2)
                        {
                            Session["id"] = loginusername.Text;
                            Server.Transfer("/admin.aspx");
                        }
                        else
                            Server.Transfer("/login.aspx");
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


        public string wsGeoIp()
        {
            geoRef.GeoIP result = new geoRef.GeoIPService().GetGeoIPContext();
            if (result.ReturnCode == 1)
            {
                return result.CountryName.ToString();
            }
            else
            {
                return "neznano";
            }
        }
    }
}