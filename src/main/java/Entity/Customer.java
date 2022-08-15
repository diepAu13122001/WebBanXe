package Entity;

public class Customer {
    private int ctm_id;
    private String ctm_fullName;
    private String ctm_gender;
    private String ctm_phoneNum;

    public Customer(int ctm_id, String ctm_fullName, String ctm_gender, String ctm_phoneNum) {
        this.ctm_id = ctm_id;
        this.ctm_fullName = ctm_fullName;
        this.ctm_gender = ctm_gender;
        this.ctm_phoneNum = ctm_phoneNum;
    }

    public Customer() {
    }

    public int getCtm_id() {
        return ctm_id;
    }

    public void setCtm_id(int ctm_id) {
        this.ctm_id = ctm_id;
    }

    public String getCtm_fullName() {
        return ctm_fullName;
    }

    public void setCtm_fullName(String ctm_fullName) {
        this.ctm_fullName = ctm_fullName;
    }

    public String getCtm_gender() {
        return ctm_gender;
    }

    public void setCtm_gender(String ctm_gender) {
        this.ctm_gender = ctm_gender;
    }

    public String getCtm_phoneNum() {
        return ctm_phoneNum;
    }

    public void setCtm_phoneNum(String ctm_phoneNum) {
        this.ctm_phoneNum = ctm_phoneNum;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "ctm_id=" + ctm_id +
                ", ctm_fullName='" + ctm_fullName + '\'' +
                ", ctm_gender='" + ctm_gender + '\'' +
                ", ctm_phoneNum='" + ctm_phoneNum + '\'' +
                '}';
    }
}
