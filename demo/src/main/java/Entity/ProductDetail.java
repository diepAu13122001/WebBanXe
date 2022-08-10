package Entity;

public class ProductDetail {
    private String prd_id;
    private String prd_content;
    private boolean prd_contentIsImage;

    public ProductDetail(String prd_id, String prd_content, boolean prd_contentIsImage) {
        this.prd_id = prd_id;
        this.prd_content = prd_content;
        this.prd_contentIsImage = prd_contentIsImage;
    }

    public ProductDetail() {
    }

    public String getPrd_id() {
        return prd_id;
    }

    public void setPrd_id(String prd_id) {
        this.prd_id = prd_id;
    }

    public String getPrd_content() {
        return prd_content;
    }

    public void setPrd_content(String prd_content) {
        this.prd_content = prd_content;
    }

    public boolean isPrd_contentIsImage() {
        return prd_contentIsImage;
    }

    public void setPrd_contentIsImage(boolean prd_contentIsImage) {
        this.prd_contentIsImage = prd_contentIsImage;
    }

    @Override
    public String toString() {
        return "ProductDetail{" +
                "prd_id='" + prd_id + '\'' +
                ", prd_content='" + prd_content + '\'' +
                ", prd_contentIsImage=" + prd_contentIsImage +
                '}';
    }
}