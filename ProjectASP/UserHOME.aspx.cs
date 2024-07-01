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
    public partial class UserHOME : System.Web.UI.Page
    {
        Concls obj = new Concls();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string st = "select * from Category_Tab";
                DataSet ds = obj.fn_dataset(st);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["Categoryid"] = id;
            Response.Redirect("ViewProducts.aspx");
        }
    }
}