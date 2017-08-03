using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanLyDanhMuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        sqlDsDanhMuc.InsertParameters["madanhmuc"].DefaultValue = txtMaDanhMuc.Text;
        sqlDsDanhMuc.InsertParameters["tendanhmuc"].DefaultValue = txtTenDanhMuc.Text;
        try
        {
            sqlDsDanhMuc.Insert();
            lblThongBao.Text = "Thêm danh mục thành công!!!";
        }
        catch (Exception)
        {
            lblThongBao.Text = "Có lỗi sảy ra!!!";
        }
    }

    protected void txtMaDanhMuc_TextChanged(object sender, EventArgs e)
    {
        lblThongBao.Text = "";
    }

    protected void txtTenDanhMuc_TextChanged(object sender, EventArgs e)
    {
        lblThongBao.Text = "";
    }
}