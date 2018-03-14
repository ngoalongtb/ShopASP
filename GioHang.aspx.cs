using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Cart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }
        if (!IsPostBack)
        {
            BindGrid(aCart);
        }


    }


    public void BindGrid(Cart aCart)
    {
        gvGioHang.DataSource = aCart.Items;
        gvGioHang.DataBind();
        labTongTien.Text = aCart.TongTien.ToString();
    }

    protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        string ma = gvGioHang.Rows[rowIndex].Cells[0].Text;
        TextBox txtSoLuong = (TextBox)gvGioHang.Rows[rowIndex].FindControl("txtSoLuong");
        int soLuong = Convert.ToInt32(txtSoLuong.Text);
        Cart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }
        int rowID = aCart.getIndex(ma);
        aCart.UpdateItem(rowID, soLuong);
        BindGrid(aCart);
        Session["Cart"] = aCart;
    }

    protected void butXoaGioHang_Click(object sender, EventArgs e)
    {
        Session.Remove("Cart");
        labTongTien.Text = "";
        Response.Redirect("index.aspx");
    }

    protected void butTiepTuc_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void butMua_Click(object sender, EventArgs e)
    {
        //NguoiDung aNguoiDung;
        if (Session["NguoiDung"] == null)
        {
            labThongBao.Text = "Bạn cần phải đăng nhập khi mua hàng";
            return;
        }
        Cart cart = (Cart)Session["Cart"];

        foreach (Hang item in cart.Items)
        {
            sqldsHoaDon.InsertParameters["MaHang"].DefaultValue = item.MaHang;
            sqldsHoaDon.InsertParameters["SoLuong"].DefaultValue = item.SoLuong.ToString();
            sqldsHoaDon.InsertParameters["TaiKhoan"].DefaultValue = ((NguoiDung)Session["NguoiDung"]).TaiKhoan;
            sqldsHoaDon.InsertParameters["NgayMua"].DefaultValue = DateTime.Now.ToString("yyyy/MM/dd");

            try
            {
                sqldsHoaDon.Insert();
                
            }
            catch (Exception ex)
            {
                labThongBao.Text = "Có lỗi xảy ra"+ ex;

                return;
            }
        }
        Session.Remove("Cart");
        labThongBao.Text = "Mua thành công!!!";
    }
}