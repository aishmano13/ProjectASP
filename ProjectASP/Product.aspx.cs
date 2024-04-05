using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ProjectASP
{
    public partial class Product : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
         if(!IsPostBack)
            {
                string str = "select Category_Name,Category_ID from Category_Tab";
                DataSet ds = obj.fn_dataset(str);
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "Category_Name";
                DropDownList2.DataValueField = "Category_ID";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "~select~");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s));
            string st = "insert into Product_Tab values(" + DropDownList2.SelectedItem.Value + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + s + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','Available')";
            int k = obj.fn_Nonquery(st);
            if(k==1)
            {
                Label8.Text = "item inserted";
            }
        }
    }
}