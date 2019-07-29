using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt1
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSigNow_Click(object sender, EventArgs e)
        {
            divInfo.InnerHtml += "your email:" + txtEmail.Value + "<br> Login is OK <br>";
        }

    }
}