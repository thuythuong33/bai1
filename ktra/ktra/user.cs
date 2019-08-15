using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ktra
{
    public class user
    {
        string taiKhoan;
        string matKhau;
        string hoTen;
        string nhapLaiMatKhau;
        string email;

        public string TaiKhoan
        {
            get { return taiKhoan; }
            set { taiKhoan = value; }
        }
        public string MatKhau
        {
            get { return matKhau; }
            set { matKhau = value; }
        }
        public string HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }
        public string NhapLaiMatKhau
        {
            get { return nhapLaiMatKhau; }
            set { nhapLaiMatKhau = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
    }
}