package Entity;

import java.sql.Date;

public class WarrantyRequest {
    private int wrt_id;
    private int ctm_id;
    private int prd_id;
    private int wrt_packageId;
    private int wrt_extraFee;
    private Date wrt_createdDate;
    private Date wrt_warrantyDate;
    private Date wrt_receiptDate;
    private String wrt_status;
    private String wrt_location;
    private int adm_id;

    public WarrantyRequest(int wrt_id, int ctm_id, int prd_id, int wrt_packageId, int wrt_extraFee, Date wrt_createdDate, Date wrt_warrantyDate, Date wrt_receiptDate, String wrt_status, String wrt_location, int adm_id) {
        this.wrt_id = wrt_id;
        this.ctm_id = ctm_id;
        this.prd_id = prd_id;
        this.wrt_packageId = wrt_packageId;
        this.wrt_extraFee = wrt_extraFee;
        this.wrt_createdDate = wrt_createdDate;
        this.wrt_warrantyDate = wrt_warrantyDate;
        this.wrt_receiptDate = wrt_receiptDate;
        this.wrt_status = wrt_status;
        this.wrt_location = wrt_location;
        this.adm_id = adm_id;
    }

    public WarrantyRequest() {
    }

    public int getWrt_id() {
        return wrt_id;
    }

    public void setWrt_id(int wrt_id) {
        this.wrt_id = wrt_id;
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

    public int getWrt_packageId() {
        return wrt_packageId;
    }

    public void setWrt_packageId(int wrt_packageId) {
        this.wrt_packageId = wrt_packageId;
    }

    public int getWrt_extraFee() {
        return wrt_extraFee;
    }

    public void setWrt_extraFee(int wrt_extraFee) {
        this.wrt_extraFee = wrt_extraFee;
    }

    public Date getWrt_createdDate() {
        return wrt_createdDate;
    }

    public void setWrt_createdDate(Date wrt_createdDate) {
        this.wrt_createdDate = wrt_createdDate;
    }

    public Date getWrt_warrantyDate() {
        return wrt_warrantyDate;
    }

    public void setWrt_warrantyDate(Date wrt_warrantyDate) {
        this.wrt_warrantyDate = wrt_warrantyDate;
    }

    public Date getWrt_receiptDate() {
        return wrt_receiptDate;
    }

    public void setWrt_receiptDate(Date wrt_receiptDate) {
        this.wrt_receiptDate = wrt_receiptDate;
    }

    public String getWrt_status() {
        return wrt_status;
    }

    public void setWrt_status(String wrt_status) {
        this.wrt_status = wrt_status;
    }

    public String getWrt_location() {
        return wrt_location;
    }

    public void setWrt_location(String wrt_location) {
        this.wrt_location = wrt_location;
    }

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    @Override
    public String toString() {
        return "WarrantyRequest{" +
                "wrt_id=" + wrt_id +
                ", ctm_id=" + ctm_id +
                ", prd_id=" + prd_id +
                ", wrt_packageId=" + wrt_packageId +
                ", wrt_extraFee=" + wrt_extraFee +
                ", wrt_createdDate=" + wrt_createdDate +
                ", wrt_warrantyDate=" + wrt_warrantyDate +
                ", wrt_receiptDate=" + wrt_receiptDate +
                ", wrt_status='" + wrt_status + '\'' +
                ", wrt_location='" + wrt_location + '\'' +
                ", adm_id=" + adm_id +
                '}';
    }
}
