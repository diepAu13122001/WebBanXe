package DAO;
import java.sql.*;

public class ConnectDB {
    private final String serverName = "localhost";
    private final String dbName = "banxe";
    private final String portNumber = "3306";
    private final String userID = "root";
    private final String password = "";

    public Connection getConnection() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
        return DriverManager.getConnection(url, userID, password);
    }

    public static void main(String[] args) {
        try {
            System.out.println("connect " + new ConnectDB().getConnection());
        } catch (Exception e) {
            System.err.println(e);
        }
    }
}
