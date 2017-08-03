using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Load();
    }
    public void Load()
    {
        DataSourceSelectArguments args = new DataSourceSelectArguments();
        DataView view = (DataView)SqldsSoTaiKhoan.Select(args);
        DataTable dt = view.ToTable();
        lblSoTaiKhoan.Text = dt.Rows[0][0].ToString();

        view = (DataView)sqldsSoDanhMuc.Select(args);
        dt = view.ToTable();
        lblSoDanhMuc.Text = dt.Rows[0][0].ToString();

        view = (DataView)sqldsSoHoaDon.Select(args);
        dt = view.ToTable();
        lblSoHoaDon.Text = dt.Rows[0][0].ToString();

        view = (DataView)sqldsSoHang.Select(args);
        dt = view.ToTable();
        lblSoHang.Text = dt.Rows[0][0].ToString();
    }
}