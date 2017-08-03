using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        NguoiDung ngDung = (NguoiDung)Session["NguoiDung"];
        if(ngDung == null)
        {
            Response.Redirect("DangNhap.aspx");
        }

        if (ngDung.Loai != "admin")
        {
            Response.Redirect("index.aspx");
        }
    }
}
