using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class AdminForm : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(User_ID) from Login_Tab";
            string usid = obj.fn_Scaler(s);
            int user_id = 0;
            if (usid == "")
            {
                user_id = 1;
            }
            else
            {
                int useid = Convert.ToInt32(usid);
                user_id = useid + 1;
            }
            string st = "insert into Admin_REG values(" + user_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
            int i = obj.fn_Nonquery(st);
            if (i != 0)
            {
                string str = "insert into Login_Tab values(" + user_id + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','Admin','Active')";
                int j = obj.fn_Nonquery(str);
            }
        }
    }
}

        
    
