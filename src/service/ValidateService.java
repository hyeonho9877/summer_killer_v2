package service;

import repository.DBConnector;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ValidateService {

    private static ValidateService validateService;


    public static ValidateService getInstance() {
        if (validateService == null) {
            validateService = new ValidateService();
        }
        return validateService;
    }

    public boolean checkUsernameDuplicate(String username) throws SQLException, ClassNotFoundException {
        DBConnector connector = new DBConnector(
                "localhost:3306",
                "summer_killer",
                "root",
                "rlrkfpdhfn1"
        );

        connector.establish();

        String query = "select count(*) from user where username=?";
        PreparedStatement pstmt = connector.prepareStatement(query);
        pstmt.setString(1, username);

        ResultSet result = pstmt.executeQuery();
        result.next();
        int num = result.getInt(1);

        connector.close();
        pstmt.close();

        return !(num == 0);
    }
}
