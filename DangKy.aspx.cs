using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblThongBao.Text = "";
    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        SqlDsDangKy.InsertParameters["TaiKhoan"].DefaultValue = txtTenTaiKhoanDK.Text;
        SqlDsDangKy.InsertParameters["MatKhau"].DefaultValue = txtMatKhauDK.Text;
        SqlDsDangKy.InsertParameters["Email"].DefaultValue = txtEmail.Text;
        SqlDsDangKy.InsertParameters["DiaChi"].DefaultValue = txtDiaChi.Text;
        SqlDsDangKy.InsertParameters["SoDT"].DefaultValue = txtSoDT.Text;
        SqlDsDangKy.InsertParameters["Loai"].DefaultValue = "member";
        try
        {
            NguoiDung nguoidung = new NguoiDung();
            nguoidung.TaiKhoan = txtTenTaiKhoanDK.Text;
            nguoidung.Loai = "member";

            Session.Add("NguoiDung", nguoidung);
            SqlDsDangKy.Insert();
            Response.Redirect("index.aspx");
        }
        catch (Exception)
        {
            lblThongBao.Text = "Tên tài khoản đã tồn tại! Vui lòng kiểm tra lại";
        }
    }
}