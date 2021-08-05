package model;

public class Brand {
    private int idbrand;
    private String tenbrand;

    public Brand() {
    }

    public Brand(int idbrand, String tenbrand) {
        this.idbrand = idbrand;
        this.tenbrand = tenbrand;
    }

    public int getIdbrand() {
        return idbrand;
    }

    public void setIdbrand(int idbrand) {
        this.idbrand = idbrand;
    }

    public String getTenbrand() {
        return tenbrand;
    }

    public void setTenbrand(String tenbrand) {
        this.tenbrand = tenbrand;
    }
}
