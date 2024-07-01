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
    public partial class ViewSingleProduct : System.Web.UI.Page
    {
        Concls objcls = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select * from Product_Tab where Product_ID=" + Session["ProductId"] + "";
            SqlDataReader dr = objcls.fn_datareader(s);
            while(dr.Read())
            {
                Label1.Text = dr["Product_Name"].ToString();
                Label2.Text = dr["Product_Details"].ToString();
                Label3.Text = dr["Product_Price"].ToString();
                Image1.ImageUrl = dr["Product_Image"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(Cart_ID) from Cart_Tab";
            string cartid = objcls.fn_Scaler(s);
            int cart_id = 0;
            if(cartid=="")
            {
                cart_id = 1;
            }
            else
            {
                int cartd = Convert.ToInt32(cartid);
                cart_id = cartd + 1;
            }
            string k= "select Product_Price from Product_Tab where Product_ID="+Session["ProductId"]+"";
            string st = objcls.fn_Scaler(k);
            int i = Convert.ToInt32(TextBox1.Text);
            int j = Convert.ToInt32(st);
            int tlprice = i * j;
            string str = "insert into Cart_Tab values(" + cart_id + "," + Session["ProductId"] + "," + Session["userid"] + "," + TextBox1.Text + ",'" + tlprice + "','Available')";
            int h = objcls.fn_Nonquery(str);
            if(h==1)
            {
                Label4.Text="Added to cart";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHOME.aspx");
        }
    }
}