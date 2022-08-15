package Entity;

public class Contact {
    private int ctc_id;
    private int ctm_id;
    private String ctc_receivingType;
    private String ctc_receivingAddress	;
    private String ctc_note;
    private int ctc_consigneeId;
    private int ctc_userManual;
    private int cpn_id;
    private int dsc_id;
    private String ctc_paymentMethod;
    private int dps_id;

    public Contact(int ctc_id, int ctm_id, String ctc_receivingType, String ctc_receivingAddress, String ctc_note, int ctc_consigneeId, int ctc_userManual, int cpn_id, int dsc_id, String ctc_paymentMethod, int dps_id) {
        this.ctc_id = ctc_id;
        this.ctm_id = ctm_id;
        this.ctc_receivingType = ctc_receivingType;
        this.ctc_receivingAddress = ctc_receivingAddress;
        this.ctc_note = ctc_note;
        this.ctc_consigneeId = ctc_consigneeId;
        this.ctc_userManual = ctc_userManual;
        this.cpn_id = cpn_id;
        this.dsc_id = dsc_id;
        this.ctc_paymentMethod = ctc_paymentMethod;
        this.dps_id = dps_id;
    }

    public Contact() {
    }

    public int getCtc_id() {
        return ctc_id;
    }

    public void setCtc_id(int ctc_id) {
        this.ctc_id = ctc_id;
    }

    public int getCtm_id() {
        return ctm_id;
    }

    public void setCtm_id(int ctm_id) {
        this.ctm_id = ctm_id;
    }

    public String getCtc_receivingType() {
        return ctc_receivingType;
    }

    public void setCtc_receivingType(String ctc_receivingType) {
        this.ctc_receivingType = ctc_receivingType;
    }

    public String getCtc_receivingAddress() {
        return ctc_receivingAddress;
    }

    public void setCtc_receivingAddress(String ctc_receivingAddress) {
        this.ctc_receivingAddress = ctc_receivingAddress;
    }

    public String getCtc_note() {
        return ctc_note;
    }

    public void setCtc_note(String ctc_note) {
        this.ctc_note = ctc_note;
    }

    public int getCtc_consigneeId() {
        return ctc_consigneeId;
    }

    public void setCtc_consigneeId(int ctc_consigneeId) {
        this.ctc_consigneeId = ctc_consigneeId;
    }

    public int getCtc_userManual() {
        return ctc_userManual;
    }

    public void setCtc_userManual(int ctc_userManual) {
        this.ctc_userManual = ctc_userManual;
    }

    public int getCpn_id() {
        return cpn_id;
    }

    public void setCpn_id(int cpn_id) {
        this.cpn_id = cpn_id;
    }

    public int getDsc_id() {
        return dsc_id;
    }

    public void setDsc_id(int dsc_id) {
        this.dsc_id = dsc_id;
    }

    public String getCtc_paymentMethod() {
        return ctc_paymentMethod;
    }

    public void setCtc_paymentMethod(String ctc_paymentMethod) {
        this.ctc_paymentMethod = ctc_paymentMethod;
    }

    public int getDps_id() {
        return dps_id;
    }

    public void setDps_id(int dps_id) {
        this.dps_id = dps_id;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "ctc_id=" + ctc_id +
                ", ctm_id=" + ctm_id +
                ", ctc_receivingType='" + ctc_receivingType + '\'' +
                ", ctc_receivingAddress='" + ctc_receivingAddress + '\'' +
                ", ctc_note='" + ctc_note + '\'' +
                ", ctc_consigneeId=" + ctc_consigneeId +
                ", ctc_userManual=" + ctc_userManual +
                ", cpn_id=" + cpn_id +
                ", dsc_id=" + dsc_id +
                ", ctc_paymentMethod='" + ctc_paymentMethod + '\'' +
                ", dps_id=" + dps_id +
                '}';
    }
}
