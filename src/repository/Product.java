package repository;

public class Product {
    private int pid;
    private String name;
    private int price;
    private int stock;
    private String filepath;
    private String description;
    private int detailImage;

    public Product(int pid, String name, int price, int stock, String filepath, String description, int detailImage) {
        this.pid = pid;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.filepath = filepath;
        this.description = description;
        this.detailImage = detailImage;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDetailImage() {
        return detailImage;
    }

    public void setDetailImage(int detailImage) {
        this.detailImage = detailImage;
    }
}
