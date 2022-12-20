using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace Kitchen_project5
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            string ui = Request.QueryString["userId"];
            int IU = Convert.ToInt32(ui);

            string pi = Request.QueryString["productId"];
            int IP= Convert.ToInt32(pi);

            SqlConnection connect = new SqlConnection("data source =DESKTOP-L7EOP8B\\SQLEXPRESS; database =KitchenProject ; integrated security=SSPI");
            connect.Open();
            SqlCommand comand = new SqlCommand("insert into comments values('"+IU+"','"+IP+"','"+add_comment.Text+"')", connect);
            comand.ExecuteNonQuery();
            connect.Close();


            SqlConnection connect1 = new SqlConnection("data source =DESKTOP-L7EOP8B\\SQLEXPRESS; database =KitchenProject ; integrated security=SSPI");
            connect1.Open();
            string join = "select * from comments inner join product on product.id=comments.productId inner join userReg on comments.userId=userReg.userId;";
            SqlCommand comand1 = new SqlCommand(join, connect1);
            
            SqlDataReader reada = comand1.ExecuteReader();
            //string image_URL = "~/Files/" + reada[2];
            string table = "<table class='commented'><th>Comments</th>";

            while (reada.Read())
            {
                proN.Text = (string)reada[4];
                if (((string)reada[2]).Length > 0)
                {
                    //string image_URL = (string)reada[2];
                    table += $"<tr><td>{reada[10]} : \r </td> <td>{reada[2]}</td></tr><tr><td><hr/></td><td><hr/></td></tr>";
                    add_comment.Text = "";
                }



            }
            table += "</table>";
            Label1.Text = table;
            connect1.Close();
            //proN.Text = pn;
            ////////////////
            //string pn = Request.QueryString["produbtN"];
            //proN.Text = pn;
            //string file = pn+".txt";
            //string x =@"C:\Users\Orange\source\repos\Kitchen_project5\Kitchen_project5\" + file;
            //using (StreamWriter co = File.AppendText(x))
            //{
            //    co.WriteLine(add_comment.Text);
            //}
            //string[] rea = File.ReadAllLines(x);

            //Label[] l = new Label[];

            //for (int i = 0; i < l.Length; i++)
            //{
            //    l[i] = new Label();
            //    l[i].ID = $"lbl{i}";
            //}


            //for (int i = 0; i < l.Length; i++)
            //{
            //    if (rea[i].Length > 0)
            //    {
            //        l[i].Text = rea[i];
            //        add_comment.Text = "";
            //        this.Controls.Add(l[i]);
            //        l[i].CssClass = "commented";
            //    }
            //}
        }

        protected void post_Click(object sender, EventArgs e)
        {

        }
    }
}