package Entity;

public class Product {
    private String prd_id;
    private String prd_name;
    private String prd_ava;
    private String brd_id;
    private String tpe_id;
    private int prd_price;
    private double prd_discountPercent;

    public Product(String prd_id, String prd_name, String prd_ava, String brd_id, String tpe_id, int prd_price, double prd_discountPercent) {
        this.prd_id = prd_id;
        this.prd_name = prd_name;
        this.prd_ava = prd_ava;
        this.brd_id = brd_id;
        this.tpe_id = tpe_id;
        this.prd_price = prd_price;
        this.prd_discountPercent = prd_discountPercent;
    }

    public Product() {
    }

    public void setPrd_id(String prd_id) {
        this.prd_id = prd_id;
    }

    public void setPrd_name(String prd_name) {
        this.prd_name = prd_name;
    }

    public void setPrd_ava(String prd_ava) {
        this.prd_ava = prd_ava;
    }

    public void setBrd_id(String brd_id) {
        this.brd_id = brd_id;
    }

    public void setTpe_id(String tpe_id) {
        this.tpe_id = tpe_id;
    }

    public void setPrd_price(int prd_price) {
        this.prd_price = prd_price;
    }

    public void setPrd_discountPercent(double prd_discountPercent) {
        this.prd_discountPercent = prd_discountPercent;
    }

    public double getPrd_discountPercent() {
        return prd_discountPercent;
    }

    public int getPrd_price() {
        return prd_price;
    }

    public String getBrd_id() {
        return brd_id;
    }

    public String getPrd_ava() {
        return prd_ava;
    }

    public String getPrd_id() {
        return prd_id;
    }

    public String getPrd_name() {
        return prd_name;
    }

    public String getTpe_id() {
        return tpe_id;
    }

    @Override
    public String toString() {
        return "Product{" +
                "prd_id='" + prd_id + '\'' +
                ", prd_name='" + prd_name + '\'' +
                ", prd_ava='" + prd_ava + '\'' +
                ", brd_id='" + brd_id + '\'' +
                ", tpe_id='" + tpe_id + '\'' +
                ", prd_price=" + prd_price +
                ", prd_discountPercent=" + prd_discountPercent +
                '}';
    }
}
