using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DANGKI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDk_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                lblThongbao.Text=String.Format("Bạn {0} đăng kí thành công",txtHt.Text);
            }
        }
    }
}