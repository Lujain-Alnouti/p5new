using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace Kitchen_project5
{
    public partial class UserSales_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try { 
            string str = Request.QueryString["id"];
            int x = Convert.ToInt32(str);
            SqlConnection cc = new SqlConnection("data source =DESKTOP-L7EOP8B\\SQLEXPRESS; database =KitchenProject ; integrated security=SSPI");

            //SqlCommand comand = new SqlCommand("select * from name_and_password", cc);
            cc.Open();
            string q = "select * from userReg where userId='"+x+"'";
            SqlCommand com= new SqlCommand(q,cc);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.Read()) { 
            username.Text = (string) sdr[1];
            useremail.Text = (string)sdr[2];
                //com.ExecuteNonQuery();

            }
            cc.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);

            }

            ShowUser();
           

        }

        private void ShowUser()
        {
            try { 
            SqlConnection connect = new SqlConnection("data source =DESKTOP-L7EOP8B\\SQLEXPRESS; database =KitchenProject ; integrated security=SSPI");
            SqlCommand comand = new SqlCommand("select * from cart", connect);
            connect.Open();

            SqlDataReader reada = comand.ExecuteReader();
            //string image_URL = "~/Files/" + reada[2];
            string table = "<table class='table table-striped'> <tr><th>Product Image</th> <th>Name</th> <th>Quantity</th>";

            while (reada.Read())
            {

                string image_URL = (string)reada[2];
                table += $"<tr><td>{image_URL}</td><td>{reada[1]}</td><td>{reada[2]}</td><td>{reada[3]}</td></tr>";



            }
            table += "</table>";
            users.Text = table;
            connect.Close();
            }
            catch (Exception ex1)
            {
                Response.Write(ex1.Message);

            }
        }
    }
}