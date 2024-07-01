using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class Feedback : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into Feedback_Tab values(" + Session["userid"] + ",'" + TextBox1.Text + "','waiting','pending')";
            int i = obj.fn_Nonquery(ins);
            if(i==1)
            {
              Label3.Text = "success";
            }
        }
    }
}