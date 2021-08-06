package model;

public class Item {
    private int iditem;
    private Product product;
    private int soluongmua;
    private int danhgia;
    private String binhluan;

    public Item() {
    }

    public Item(int iditem, Product product, int soluongmua) {
        this.iditem = iditem;
        this.product = product;
        this.soluongmua = soluongmua;
    }

    public Item(int iditem, Product product, int soluongmua, int danhgia, String binhluan) {
        this.iditem = iditem;
        this.product = product;
        this.soluongmua = soluongmua;
        this.danhgia = danhgia;
        this.binhluan = binhluan;
    }

    public int getIditem() {
        return iditem;
    }

    public void setIditem(int iditem) {
        this.iditem = iditem;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getSoluongmua() {
        return soluongmua;
    }

    public void setSoluongmua(int soluongmua) {
        this.soluongmua = soluongmua;
    }

    public int getDanhgia() {
        return danhgia;
    }

    public void setDanhgia(int danhgia) {
        this.danhgia = danhgia;
    }

    public String getBinhluan() {
        return binhluan;
    }

    public void setBinhluan(String binhluan) {
        this.binhluan = binhluan;
    }
}
