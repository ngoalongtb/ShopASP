using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        NguoiDung ngDung = (NguoiDung)Session["NguoiDung"];
        if (Session["NguoiDung"] == null) {
            btnDangKy.Text = "Đăng ký";
            btnDangNhap.Text = "Đăng nhập";
        }
        else
        {
            btnDangNhap.Text = ngDung.TaiKhoan;
            btnDangKy.Text = "Đăng xuất";
        }
    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        if(btnDangNhap.Text == "Đăng nhập")
        {
            Response.Redirect("DangNhap.aspx");
        }
        else
        {
            Response.Redirect("CapNhatThongTinCaNhan.aspx");
        }
    }

    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        if (btnDangKy.Text == "Đăng ký")
        {
            Response.Redirect("DangKy.aspx");
        }
        else
        {
            Session.Remove("NguoiDung");
            Response.Redirect("index.aspx");
        }
    }
}
