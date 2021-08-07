package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Orders {
    private int idhd;
    private int idtk;
    private int tonggia;
    private Date ngaymua;
    private List<Item> listItem;

    public Orders() {
        ngaymua = new Date(System.currentTimeMillis());
        listItem = new ArrayList<>();
    }

    public Orders(int idhd, int idtk, int tonggia, Date ngaymua, List<Item> listItem) {
        this.idhd = idhd;
        this.idtk = idtk;
        this.tonggia = tonggia;
        this.ngaymua = ngaymua;
        this.listItem = listItem;
    }

    public int getIdhd() {
        return idhd;
    }

    public void setIdhd(int idhd) {
        this.idhd = idhd;
    }

    public int getIdtk() {
        return idtk;
    }

    public void setAccount(int idtk) {
        this.idtk = idtk;
    }

    public int getTonggia() {
        return tonggia;
    }

    public void setTonggia(int tonggia) {
        this.tonggia = tonggia;
    }

    public Date getNgaymua() {
        return ngaymua;
    }

    public void setNgaymua(Date ngaymua) {
        this.ngaymua = ngaymua;
    }

    public List<Item> getListItem() {
        return listItem;
    }

    public void setListItem(List<Item> listItem) {
        this.listItem = listItem;
    }

}
