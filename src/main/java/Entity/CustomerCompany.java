package Entity;

public class CustomerCompany {
    private int cpn_id;
    private String cpn_name;
    private String cpn_address;
    private String cpn_taxCode;

    public CustomerCompany(int cpn_id, String cpn_name, String cpn_address, String cpn_taxCode) {
        this.cpn_id = cpn_id;
        this.cpn_name = cpn_name;
        this.cpn_address = cpn_address;
        this.cpn_taxCode = cpn_taxCode;
    }

    public CustomerCompany() {
    }

    public int getCpn_id() {
        return cpn_id;
    }

    public void setCpn_id(int cpn_id) {
        this.cpn_id = cpn_id;
    }

    public String getCpn_name() {
        return cpn_name;
    }

    public void setCpn_name(String cpn_name) {
        this.cpn_name = cpn_name;
    }

    public String getCpn_address() {
        return cpn_address;
    }

    public void setCpn_address(String cpn_address) {
        this.cpn_address = cpn_address;
    }

    public String getCpn_taxCode() {
        return cpn_taxCode;
    }

    public void setCpn_taxCode(String cpn_taxCode) {
        this.cpn_taxCode = cpn_taxCode;
    }

    @Override
    public String toString() {
        return "CustomerCompany{" +
                "cpn_id=" + cpn_id +
                ", cpn_name='" + cpn_name + '\'' +
                ", cpn_address='" + cpn_address + '\'' +
                ", cpn_taxCode='" + cpn_taxCode + '\'' +
                '}';
    }
}
