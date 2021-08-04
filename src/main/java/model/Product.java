package model;

public class Product {
    private int idsp;
    private String tensp;
    private String img;
    private int gia;
    private int soluong;
    private String mausac;
    private String size;
    private String mota;
    private int idbrand;

    public Product() {
    }

    public Product(String tensp, String img, int gia, int soluong, String mausac, String size, String mota, int idbrand) {
        this.tensp = tensp;
        this.img = img;
        this.gia = gia;
        this.soluong = soluong;
        this.mausac = mausac;
        this.size = size;
        this.mota = mota;
        this.idbrand = idbrand;
    }

    public Product(int idsp, String tensp, String img, int gia, int soluong, String mausac, String size, String mota, int idbrand) {
        this.idsp = idsp;
        this.tensp = tensp;
        this.img = img;
        this.gia = gia;
        this.soluong = soluong;
        this.mausac = mausac;
        this.size = size;
        this.mota = mota;
        this.idbrand = idbrand;
    }

    public int getIdsp() {
        return idsp;
    }

    public void setIdsp(int idsp) {
        this.idsp = idsp;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getMausac() {
        return mausac;
    }

    public void setMausac(String mausac) {
        this.mausac = mausac;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public int getIdbrand() {
        return idbrand;
    }

    public void setIdbrand(int idbrand) {
        this.idbrand = idbrand;
    }
}
