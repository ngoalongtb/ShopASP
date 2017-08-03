using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    
    public List<Hang> Items { get; set; }
    private decimal tongTien;
    public decimal TongTien
    {
        get
        {
            tongTien = 0;
            if(Items!= null)
            {
                foreach (var item in Items)
                {
                    tongTien += item.ThanhTien;
                }
            }
            return tongTien;
        }

    }
    public Cart()
    {
        if (this.Items == null)
        {
            this.Items = new List<Hang>();
        }
    }
    //X
    public int getIndex(string ma)
    {
        int index = 0;
        foreach (var item in this.Items)
        {
            if (item.MaHang == ma)
            {
                return index;
            }
            index++;
        }
        return -1;
    }
    public void InsertItem(string ma, string ten, decimal gia, int soLuong)
    {
        int index = this.getIndex(ma);
        if (index == -1)
        {
            Hang anItem = new Hang(ma, ten, gia, soLuong);
            Items.Add(anItem);
        }
        else
        {
            Items[index].SoLuong += soLuong;
        }
    }
    public void DeleteItem(int rowID)
    {
        Items.RemoveAt(rowID);
    }
    public void UpdateItem(int rowID,int soLuong)
    {
        if (soLuong == 0)
        {
            DeleteItem(rowID);
        }
        else
        {
            Hang updateItem = Items[rowID];
            updateItem.SoLuong = soLuong;
        }
    }

}