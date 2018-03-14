using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        sqldsHang.InsertCommand = string.Format("insert into Hang values('{0}', N'{1}', '{2}', N'{3}', '{0}.jpg', '{4}', '{5}')", txtMaHang.Text, txtTenHang.Text, txtGiaHang.Text, txtMoTa.Text, ddlDanhMuc.SelectedValue, DateTime.Now.ToString("yyyy/MM/dd"));
        try
        {
            if (fileImage.HasFile)
            {
                try
                {
                    fileImage.SaveAs(Server.MapPath("~/public/images/") + txtMaHang.Text + ".jpg");
                }
                catch (Exception ex)
                {
                    lblThongBao.Text = "Không thể upload file " + ex;
                    return;
                }
            }
            sqldsHang.Insert();
            lblThongBao.Text = "Thêm mới thành công";
        }
        catch (Exception ex)
        {
            lblThongBao.Text = "Có lỗi xảy ra!!! Vui lòng kiểm tra lại!!!"+ex;
        }
    }

    protected void btnHuyBo_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLyHang.aspx");
    }
}