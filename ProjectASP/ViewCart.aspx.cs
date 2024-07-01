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
    public partial class ViewCart : System.Web.UI.Page
    {
        Concls obj = new Concls();
        int cid;
        int cq;
        int tp;
        string cst;
        int pid;
        int uid;

        int gt = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
        }
        public void grid_bind()
        {
            string st = "select Product_Tab.Product_Name,Product_Tab.Product_Image,Product_Tab.Product_Details,Cart_Tab.Cart_ID,Cart_Tab.Cart_Quantity,Cart_Tab.Total_Price,Cart_Tab.Cart_Status from Product_Tab join Cart_Tab on Product_Tab.Product_ID=Cart_Tab.Product_ID where User_ID='" + Session["userid"] + "'";
            DataSet ds = obj.fn_dataset(st);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            Session["cartid"] = Convert.ToInt32(e.CommandArgument);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select t2.Product_Price from Product_Tab t2 join Cart_Tab t1 on t1.Product_ID = t2.Product_ID where t1.Cart_ID='" + Session["cartid"] + "'";
            string f = obj.fn_Scaler(s);
            int q = Convert.ToInt32(TextBox1.Text);
            int p = Convert.ToInt32(f);
            int total_price = q * p;
            string k = "update Cart_Tab set Cart_Quantity='" + TextBox1.Text + "',Total_Price='" + total_price + "'where Cart_ID='" + Session["cartid"] + "' ";
            int i = obj.fn_Nonquery(k);
            if (i == 1)
            {
                grid_bind();
                Label2.Text = "success";
            }

        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string str = "delete from Cart_Tab where Cart_ID=" + id + "";
            int i = obj.fn_Nonquery(str);
            if (i == 1)
            {
                grid_bind();
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mx = "select Max(Cart_ID) from Cart_Tab";
            string m = obj.fn_Scaler(mx);
            int max = Convert.ToInt32(m);

            for (int i = 1; i <= max; i++)
            {
                string s = "select User_ID from Cart_Tab where cart_ID=" + i + " ";
                string st = obj.fn_Scaler(s);
                int q = Convert.ToInt32(st);
                int id = Convert.ToInt32(Session["userid"]);
                if (q == id)
                {
                    string ca = "select * from Cart_Tab where Cart_ID=" + i + "";
                    SqlDataReader dr = obj.fn_datareader(ca);
                    while (dr.Read())
                    {
                        cid = Convert.ToInt32(dr["Cart_ID"].ToString());
                        cq = Convert.ToInt32(dr["Cart_Quantity"].ToString());
                        tp = Convert.ToInt32(dr["Total_Price"].ToString());
                        cst = dr["Cart_Status"].ToString();
                        uid = Convert.ToInt32(dr["User_ID"].ToString());
                        pid = Convert.ToInt32(dr["Product_ID"].ToString());
                    }
                    gt = gt + tp;
                    string str = "insert Into Order_Tab values ('notpaid'," + cid + "," + cq + "," + tp + ",'" + cst + "'," + uid + "," + pid + ")";
                    int j = obj.fn_Nonquery(str);
                    string strn = "insert into Bill_Tab values('" + DateTime.Now.ToString("yyyy-MM-dd") + "','unpaid'," + uid + "," + gt + ")";
                    int k = obj.fn_Nonquery(strn);
                    
                    Response.Redirect("BillView.aspx");



                }
            }

        }
    }
}