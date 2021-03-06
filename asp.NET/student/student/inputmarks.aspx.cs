﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class inputmarks : System.Web.UI.Page
    {
        const string bazaConnString = "server=mysql.lrk.si; User id=tt3710;password=tt3710;Persist Security Info=True;database=tt3710";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Equals(""))  //if is empty list
            {
                Label1.Text = "Ni več predmetov za vpis";
                return;
            }
            MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
            try
            {
                bazaPovezava.Open();
                string sqlSelect = "INSERT INTO mark VALUES ('','" + subject.SelectedValue+"','"+ DropDownList1.SelectedValue + "','" + mark.SelectedValue + "','" + yearlist.SelectedValue+"')";
                MySqlCommand bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
                bazaUkaz.ExecuteNonQuery();

                try
                {
                    sqlSelect = "DELETE FROM exam WHERE subject=" + subject.SelectedValue + " AND user=" + DropDownList1.SelectedValue;
                    bazaUkaz = new MySqlCommand(sqlSelect, bazaPovezava);
                    bazaUkaz.ExecuteNonQuery();
                }
                catch(Exception ec){}

                Label1.Text = "Uspešen vpis";
            }
            catch (Exception exce)
            {
                Label1.Text = "Prišlo je do napake pri pisanju v bazo." + exce;
            }
            finally
            {
                bazaPovezava.Close();
                SqlDataSource1.DataBind();
                DropDownList1.DataBind();
            }

        
        }
    }
}