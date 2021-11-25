package repository;

import java.io.Serializable;

public class Product implements Serializable {
    private int pid;
    private String name;
    private int price;
    private int stock;
    private String filepath;
    private String description;
    private int detailImage;
    private int qnt;
    private boolean received;
    private String orderDate;
    private boolean reviewed;
    private int purchaseId;

    public Product(int pid, String name, int price, int stock, String filepath, String description, int detailImage) {
        this.pid = pid;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.filepath = filepath;
        this.description = description;
        this.detailImage = detailImage;
        qnt = 1;
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

    public int getQnt() {
        return qnt;
    }

    public void setQnt(int qnt) {
        this.qnt = qnt;
    }

    public boolean isReceived() {
        return received;
    }

    public void setReceived(boolean received) {
        this.received = received;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public boolean isReviewed() {
        return reviewed;
    }

    public void setReviewed(boolean reviewed) {
        this.reviewed = reviewed;
    }

    public int getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(int purchaseId) {
        this.purchaseId = purchaseId;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", filepath='" + filepath + '\'' +
                ", description='" + description + '\'' +
                ", detailImage=" + detailImage +
                '}';
    }
}
