using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class LoginForm : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(User_ID) from Login_Tab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            string cid = obj.fn_Scaler(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string st = "select User_ID from Login_Tab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string id = obj.fn_Scaler(st);
                Session["userid"] = id;
                string strin = "select Login_Type from Login_Tab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string logt = obj.fn_Scaler(strin);
                if (logt == "Admin")
                {
                    Label3.Text = "Admin";
                    Response.Redirect("AdminHOME.aspx");

                }
                else if (logt == "User")
                {
                   Label3.Text = "User";
                    Response.Redirect("UserHOME.aspx");
                }
            }
        }
    }
}   
