using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DANGNHAP
{
    public class chucnang
    {
        string connect = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        public bool DANGNHAP(string tk, string mk)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select * from kiemtra where Taikhoan=@ma and MatKhau=@mk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ma", tk);
                cmd.Parameters.AddWithValue("@mk", mk);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                return dr.Read();
            }
        }
        public bool Checkquanlynv(string taiKhoan)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select count(*) from kiemtra where Taikhoan=@tk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tk", taiKhoan);
                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                return (count >= 1);
            }
        }
        public bool Insertquanlynv(nhanvien s)
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
        public DataTable GetAllquanlynv()
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
        public bool Updatequanlynv(nhanvien s)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "update kiemtra set Matkhau=@mk,Hoten=@ht,Nhaplaimatkhau=@nlmk,Email=@em where Taikhoan=@tk";
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
        public bool Deletequanlynv(string taiKhoan)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "delete from kiemtra where TaiKhoan=@tk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tk", taiKhoan);
                conn.Open();
                int count = (int)cmd.ExecuteNonQuery();
                return (count >= 1);
            }
        }
        public nhanvien GetquanlynvByID(string taiKhoan)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select * from kiemtra where TaiKhoan=@tk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tk",taiKhoan);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    nhanvien s = new nhanvien()
                    {
                        TaiKhoan = (string)dr["TaiKhoan"],
                        MatKhau = (string)dr["MatKhau"],
                        HoTen = (string)dr["Hoten"],
                        NhapLaiMatKhau = (string)dr["NhapLaiMatKhau"],
                        Email = (string)dr["Email"] 
                    };
                    return s;
                }
                return null;
            }
        }
    }
}