using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class Category : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "~/Photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s));
            string str = "insert into Category_Tab values('" + TextBox1.Text + "','" + s + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "')";
            int st = obj.fn_Nonquery(str);
            if(st==1)
            {
                Label5.Text = "inserted";
            }
        }
    }
}