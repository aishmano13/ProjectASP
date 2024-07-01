using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class AccountDetails : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string str = "insert into Account_Tab values(" + TextBox1.Text + ",'" + TextBox2.Text + "'," + TextBox3.Text + "," + Session["userid"] + ")";
           int i = obj.fn_Nonquery(str);
           if(i==1)
           {
            Label4.Text = "Inserted";
           }
        }
    }
}