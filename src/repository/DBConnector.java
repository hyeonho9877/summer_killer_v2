package repository;

import java.sql.*;

public class DBConnector {
  private Connection conn;
  private final String server;
  private final String database;
  private final String username;
  private final String password;

  public DBConnector(String server,
                           String database,
                           String username,
                           String password) {
    this.server = server;
    this.database = database;
    this.username = username;
    this.password = password;
  }

  public void establish() throws ClassNotFoundException, SQLException {
    Class.forName("org.mariadb.jdbc.Driver");
    conn = DriverManager.getConnection(
            "jdbc:mysql://" + server + "/" + database,
            username,
            password);
  }

  public void close() throws SQLException {
    conn.close();
  }

  public Statement createStatement() throws SQLException{
    return conn.createStatement();
  }

  public PreparedStatement prepareStatement(String sql) throws SQLException{
    return conn.prepareStatement(sql);
  }
}
