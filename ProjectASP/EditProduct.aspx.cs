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
    public partial class EditProduct : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_bind();
        }
        public void grid_bind()
        {
            string s = "select * from Product_Tab";
            DataSet ds = ob.fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string u = "update Product_Tab set Product_Name='" + TextBox1.Text + "',Product_Image='" + p + "',Product_Details='" + TextBox2.Text + "',Product_Price=" + TextBox3.Text + ",Product_Stock='" + TextBox4.Text + "'";
            int k = ob.fn_Nonquery(u);
            if(k==1)
            {
                Label6.Text = "*Updated";
            }
            grid_bind();
        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int id = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id;
            string st = "select * from Product_Tab Where Product_ID="+ Session["uid"] + "";
            SqlDataReader dr = ob.fn_datareader(st);
            while (dr.Read())
            {
                TextBox1.Text = dr["Product_Name"].ToString();
                Image1.ImageUrl = dr["Product_Image"].ToString();
                TextBox2.Text = dr["Product_Details"].ToString();
                TextBox3.Text = dr["Product_Price"].ToString();
                TextBox4.Text = dr["Product_Stock"].ToString();
            }

        }

        protected void LinkButton4_Command(object sender, CommandEventArgs e)
        {
            int id1 = Convert.ToInt32(e.CommandArgument);
            string str = "select Product_Status from Product_Tab where Product_ID=" + id1 + "";
            string s = ob.fn_Scaler(str);
            if (s == "Available")
            {
                string d = "update Product_Tab set Product_Status= 'Unavailable' where Product_ID=" + id1 + "";
                int i = ob.fn_Nonquery(d);
                grid_bind();
            }
            else
            {
                string k = "update Product_Tab set Product_Status= 'Available' where Product_ID=" + id1 + "";
                int j = ob.fn_Nonquery(k);
                grid_bind();
            }
        }
    }
}