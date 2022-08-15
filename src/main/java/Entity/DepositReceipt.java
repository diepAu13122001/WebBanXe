package Entity;

import java.sql.Date;
import java.sql.Timestamp;

public class DepositReceipt {

    private int dps_id;
    private int ctm_id;
    private int prd_id;
    private int dps_amount;
    private Date dps_createDate;
    private Timestamp dps_paymentDate;
    private String dps_status;
    private String dps_paymentMethod;
    private String dps_receivingAddress;

    public DepositReceipt(int dps_id, int ctm_id, int prd_id, int dps_amount, Date dps_createDate, Timestamp dps_paymentDate, String dps_status, String dps_paymentMethod, String dps_receivingAddress) {
        this.dps_id = dps_id;
        this.ctm_id = ctm_id;
        this.prd_id = prd_id;
        this.dps_amount = dps_amount;
        this.dps_createDate = dps_createDate;
        this.dps_paymentDate = dps_paymentDate;
        this.dps_status = dps_status;
        this.dps_paymentMethod = dps_paymentMethod;
        this.dps_receivingAddress = dps_receivingAddress;
    }

    public DepositReceipt() {
    }

    public int getDps_id() {
        return dps_id;
    }

    public void setDps_id(int dps_id) {
        this.dps_id = dps_id;
    }

    public int getCtm_id() {
        return ctm_id;
    }

    public void setCtm_id(int ctm_id) {
        this.ctm_id = ctm_id;
    }

    public int getPrd_id() {
        return prd_id;
    }

    public void setPrd_id(int prd_id) {
        this.prd_id = prd_id;
    }

    public int getDps_amount() {
        return dps_amount;
    }

    public void setDps_amount(int dps_amount) {
        this.dps_amount = dps_amount;
    }

    public Date getDps_createDate() {
        return dps_createDate;
    }

    public void setDps_createDate(Date dps_createDate) {
        this.dps_createDate = dps_createDate;
    }

    public Timestamp getDps_paymentDate() {
        return dps_paymentDate;
    }

    public void setDps_paymentDate(Timestamp dps_paymentDate) {
        this.dps_paymentDate = dps_paymentDate;
    }

    public String getDps_status() {
        return dps_status;
    }

    public void setDps_status(String dps_status) {
        this.dps_status = dps_status;
    }

    public String getDps_paymentMethod() {
        return dps_paymentMethod;
    }

    public void setDps_paymentMethod(String dps_paymentMethod) {
        this.dps_paymentMethod = dps_paymentMethod;
    }

    public String getDps_receivingAddress() {
        return dps_receivingAddress;
    }

    public void setDps_receivingAddress(String dps_receivingAddress) {
        this.dps_receivingAddress = dps_receivingAddress;
    }

    @Override
    public String toString() {
        return "DepositReceipt{" +
                "dps_id=" + dps_id +
                ", ctm_id=" + ctm_id +
                ", prd_id=" + prd_id +
                ", dps_amount=" + dps_amount +
                ", dps_createDate=" + dps_createDate +
                ", dps_paymentDate=" + dps_paymentDate +
                ", dps_status='" + dps_status + '\'' +
                ", dps_paymentMethod='" + dps_paymentMethod + '\'' +
                ", dps_receivingAddress='" + dps_receivingAddress + '\'' +
                '}';
    }
}
