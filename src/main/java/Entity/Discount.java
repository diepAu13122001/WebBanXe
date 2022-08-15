package Entity;

import java.sql.Date;

public class Discount {

    private int dsc_id;
    private String dsc_name;
    private Date dsc_startedDate;
    private Date dsc_endedDate;
    private int dsc_maxDiscount;
    private int dsc_minBillVal;
    private double dsc_percentOff;
    private int dsc_isShipDiscount;

    public Discount(int dsc_id, String dsc_name, Date dsc_startedDate, Date dsc_endedDate, int dsc_maxDiscount, int dsc_minBillVal, double dsc_percentOff, int dsc_isShipDiscount) {
        this.dsc_id = dsc_id;
        this.dsc_name = dsc_name;
        this.dsc_startedDate = dsc_startedDate;
        this.dsc_endedDate = dsc_endedDate;
        this.dsc_maxDiscount = dsc_maxDiscount;
        this.dsc_minBillVal = dsc_minBillVal;
        this.dsc_percentOff = dsc_percentOff;
        this.dsc_isShipDiscount = dsc_isShipDiscount;
    }

    public Discount() {
    }

    public int getDsc_id() {
        return dsc_id;
    }

    public void setDsc_id(int dsc_id) {
        this.dsc_id = dsc_id;
    }

    public String getDsc_name() {
        return dsc_name;
    }

    public void setDsc_name(String dsc_name) {
        this.dsc_name = dsc_name;
    }

    public Date getDsc_startedDate() {
        return dsc_startedDate;
    }

    public void setDsc_startedDate(Date dsc_startedDate) {
        this.dsc_startedDate = dsc_startedDate;
    }

    public Date getDsc_endedDate() {
        return dsc_endedDate;
    }

    public void setDsc_endedDate(Date dsc_endedDate) {
        this.dsc_endedDate = dsc_endedDate;
    }

    public int getDsc_maxDiscount() {
        return dsc_maxDiscount;
    }

    public void setDsc_maxDiscount(int dsc_maxDiscount) {
        this.dsc_maxDiscount = dsc_maxDiscount;
    }

    public int getDsc_minBillVal() {
        return dsc_minBillVal;
    }

    public void setDsc_minBillVal(int dsc_minBillVal) {
        this.dsc_minBillVal = dsc_minBillVal;
    }

    public double getDsc_percentOff() {
        return dsc_percentOff;
    }

    public void setDsc_percentOff(double dsc_percentOff) {
        this.dsc_percentOff = dsc_percentOff;
    }

    public int getDsc_isShipDiscount() {
        return dsc_isShipDiscount;
    }

    public void setDsc_isShipDiscount(int dsc_isShipDiscount) {
        this.dsc_isShipDiscount = dsc_isShipDiscount;
    }

    @Override
    public String toString() {
        return "Discount{" +
                "dsc_id=" + dsc_id +
                ", dsc_name='" + dsc_name + '\'' +
                ", dsc_startedDate=" + dsc_startedDate +
                ", dsc_endedDate=" + dsc_endedDate +
                ", dsc_maxDiscount=" + dsc_maxDiscount +
                ", dsc_minBillVal=" + dsc_minBillVal +
                ", dsc_percentOff=" + dsc_percentOff +
                ", dsc_isShipDiscount=" + dsc_isShipDiscount +
                '}';
    }
}
