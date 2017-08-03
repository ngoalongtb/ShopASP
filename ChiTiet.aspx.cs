using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void gvChiTietHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        string ma = gvChiTietHang.Rows[rowIndex].Cells[0].Text;
        string ten = gvChiTietHang.Rows[rowIndex].Cells[1].Text;
        decimal gia = Convert.ToDecimal(gvChiTietHang.Rows[rowIndex].Cells[2].Text);

        Cart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }

        aCart.InsertItem(ma, ten, gia, 1);
        Session["Cart"] = aCart;
        Response.Redirect("GioHang.aspx");
    }
}