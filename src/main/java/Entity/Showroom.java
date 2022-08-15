package Entity;

import java.sql.Time;

public class Showroom {
    private int shr_id;
    private String shr_name;
    private String shr_address;
    private String shr_phoneNum;
    private Time shr_openTime;
    private Time shr_closeTime;

    public Showroom(int shr_id, String shr_name, String shr_address, String shr_phoneNum, Time shr_openTime, Time shr_closeTime) {
        this.shr_id = shr_id;
        this.shr_name = shr_name;
        this.shr_address = shr_address;
        this.shr_phoneNum = shr_phoneNum;
        this.shr_openTime = shr_openTime;
        this.shr_closeTime = shr_closeTime;
    }

    public Showroom() {
    }

    public int getShr_id() {
        return shr_id;
    }

    public void setShr_id(int shr_id) {
        this.shr_id = shr_id;
    }

    public String getShr_name() {
        return shr_name;
    }

    public void setShr_name(String shr_name) {
        this.shr_name = shr_name;
    }

    public String getShr_address() {
        return shr_address;
    }

    public void setShr_address(String shr_address) {
        this.shr_address = shr_address;
    }

    public String getShr_phoneNum() {
        return shr_phoneNum;
    }

    public void setShr_phoneNum(String shr_phoneNum) {
        this.shr_phoneNum = shr_phoneNum;
    }

    public Time getShr_openTime() {
        return shr_openTime;
    }

    public void setShr_openTime(Time shr_openTime) {
        this.shr_openTime = shr_openTime;
    }

    public Time getShr_closeTime() {
        return shr_closeTime;
    }

    public void setShr_closeTime(Time shr_closeTime) {
        this.shr_closeTime = shr_closeTime;
    }

    @Override
    public String toString() {
        return "Showroom{" +
                "shr_id=" + shr_id +
                ", shr_name='" + shr_name + '\'' +
                ", shr_address='" + shr_address + '\'' +
                ", shr_phoneNum='" + shr_phoneNum + '\'' +
                ", shr_openTime=" + shr_openTime +
                ", shr_closeTime=" + shr_closeTime +
                '}';
    }
}
