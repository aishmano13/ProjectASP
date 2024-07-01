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
    public partial class BillView : System.Web.UI.Page
    {
        Concls obj1 = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select t1.*,t2.* from Product_Tab t1 join Order_Tab t2 on t1.Product_ID=t2.Product_ID where Order_status='notpaid' and User_ID=" + Session["userid"] + "";
                DataSet ds = obj1.fn_dataset(sel);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                string st = "select * from Bill_Tab where User_ID=" + Session["userid"] + " and Bill_Status='unpaid'";
                SqlDataReader dr = obj1.fn_datareader(st);
                while (dr.Read())
                {
                    Label5.Text = dr["Bill_ID"].ToString();
                    Label6.Text = dr["Bill_Date"].ToString();
                    Label7.Text = dr["Grand_Total"].ToString();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckBalance.ServiceClient obj = new CheckBalance.ServiceClient();
            string bal = obj.Balancecheck(TextBox1.Text);
            int bl = Convert.ToInt32(bal);
            Label7.Text = bal;

            string str = "select Grand_Total from Bill_Tab where User_ID=" + Session["userid"] + "";
            string t = obj1.fn_Scaler(str);
            int gt = Convert.ToInt32(t);


           

            if (bl > gt)
            {
                string abc = "update Order_Tab set Cart_Status='unavilable' , Order_Status='payed' where User_ID=" + Session["userid"] + "";
                int i = obj1.fn_Nonquery(abc);

                string cba = "update Bill_Tab set Bill_Status='payed' where  User_ID=" + Session["userid"] + " ";
                int j = obj1.fn_Nonquery(cba);

                string c = "update Account_Tab set Balance_Amount=" + (bl - gt) + " where User_ID=" + Session["userid"] + "";
                int k = obj1.fn_Nonquery(c);

                Label4.Text = "payed";
            }
            else
            {
                Label4.Text = "Insufficient balance";
            }

        }
    }
}

//string a = "select max(Order_Id) from Order_Tab where User_ID='" + Session["userid"] + "'";
//string b = obj1.fn_Scaler(a);
//int count = Convert.ToInt32(b);
//if (count != 0)
//{
//    int pro_id = 0;
//    for (int ab = 1; ab <= count; ab++)
//    {
//        int pro_qty = 0, cart_qty = 0, qty = 0;
//        string stup = "select t1.,t2. from Product_Tab t1 join Order_Tab t2 on t1.Product_ID= t2.Product_ID where User_ID='" + Session["userid"] + "'";
//        SqlDataReader dr = obj1.fn_datareader(stup);
//        while (dr.Read())
//        {
//            pro_qty = Convert.ToInt32(dr["Product_Stock"]);
//            cart_qty = Convert.ToInt32(dr["Cart_Quantity"]);
//            pro_id = Convert.ToInt32(dr["Product_ID"]);
//            break;
//        }
//        qty = pro_qty - cart_qty;
//        string sup = "update Product_Tab set Product_Stock = " + qty + " where Product_ID=" + pro_id + "";
//        int up = obj1.fn_Nonquery(sup);
