using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CapNhatHang : System.Web.UI.Page
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
            DataView view = (DataView)sqldsChiTietHang.Select(args);
            DataTable dt = view.ToTable();
            lblMaHang.Text = dt.Rows[0]["MaHang"].ToString();
            txtGiaHang.Text = dt.Rows[0]["GiaHang"].ToString();
            txtMoTa.Text = dt.Rows[0]["MoTa"].ToString();
            txtTenHang.Text = dt.Rows[0]["TenHang"].ToString();

            string maDanhMuc = dt.Rows[0]["MaDanhMuc"].ToString();
        }
    }
    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        sqldsChiTietHang.UpdateCommand = string.Format("update Hang set TenHang = N'{0}', GiaHang = {1}, MoTa = N'{2}', MaDanhMuc = '{3}' where MaHang = '{4}'", txtTenHang.Text, txtGiaHang.Text, txtMoTa.Text, ddlDanhMuc.SelectedValue,lblMaHang.Text );

        try
        {
            if (fileImage.HasFile)
            {
                try
                {
                    fileImage.SaveAs(Server.MapPath("~/public/images/") + lblMaHang.Text +".jpg");
                }
                catch (Exception ex)
                {
                    lblThongBao.Text = "Không thể upload file "+ ex;
                    return;
                }
            }
            sqldsChiTietHang.Update();
            lblThongBao.Text = "Cập nhật thành công";
        }
        catch (Exception ex)
        {
            lblThongBao.Text = "Cố lỗi xảy ra";
        }
    }

    protected void btnHuyBo_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLyHang.aspx");
    }
}