/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jserialcomm_example;

/**
 *
 * @author vubon
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DATABASE_ {

    private Connection connect = null;

    public DATABASE_() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost/pro?" + "user=root&password=");

        } catch (Exception e) {
            System.out.println("dbC1: "+e);
        }
    }

    public boolean dbOk() {
        try {
            Connection conn;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/pro?" + "user=root&password=");
            conn.close();
            return true;
        } catch (Exception e) {
            System.out.println("dbC2: "+e);
        }
        return false;
    }

    public ResultSet readDataBase(String id) {
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement statementr = null;
            statementr = connect.createStatement();

            //System.out.println(id);
            resultSet = statementr.executeQuery("SELECT * FROM employee_info WHERE login_id = '" + id.trim() + "'");
            //resultSet = statementr.executeQuery("SELECT * FROM employee_info JOIN employee_service_info USING (login_id) WHERE employee_service_info.login_id = '" + parts[0].trim() + "' AND employee_service_info.service_date = '" + parts[1].trim() + "'");

        } catch (Exception e) {
            System.out.println("dbC3: "+e);
        } finally {
        }
        return resultSet;
    }

    public String login(String id) {
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement statementr = null;
            statementr = connect.createStatement();

            //System.out.println(id);

            Date now = new Date();
            String[] parts = (new SimpleDateFormat("dd/MM/yyyy HH:mm:ss a")).format(now).split(" ", 3);
            
            //System.err.println("Debug: "+id.trim()+", "+parts[0].trim()+", "+parts[1].trim()+" "+parts[2].trim());
            
            resultSet = statementr.executeQuery("SELECT * FROM employee_service_info WHERE login_id = '" + id.trim() + "' AND service_date = '" + parts[0].trim() + "'");

            if (resultSet.next()) {
                //String tm1 = resultSet.getString("serial_id");
                //String tm2 = resultSet.getString("login_time");
                //System.err.println(resultSet.getString("serial_id")+": "+resultSet.getString("service_date")+": "+resultSet.getString("login_time"));
                
                return resultSet.getString("service_date")+","+resultSet.getString("login_time");
            }else{
                Statement statementw = null;
                statementw = connect.createStatement();
                statementw.executeUpdate("INSERT INTO `employee_service_info`(`service_date`, `login_time`, `login_id`) VALUES ('" + parts[0] + "','" + parts[1].trim() + " " + parts[2].trim() + "','" + id.trim() + "')");
            }
            
        } catch (Exception e) {
            System.out.println("dbC4: "+e);
        } finally {
        }
        return "--:--:--";
    }

    

    // You need to close the resultSet
//    private void close() {
//        try {
//            if (resultSet != null) {
//                resultSet.close();
//            }
//
////            if (statement != null) {
////                statement.close();
////            }
//
//            if (connect != null) {
//                connect.close();
//            }
//        } catch (Exception e) {
//
//        }
//    }
}
