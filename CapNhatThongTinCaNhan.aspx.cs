using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CapNhatThongTinCaNhan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Load();
    }
    public void Load()
    {
        if (!IsPostBack)
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView view = (DataView)sqlDsThongTinCaNhan.Select(args);
            DataTable dt = view.ToTable();

            NguoiDung ngDung = (NguoiDung)Session["NguoiDung"];
            lblTaiKhoan.Text = ngDung.TaiKhoan;
            txtMatKhau1.Text = dt.Rows[0]["MatKhau"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
            txtSoDienThoai.Text = dt.Rows[0]["SoDT"].ToString();
            lblLoai.Text = dt.Rows[0]["Loai"].ToString();
        }
    }

    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        
        sqlDsThongTinCaNhan.UpdateCommand = string.Format("update TaiKhoan set MatKhau = N'{0}', Email = '{1}', DiaChi = N'{2}', SoDT = '{3}' where TaiKhoan = '{4}'", txtMatKhau1.Text, txtEmail.Text, txtDiaChi.Text, txtSoDienThoai.Text, lblTaiKhoan.Text);

        try
        {
            sqlDsThongTinCaNhan.Update();
            lblThongBao.Text = "Cập nhật thành công";
        }
        catch (Exception ex)
        {
            lblThongBao.Text = "Cố lỗi xảy ra";
        }
    }
}