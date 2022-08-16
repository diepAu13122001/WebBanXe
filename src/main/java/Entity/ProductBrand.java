package Entity;

import java.io.Serializable;

public class ProductBrand implements Serializable {
    private int brd_id;
    private String brd_name;
    private String brd_logo;
    private String brd_phoneNum;
    private String brd_address;
    private String brd_webAddress;

    public ProductBrand(int brd_id, String brd_name, String brd_logo, String brdPhoneNum, String brd_address, String brd_webAddress) {
        this.brd_id = brd_id;
        this.brd_name = brd_name;
        this.brd_logo = brd_logo;
        this.brd_phoneNum = brdPhoneNum;
        this.brd_address = brd_address;
        this.brd_webAddress = brd_webAddress;
    }

    public ProductBrand() {
    }

    public int getBrd_id() {
        return brd_id;
    }

    public void setBrd_id(int brd_id) {
        this.brd_id = brd_id;
    }

    public String getBrd_name() {
        return brd_name;
    }

    public void setBrd_name(String brdName) {
        this.brd_name = brdName;
    }

    public String getBrd_logo() {
        return brd_logo;
    }

    public void setBrd_logo(String brd_logo) {
        this.brd_logo = brd_logo;
    }

    public String getBrd_phoneNum() {
        return brd_phoneNum;
    }

    public void setBrd_phoneNum(String brd_phoneNum) {
        this.brd_phoneNum = brd_phoneNum;
    }

    public String getBrd_address() {
        return brd_address;
    }

    public void setBrd_address(String brd_address) {
        this.brd_address = brd_address;
    }

    public String getBrd_webAddress() {
        return brd_webAddress;
    }

    public void setBrd_webAddress(String brd_webAddress) {
        this.brd_webAddress = brd_webAddress;
    }

    @Override
    public String toString() {
        return "ProductBrand{" +
                "brd_id=" + brd_id +
                ", brd_name='" + brd_name + '\'' +
                ", brd_logo='" + brd_logo + '\'' +
                ", brd_phoneNum='" + brd_phoneNum + '\'' +
                ", brd_address='" + brd_address + '\'' +
                ", brd_webAddress='" + brd_webAddress + '\'' +
                '}';
    }
}
