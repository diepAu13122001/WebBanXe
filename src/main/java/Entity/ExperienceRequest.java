package Entity;

import java.sql.Date;
import java.sql.Timestamp;

public class ExperienceRequest {
    private int req_id;
    private Date req_createdDate;
    private Timestamp req_appointmentTime;
    private String req_note;
    private String req_status;
    private int adm_id;
    private int ctm_id;
    private int shr_id;

    public ExperienceRequest(int req_id, Date req_createdDate, Timestamp req_appointmentTime, String req_note, String req_status, int adm_id, int ctm_id, int shr_id) {
        this.req_id = req_id;
        this.req_createdDate = req_createdDate;
        this.req_appointmentTime = req_appointmentTime;
        this.req_note = req_note;
        this.req_status = req_status;
        this.adm_id = adm_id;
        this.ctm_id = ctm_id;
        this.shr_id = shr_id;
    }

    public ExperienceRequest() {
    }

    public int getReq_id() {
        return req_id;
    }

    public void setReq_id(int req_id) {
        this.req_id = req_id;
    }

    public Date getReq_createdDate() {
        return req_createdDate;
    }

    public void setReq_createdDate(Date req_createdDate) {
        this.req_createdDate = req_createdDate;
    }

    public Timestamp getReq_appointmentTime() {
        return req_appointmentTime;
    }

    public void setReq_appointmentTime(Timestamp req_appointmentTime) {
        this.req_appointmentTime = req_appointmentTime;
    }

    public String getReq_note() {
        return req_note;
    }

    public void setReq_note(String req_note) {
        this.req_note = req_note;
    }

    public String getReq_status() {
        return req_status;
    }

    public void setReq_status(String req_status) {
        this.req_status = req_status;
    }

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public int getCtm_id() {
        return ctm_id;
    }

    public void setCtm_id(int ctm_id) {
        this.ctm_id = ctm_id;
    }

    public int getShr_id() {
        return shr_id;
    }

    public void setShr_id(int shr_id) {
        this.shr_id = shr_id;
    }

    @Override
    public String toString() {
        return "ExperienceRequest{" +
                "req_id=" + req_id +
                ", req_createdDate=" + req_createdDate +
                ", req_appointmentTime=" + req_appointmentTime +
                ", req_note='" + req_note + '\'' +
                ", req_status='" + req_status + '\'' +
                ", adm_id=" + adm_id +
                ", ctm_id=" + ctm_id +
                ", shr_id=" + shr_id +
                '}';
    }
}
