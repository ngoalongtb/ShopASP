using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblThongBao.Text = "";
    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqlDsDN.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        if (num == 1)
        {
            NguoiDung nguoidung = new NguoiDung();
            nguoidung.TaiKhoan = txtTenTKDN.Text;
            nguoidung.Loai = dv.Table.Rows[0]["Loai"].ToString();

            Session.Add("NguoiDung", nguoidung);
            
            if (nguoidung.Loai == "member")
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Redirect("admin.aspx");
            }

        }
        else
        {
            txtTenTKDN.Text = "";
            lblThongBao.Text = "aTài khoản hoặc mật khẩu không chính xác!";
        }
    }
}