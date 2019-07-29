using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace b2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadComment();//hiển thị các entry commen trước đó
        }

        protected void btnGuiNd_Click(object sender, EventArgs e)
        {
            //lưu nội dung commen mới vào file
            //tạo file theo đường dẫn website
            string sfile=Server.MapPath(@"\")+"data.txt";
             //mở file nếu khác null(mở được) thì bắc đàu thêm
             using (StreamWriter writer =new StreamWriter(sfile,true))
             {//thêm các entry comment mới vào 
                 writer.WriteLine(txtTd.Text);
                 writer.WriteLine(txtHt.Text);
                  writer.WriteLine(txtEmail.Text);
                  writer.WriteLine(txtNd.Text);
                 //thêm ký hiệu nhận dạng kết thúc một entry 
                  writer.WriteLine("#END");
                  writer.Close();//đóng file sau khi ghi

              }
        }
        private void ReadComment()
        {
            //hàm đọc các comment trong file và đưa lên table trên web
            string sfile=Server.MapPath(@"\")+"data.txt";
            //mở file  Nếu khác null thì bắt đầu đọc
            using(StreamReader reader=new StreamReader(sfile))
            {
                string snoidung = reader.ReadToEnd();
                //sử dụng mảng chuỗi nhận dạng kết thúc entry
                string[] delmiter = { "#END" };
                //lọc ra từng  entry và đưa vào mảng chuỗi
                string[] sArr = snoidung.Split(delmiter, StringSplitOptions.RemoveEmptyEntries);
                foreach(string s in sArr)//duyệt qua từng entry
                {
                    string stemp;
                    //thay thế kí tự "xuống dòng và về đầu dòng" bằng tag break
                    stemp = Regex.Replace(s, @"\r\n", @"<br />");
                    //tạo ra dòng hiển thị cho entry
                    string entry=string.Format("<tr><td colspan=\"2\">{0} </td></tr>",stemp);
                  //bổ sung vào tag span EntryComment
                    EntryComment.InnerHtml += entry;
                }
            }
        }
    }
}