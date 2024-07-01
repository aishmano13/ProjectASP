using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace ProjectASP
{
    public partial class ViewFeedback : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
        }
        public void grid_bind()
        {
            string s = "select * from Feedback_Tab where Status ='pending'";
            DataSet ds = obj.fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int i = Convert.ToInt32(e.CommandArgument);
            Session["fid"] = i;
            //string f = "select t1.,t2. from Feedback_Tab t1 join User_REG t2 on t1.User_ID = t2.User_ID where FBID='" + i + "'";
            string s = "select * from Feedback_Tab where FBID=" + i + " ";
            string sel = "select User_REG.User_Name,User_REG.User_Email,Feedback_Tab.Replay from Feedback_Tab join User_REG on Feedback_Tab.User_ID=User_REG.User_ID";
            SqlDataReader dr = obj.fn_datareader(sel);
            while (dr.Read())
            {
                Label2.Text = dr["User_Name"].ToString();
                Label7.Text = dr["User_Email"].ToString();
            }
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEmail2("Aiswarya", "aiswaryamano13@gmail.com", "rkdy fown tora mkqk", "'" + Label2.Text + "'", " " + Label7.Text + " ", "feedback Reply", "'" + TextBox1.Text + "'");
            string s = "update Feedback_Tab set Replay='" + TextBox1.Text + "',Status='Sent' where FBID='" + Session["fid"] + "'";
            int u = obj.fn_Nonquery(s);
            if (u == 1)
            {
                grid_bind();
                Panel1.Visible = false;

            }
        }
    }
}
