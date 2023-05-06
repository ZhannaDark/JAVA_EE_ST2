package main.javaee.mini.shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ConnectionDB {

    private static Connection connection;

    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/my_dbms",
                    "root", "root");

        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<Items> getItems() {
        ArrayList<Items> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM items");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Items items1 = new Items();
                items1.setId(resultSet.getLong("id"));
                items1.setName(resultSet.getString("name"));
                items1.setDescription(resultSet.getString("description"));
                items1.setPrice(resultSet.getDouble("price"));
                items.add(items1);
            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    public static String getUser(String em, String pw) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT password, email, full_name FROM users WHERE users.email = '" + em + "'");
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String fn = resultSet.getString("full_name");
                if (pw.equals(password)) {
                    return fn;
                }
            }

            statement.close();
        } catch (Exception var7) {
            var7.printStackTrace();
        }

        return null;
    }
}
