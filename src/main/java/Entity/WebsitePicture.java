package Entity;

public class WebsitePicture {
    private int pic_id;
    private String pic_url;
    private String pic_alt;
    private String pic_linkToPage;
    private String pic_type;

    public WebsitePicture(int pic_id, String pic_url, String pic_alt, String pic_linkToPage, String pic_type) {
        this.pic_id = pic_id;
        this.pic_url = pic_url;
        this.pic_alt = pic_alt;
        this.pic_linkToPage = pic_linkToPage;
        this.pic_type = pic_type;
    }

    public WebsitePicture() {
    }

    public int getPic_id() {
        return pic_id;
    }

    public void setPic_id(int pic_id) {
        this.pic_id = pic_id;
    }

    public String getPic_url() {
        return pic_url;
    }

    public void setPic_url(String pic_url) {
        this.pic_url = pic_url;
    }

    public String getPic_alt() {
        return pic_alt;
    }

    public void setPic_alt(String pic_alt) {
        this.pic_alt = pic_alt;
    }

    public String getPic_linkToPage() {
        return pic_linkToPage;
    }

    public void setPic_linkToPage(String pic_linkToPage) {
        this.pic_linkToPage = pic_linkToPage;
    }

    public String getPic_type() {
        return pic_type;
    }

    public void setPic_type(String pic_type) {
        this.pic_type = pic_type;
    }

    @Override
    public String toString() {
        return "WebsitePicture{" +
                "pic_id=" + pic_id +
                ", pic_url='" + pic_url + '\'' +
                ", pic_alt='" + pic_alt + '\'' +
                ", pic_linkToPage='" + pic_linkToPage + '\'' +
                ", pic_type='" + pic_type + '\'' +
                '}';
    }
}
