package repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository {
    private final DBConnector connector;
    private static ProductRepository productRepository;

    private ProductRepository() {
        connector = new DBConnector(
                "localhost:3306",
                "summer_killer",
                "root",
                "rlrkfpdhfn1"
        );
    }

    public static ProductRepository getInstance() {
        if (productRepository == null) {
            productRepository = new ProductRepository();
        }
        return productRepository;
    }

    public List<Product> getProducts() throws SQLException, ClassNotFoundException {
        connector.establish();

        String query = "select * from product";
        Statement stmt = connector.createStatement();
        ResultSet resultSet = stmt.executeQuery(query);

        ArrayList<Product> products = new ArrayList<>();

        while (resultSet.next()) {
            int stock = resultSet.getInt("stock");
            if(stock == 0)
                continue;
            int pid = resultSet.getInt("pid");
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");

            String filepath = resultSet.getString("filepath");
            String description = resultSet.getString("description");
            int detailImage = resultSet.getInt("detailImage");


            products.add(new Product(pid, name, price, stock, filepath, description, detailImage));
        }

        return products;
    }

    public Product getProductByPid(int pid) throws SQLException, ClassNotFoundException {
        connector.establish();

        String query = "select * from product where pid=?";
        PreparedStatement pstmt = connector.prepareStatement(query);
        pstmt.setInt(1, pid);
        ResultSet resultSet = pstmt.executeQuery();

        resultSet.next();
        String name = resultSet.getString("name");
        int price = resultSet.getInt("price");
        int stock = resultSet.getInt("stock");
        String filepath = resultSet.getString("filepath");
        String description = resultSet.getString("description");
        int detailImage = resultSet.getInt("detailImage");

        Product product = new Product(pid, name, price, stock, filepath, description, detailImage);

        return product;
    }

    public int getProductStock(int pid) throws SQLException, ClassNotFoundException{
        connector.establish();

        String selectQuery = "select stock from product where pid = ?";
        PreparedStatement selectPstmt = connector.prepareStatement(selectQuery);
        selectPstmt.setInt(1, pid);

        ResultSet resultSet = selectPstmt.executeQuery();
        resultSet.next();

        return resultSet.getInt("stock");
    }
}
