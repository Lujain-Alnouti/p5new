using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kitchen_project5
{
    public partial class SP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //string x = Server.MapPath(@"~\comment.txt");
            //using (StreamWriter co = File.AppendText(x))
            //{
            //    co.WriteLine(add_comment.Text);
            //}
            //string[] rea = File.ReadAllLines(x);

            //Label[] l = new Label[rea.Length];

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
            //}C:\Users\Orange\source\repos\Kitchen_project5\Kitchen_project5\comment.txt
            FileStream f1 = null;
            string filepath =Label1.Text+".txt";
                string paa =@"C:\\Users\\Orange\\source\\repos\\Kitchen_project5\\Kitchen_project5\"+filepath;
            if (!File.Exists(paa))
            {
                using (f1 = File.Create(paa)) { };



            }
        }

        protected void post_Click(object sender, EventArgs e)
        {

        }

        protected void addcommwnrt_Click(object sender, EventArgs e)
        {

            string pn = Label1.Text;
            //string pID = Request.QueryString["PID"];
            //int iid = Convert.ToInt32(pID);
            int iid = 2;
            //string uID = Request.QueryString["UID"];
            //int iiu = Convert.ToInt32(pID);
            int uID = 8;
            Response.Redirect("Comments.aspx?userId="+uID+"&productId="+iid);
        }
    }
}