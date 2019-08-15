using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ktra
{
    public class chucnang
    {
        string connect = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        public bool CheckDangki(string taikhoan)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select count(*) from kiemtra where Taikhoan=@tk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tk", taikhoan);
                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                return (count >= 1);
            }
        }
        public bool InsertDangki(user s)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "insert into kiemtra values(@tk,@mk,@ht,@nlmk,@em)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tk", s.TaiKhoan);
                cmd.Parameters.AddWithValue("@mk", s.MatKhau);
                cmd.Parameters.AddWithValue("@ht", s.HoTen);
                cmd.Parameters.AddWithValue("@nlmk", s.NhapLaiMatKhau);
                cmd.Parameters.AddWithValue("@em", s.Email);
                conn.Open();
                int count = (int)cmd.ExecuteNonQuery();
                return (count >= 1);
            }
        }
        public DataTable GetAllDangki()
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select * from kiemtra";
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                return dt;
            }
        }
      
    }
}