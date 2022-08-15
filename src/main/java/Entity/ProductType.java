package Entity;

public class ProductType {
    private int tpe_id;
    private int brd_id;
    private String tpe_name;
    private int tpe_parentId;

    public ProductType(int tpe_id, int brd_id, String tpe_name, int tpe_parentId) {
        this.tpe_id = tpe_id;
        this.brd_id = brd_id;
        this.tpe_name = tpe_name;
        this.tpe_parentId = tpe_parentId;
    }

    public ProductType() {
    }

    public int getTpe_id() {
        return tpe_id;
    }

    public void setTpe_id(int tpe_id) {
        this.tpe_id = tpe_id;
    }

    public int getBrd_id() {
        return brd_id;
    }

    public void setBrd_id(int brd_id) {
        this.brd_id = brd_id;
    }

    public String getTpe_name() {
        return tpe_name;
    }

    public void setTpe_name(String tpe_name) {
        this.tpe_name = tpe_name;
    }

    public int getTpe_parentId() {
        return tpe_parentId;
    }

    public void setTpe_parentId(int tpe_parentId) {
        this.tpe_parentId = tpe_parentId;
    }

    @Override
    public String toString() {
        return "ProductType{" +
                "tpe_id=" + tpe_id +
                ", brd_id=" + brd_id +
                ", tpe_name='" + tpe_name + '\'' +
                ", tpe_parentId=" + tpe_parentId +
                '}';
    }
}
