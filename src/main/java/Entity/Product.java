package Entity;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class Product {
    private int prd_id;
    private String prd_name;
    private String prd_ava;
    private int brd_id;
    private int tpe_id;
    private int prd_price;
    private double prd_discountPercent;
    private Date prd_createdDate;
    private Timestamp prd_lastEdit;
    private List<String[]> colorList;
    private String prd_status;
    private int adm_id;
    private int prd_quantity;
    private List<String[]> prd_details;

    public Product(int prd_id, String prd_name, String prd_ava, int brd_id, int tpe_id, int prd_price, double prd_discountPercent, Date prd_createdDate, Timestamp prd_lastEdit, List<String[]> colorList, String prd_status, int adm_id, int prd_quantity, List<String[]> prd_details) {
        this.prd_id = prd_id;
        this.prd_name = prd_name;
        this.prd_ava = prd_ava;
        this.brd_id = brd_id;
        this.tpe_id = tpe_id;
        this.prd_price = prd_price;
        this.prd_discountPercent = prd_discountPercent;
        this.prd_createdDate = prd_createdDate;
        this.prd_lastEdit = prd_lastEdit;
        this.colorList = colorList;
        this.prd_status = prd_status;
        this.adm_id = adm_id;
        this.prd_quantity = prd_quantity;
        this.prd_details = prd_details;
    }

    public Product() {
    }

    public List<String[]> getPrd_details() {
        return prd_details;
    }

    public void setPrd_details(List<String[]> prd_details) {
        this.prd_details = prd_details;
    }

    public int getPrd_id() {
        return prd_id;
    }

    public void setPrd_id(int prd_id) {
        this.prd_id = prd_id;
    }

    public String getPrd_name() {
        return prd_name;
    }

    public void setPrd_name(String prd_name) {
        this.prd_name = prd_name;
    }

    public String getPrd_ava() {
        return prd_ava;
    }

    public void setPrd_ava(String prd_ava) {
        this.prd_ava = prd_ava;
    }

    public int getBrd_id() {
        return brd_id;
    }

    public void setBrd_id(int brd_id) {
        this.brd_id = brd_id;
    }

    public int getTpe_id() {
        return tpe_id;
    }

    public void setTpe_id(int tpe_id) {
        this.tpe_id = tpe_id;
    }

    public int getPrd_price() {
        return prd_price;
    }

    public void setPrd_price(int prd_price) {
        this.prd_price = prd_price;
    }

    public double getPrd_discountPercent() {
        return prd_discountPercent;
    }

    public void setPrd_discountPercent(double prd_discountPercent) {
        this.prd_discountPercent = prd_discountPercent;
    }

    public Date getPrd_createdDate() {
        return prd_createdDate;
    }

    public void setPrd_createdDate(Date prd_createdDate) {
        this.prd_createdDate = prd_createdDate;
    }

    public Timestamp getPrd_lastEdit() {
        return prd_lastEdit;
    }

    public void setPrd_lastEdit(Timestamp prd_lastEdit) {
        this.prd_lastEdit = prd_lastEdit;
    }

    public List<String[]> getColorList() {
        return colorList;
    }

    public void setColorList(List<String[]> colorList) {
        this.colorList = colorList;
    }

    public String getPrd_status() {
        return prd_status;
    }

    public void setPrd_status(String prd_status) {
        this.prd_status = prd_status;
    }

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public int getPrd_quantity() {
        return prd_quantity;
    }

    public void setPrd_quantity(int prd_quantity) {
        this.prd_quantity = prd_quantity;
    }

    @Override
    public String toString() {
        return "Product{" +
                "prd_id=" + prd_id +
                ", prd_name='" + prd_name + '\'' +
                ", prd_ava='" + prd_ava + '\'' +
                ", brd_id=" + brd_id +
                ", tpe_id=" + tpe_id +
                ", prd_price=" + prd_price +
                ", prd_discountPercent=" + prd_discountPercent +
                ", prd_createdDate=" + prd_createdDate +
                ", prd_lastEdit=" + prd_lastEdit +
                ", colorList=" + colorList +
                ", prd_status='" + prd_status + '\'' +
                ", adm_id=" + adm_id +
                ", prd_quantity=" + prd_quantity +
                '}';
    }
}
