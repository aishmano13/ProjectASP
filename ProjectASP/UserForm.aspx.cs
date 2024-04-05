using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class UserForm : System.Web.UI.Page
    {
        Concls objcls = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(User_ID) from Login_Tab";
            string usid = objcls.fn_Scaler(s);
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

            string st = "insert into User_REG values(" + user_id + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "'," + TextBox6.Text + ",'" + TextBox9.Text + "')";
            int i = objcls.fn_Nonquery(st);
            if (i != 0)
            {
                string str = "insert into Login_Tab values(" + user_id + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','User','Active')";
                int j = objcls.fn_Nonquery(str);
            }
        }
    }
}

        
    
