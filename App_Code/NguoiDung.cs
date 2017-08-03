using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NguoiDung
/// </summary>
public class NguoiDung
{
	public NguoiDung()
	{
		
	}
    private string taiKhoan;

    private string loai;

    public string TaiKhoan
    {
        get
        {
            return taiKhoan;
        }

        set
        {
            taiKhoan = value;
        }
    }
    public string Loai
    {
        get
        {
            return loai;
        }

        set
        {
            loai = value;
        }
    }

    
}