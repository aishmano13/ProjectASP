using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ProjectASP
{
    public class Concls
    {
        SqlConnection Con;
        SqlCommand cmd;
        public Concls()
        {
            Con = new SqlConnection(@"server=HP\SQLEXPRESS01;database=PROJECTASP;Integrated security=true");
        }
        public int fn_Nonquery(string sqlquery)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }

            cmd = new SqlCommand(sqlquery, Con);
            Con.Open();
            int i = cmd.ExecuteNonQuery();
            Con.Close();
            return i;
        }
        public string fn_Scaler(string sqlquery)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            cmd = new SqlCommand(sqlquery, Con);
            Con.Open();
            string i = cmd.ExecuteScalar().ToString();
            Con.Close();
            return i;
        }
        public SqlDataReader fn_datareader(string sqlquery)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            cmd = new SqlCommand(sqlquery, Con);
            Con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet fn_dataset(string sqlquery)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, Con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable Fn_Datatable(string sqlquery)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, Con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}



