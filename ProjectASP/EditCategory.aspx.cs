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
    public partial class EditCategory : System.Web.UI.Page
    {
        Concls objcls = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_bind();
        }
        public void grid_bind()
        {
            string s = "select * from Category_Tab";
            DataSet ds = objcls.fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int id = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id;
            string st = "select * from Category_Tab where Category_ID=" + id + "";
            SqlDataReader dr = objcls.fn_datareader(st);
            while (dr.Read())
            {
                TextBox1.Text = dr["Category_Name"].ToString();
                Image1.ImageUrl = dr["Category_Image"].ToString();
                TextBox2.Text = dr["Category_Description"].ToString();
            }
        }

        protected void LinkButton4_Command(object sender, CommandEventArgs e)
        {
            int id1 = Convert.ToInt32(e.CommandArgument);
            string s = "select Category_Status from Category_Tab where Category_ID=" + id1 + "";
            string str = objcls.fn_Scaler(s);
            if (str == "Available")
            {
                string r = "update Category_Tab set Category_Status='currently unavailable' where Category_ID=" + id1 + "";
                int m = objcls.fn_Nonquery(r);
                grid_bind();
            }
            else
            {
                string r = "update Category_Tab set Category_Status='currently unavailable' where Category_ID=" + id1 + "";
                int n = objcls.fn_Nonquery(r);
                grid_bind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string g = "update Category_Tab set Category_Name='" + TextBox1.Text + "',Category_Image='" + p + "',Category_Description='" + TextBox2.Text + "' where Category_ID=" + Session["uid"] + "";
            int up = objcls.fn_Nonquery(g);
            if (up == 1)
            {
                Label4.Text = "*Updated";
            }
            grid_bind();
        }
    }
}
