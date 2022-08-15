package Entity;
public class Admin {
    private int adm_id;
    private String adm_name;
    private String adm_password;
    private String adm_phoneNum;
    private String adm_mailAddress;

    public Admin() {

    }

    public Admin(int adm_id, String adm_name, String adm_password, String adm_phoneNum, String adm_mailAddress) {
        this.adm_id = adm_id;
        this.adm_name = adm_name;
        this.adm_password = adm_password;
        this.adm_phoneNum = adm_phoneNum;
        this.adm_mailAddress = adm_mailAddress;
    }

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public String getAdm_name() {
        return adm_name;
    }

    public void setAdm_name(String adm_name) {
        this.adm_name = adm_name;
    }

    public String getAdm_password() {
        return adm_password;
    }

    public void setAdm_password(String adm_password) {
        this.adm_password = adm_password;
    }

    public String getAdm_phoneNum() {
        return adm_phoneNum;
    }

    public void setAdm_phoneNum(String adm_phoneNum) {
        this.adm_phoneNum = adm_phoneNum;
    }

    public String getAdm_mailAddress() {
        return adm_mailAddress;
    }

    public void setAdm_mailAddress(String adm_mailAddress) {
        this.adm_mailAddress = adm_mailAddress;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adm_id=" + adm_id +
                ", adm_name='" + adm_name + '\'' +
                ", adm_password='" + adm_password + '\'' +
                ", adm_phoneNum='" + adm_phoneNum + '\'' +
                ", adm_mailAddress='" + adm_mailAddress + '\'' +
                '}';
    }
}