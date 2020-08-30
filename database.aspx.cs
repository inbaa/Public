using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace LibraryManagement
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        // Public variable

        String con = "Server=localhost; Database=test; Uid=root; Password=;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Connection
            MySqlConnection mycon = new MySqlConnection(con);
            try
            {
                if (mycon.State == ConnectionState.Closed)
                    mycon.Open();
            //insert query
                MySqlCommand cmd = new MySqlCommand("insert into info(name,dob) values(@1,@2)", mycon);
                cmd.Parameters.AddWithValue("@1", name.Text.Trim());
                cmd.Parameters.AddWithValue("@2", dob.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data added')</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                mycon.Close(); 
                name.Text = "";
                dob.Text = "";
            }


        }
    }
}