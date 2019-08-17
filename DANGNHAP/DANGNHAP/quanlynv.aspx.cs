using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DANGNHAP
{
    public partial class quanlynv : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        nhanvien s = new nhanvien();
        chucnang cn = new chucnang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DoDuLieuVaoGridView();
            }
        }
        protected void btnThem_Click1(object sender, EventArgs e)
        {
            s = LayDuLieuTuForm();
            cn = new chucnang();
            bool exist = cn.Checkquanlynv(s.TaiKhoan);
            if (exist)
            {
                lblThongbao.Text = " người dùng này đã có ";
            }
            else
            {
                bool result = cn.Insertquanlynv(s);
                if (result)
                {
                    lblThongbao.Text = "thêm thành công";
                    DoDuLieuVaoGridView();


                }
                else
                {
                    lblThongbao.Text = "thêm không thành công";
                }
            }
        }

        private void DoDuLieuVaoGridView()
        {
            GridView1.DataSource = cn.GetAllquanlynv();
            GridView1.DataSourceID = null;
            GridView1.DataBind();
        }
        public nhanvien LayDuLieuTuForm()
        {
            nhanvien s = new nhanvien()
            {
                TaiKhoan = txtTk.Text,
                MatKhau = txtMk.Text,
                HoTen = txtHt.Text,
                NhapLaiMatKhau = txtNlmk.Text,
                Email = txtEmail.Text,
            };
            return s;
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {

            s = LayDuLieuTuForm();
            bool result = cn.Updatequanlynv(s);
            if (result)
            {
                lblThongbao.Text = "Cập nhập thành công";
                DoDuLieuVaoGridView();
            }
            else
            {
                lblThongbao.Text = "Có lỗi";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maSach = GridView1.SelectedRow.Cells[0].Text;
            s = cn.GetquanlynvByID(taikhoan);
            if (s != null)
            {
                txtTk.Text = s.TaiKhoan;
                txtMk.Text = s.MatKhau;
                txtHt.Text = s.HoTen;
                txtNlmk.Text = s.NhapLaiMatKhau;
                txtEmail.Text = s.Email;

            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string taikhoan = GridView1.Rows[e.RowIndex].Cells[0].Text;
            bool result = cn.Deletequanlynv(taikhoan);
            if (result)
            {
                lblThongbao.Text = "Xóa thành công";
                DoDuLieuVaoGridView();
            }
            else
            {
                lblThongbao.Text = "Có lỗi";
            }
        }
    }
}
 
