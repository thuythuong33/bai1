using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ktra
{
    public partial class Dangki : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        user s = new user();
        chucnang cn = new chucnang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DoDuLieuVaoGridView();
            }
        }

        protected void btnDk_Click(object sender, EventArgs e)
        {
            s = LayDuLieuTuForm();
            cn = new chucnang();
            bool exist = cn.CheckDangki(s.TaiKhoan);
            if (exist)
            {
                lblThongbao.Text = " người dùng này đã có ";
            }
            else
            {
                bool result = cn.InsertDangki(s);
                if (result)
                {
                    lblThongbao.Text = "Đăng kí thành công";
                    DoDuLieuVaoGridView();
                    Response.Redirect("Trangchu.aspx");

                }
                else
                {
                    lblThongbao.Text = "Đăng kí không thành công";
                }
            }
        }
            private void DoDuLieuVaoGridView()
                {
                    GridView1.DataSource = cn.GetAllDangki();
                    GridView1.DataSourceID = null;
                    GridView1.DataBind();
                }
        public user LayDuLieuTuForm()
        {
            user s = new user()
            {
                TaiKhoan = txtTk.Text,
                MatKhau = txtMk.Text,
                HoTen = txtHt.Text,
               NhapLaiMatKhau=txtNlmk.Text,
               Email=txtEmail.Text,
            };
            return s;
        }
            
        }
    }
