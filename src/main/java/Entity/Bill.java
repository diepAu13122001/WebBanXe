package Entity;


import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Bill {
    private int bll_id;
    private int bll_totalProductVal;
    private int bll_deliveryFee;
    private int bll_discountAmount;
    private int bll_numOfPrd;
    private String bll_status;
    private java.sql.Date bll_createdDate;
    private java.sql.Date bll_updatedDate;
    private int adm_id;
    private int bll_depositAmount;
    private int ctc_id;
    private List<double[]> productList; // include: product discount (double), product amount(int), product id (int)

    public Bill(int bll_id, int bll_totalProductVal, int bll_deliveryFee, int bll_discountAmount, int bll_numOfPrd, String bll_status, Date bll_createdDate, Date bll_updatedDate, int adm_id, int bll_depositAmount, int ctc_id, List<double[]> productList) {
        this.bll_id = bll_id;
        this.bll_totalProductVal = bll_totalProductVal;
        this.bll_deliveryFee = bll_deliveryFee;
        this.bll_discountAmount = bll_discountAmount;
        this.bll_numOfPrd = bll_numOfPrd;
        this.bll_status = bll_status;
        this.bll_createdDate = bll_createdDate;
        this.bll_updatedDate = bll_updatedDate;
        this.adm_id = adm_id;
        this.bll_depositAmount = bll_depositAmount;
        this.ctc_id = ctc_id;
        this.productList = productList;
    }

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public Bill() {
    }

    public int getBll_id() {
        return bll_id;
    }

    public void setBll_id(int bll_id) {
        this.bll_id = bll_id;
    }

    public int getBll_totalProductVal() {
        return bll_totalProductVal;
    }

    public void setBll_totalProductVal(int bll_totalProductVal) {
        this.bll_totalProductVal = bll_totalProductVal;
    }

    public int getBll_deliveryFee() {
        return bll_deliveryFee;
    }

    public void setBll_deliveryFee(int bll_deliveryFee) {
        this.bll_deliveryFee = bll_deliveryFee;
    }

    public int getBll_discountAmount() {
        return bll_discountAmount;
    }

    public void setBll_discountAmount(int bll_discountAmount) {
        this.bll_discountAmount = bll_discountAmount;
    }

    public int getBll_numOfPrd() {
        return bll_numOfPrd;
    }

    public void setBll_numOfPrd(int bll_numOfPrd) {
        this.bll_numOfPrd = bll_numOfPrd;
    }

    public String getBll_status() {
        return bll_status;
    }

    public void setBll_status(String bll_status) {
        this.bll_status = bll_status;
    }

    public Date getBll_createdDate() {
        return bll_createdDate;
    }

    public void setBll_createdDate(Date bll_createdDate) {
        this.bll_createdDate = bll_createdDate;
    }

    public Date getBll_updatedDate() {
        return bll_updatedDate;
    }

    public void setBll_updatedDate(Date bll_updatedDate) {
        this.bll_updatedDate = bll_updatedDate;
    }

    public int getBll_depositAmount() {
        return bll_depositAmount;
    }

    public void setBll_depositAmount(int bll_depositAmount) {
        this.bll_depositAmount = bll_depositAmount;
    }

    public int getCtc_id() {
        return ctc_id;
    }

    public void setCtc_id(int ctc_id) {
        this.ctc_id = ctc_id;
    }

    public List<double[]> getProductList() {
        return productList;
    }

    public void setProductList(List<double[]> productList) {
        this.productList = productList;
    }

    private String printProductList() {
        String list = "";
        for (double[] detail : this.productList) {
            list += "\nList (discount qty prd_id): ";
            for (double data : detail) {
                list += data + " ";
            }
        }
        return list;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "bll_id=" + bll_id +
                ", bll_totalProductVal='" + bll_totalProductVal + '\'' +
                ", bll_deliveryFee=" + bll_deliveryFee +
                ", bll_discountAmount=" + bll_discountAmount +
                ", bll_numOfPrd=" + bll_numOfPrd +
                ", bll_status=" + bll_status +
                ", bll_createdDate=" + bll_createdDate +
                ", bll_updatedDate=" + bll_updatedDate +
                ", bll_depositAmount=" + bll_depositAmount +
                ", ctc_id=" + ctc_id +
                ", productList=" + printProductList() +
                '}';
    }

    public static void main(String[] args) {
        java.util.Date utilDate = new java.util.Date();
        double a = 12.3;
        int b = (int) a;
        System.out.println(b);
        List<double[]> productList = new ArrayList<>();
        productList.add(new double[]{2.1, 4, 5});
        productList.add(new double[]{2.4, 1, 3});
        productList.add(new double[]{2.2, 5, 4});
        productList.add(new double[]{1.1, 3, 1});
        productList.add(new double[]{0.1, 1, 2});
        Bill bill = new Bill(1, 12343232, 324324, 453543, 23, "da hoan thanh", new Date(utilDate.getTime()), new Date(new java.util.Date(2022, 3, 1).getTime()), 1, 2313213, 1, productList);
        System.out.println(bill.toString());


//        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
//        System.out.println("utilDate:" + utilDate);
//        System.out.println("sqlDate:" + sqlDate);
//        Time sqlTime = new Time(Calendar.getInstance().getTime().getTime());
//        System.out.println(sqlTime);

    }
}
