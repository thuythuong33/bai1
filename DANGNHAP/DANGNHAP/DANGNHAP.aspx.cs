using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DANGNHAP
{
    public partial class DANGNHAP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDn_Click(object sender, EventArgs e)
        {
            chucnang cn = new chucnang();
            bool kq = cn.DANGNHAP(txtTk.Text, txtMk.Text);
            if (kq)
            {
                Session["tk"] = txtTk.Text;
                Response.Redirect("quanlynv.aspx");
            }
            else
            {
                lblThongbao.Text = "Sai tên đăng nhập hoặc mật khẩu";
            }
        }
    }
}