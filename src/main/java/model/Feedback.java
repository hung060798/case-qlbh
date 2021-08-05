package model;

import java.sql.Date;

public class Feedback {
    private String username;
    private String tensp;
    private int danhgia;
    private String binhluan;
    private Date ngaymua;

    public Feedback() {
    }

    public Feedback(String username, int danhgia, String binhluan) {
        this.username = username;
        this.danhgia = danhgia;
        this.binhluan = binhluan;
    }

    public Feedback(String username, String tensp, int danhgia, String binhluan, Date ngaymua) {
        this.username = username;
        this.tensp = tensp;
        this.danhgia = danhgia;
        this.binhluan = binhluan;
        this.ngaymua = ngaymua;
    }

    public Date getNgaymua() {
        return ngaymua;
    }

    public void setNgaymua(Date ngaymua) {
        this.ngaymua = ngaymua;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
