using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GioHang
/// </summary>
public class Hang
{
    private string maHang;
    private string tenHang;
    private decimal gia;
    private int soLuong;
    private decimal thanhTien;
   

    public string MaHang
    {
        get
        {
            return maHang;
        }

        set
        {
            maHang = value;
        }
    }

   

    public int SoLuong
    {
        get
        {
            return soLuong;
        }

        set
        {
            soLuong = value;
        }
    }

    public decimal ThanhTien
    {
        get
        {
            thanhTien = Gia * SoLuong;
            return thanhTien;
        }

        set
        {
            thanhTien = value;
        }
    }

    public string TenHang
    {
        get
        {
            return tenHang;
        }

        set
        {
            tenHang = value;
        }
    }

    public decimal Gia
    {
        get
        {
            return gia;
        }

        set
        {
            gia = value;
        }
    }
    public Hang(string ma,string ten,decimal gia,int so)
    {
        this.maHang = ma;
        this.tenHang = ten;
        this.gia = gia;
        this.soLuong = so;
       
    }
}