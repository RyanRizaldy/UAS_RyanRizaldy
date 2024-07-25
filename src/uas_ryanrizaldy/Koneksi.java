/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uas_ryanrizaldy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;


public class Koneksi {
    private static Connection koneksi;

    public static Connection getKoneksi() {
        if (koneksi == null) {
            try {
                String url = "jdbc:mysql://localhost:3306/uas_pbo2";
                String user = "root";
                String password = "";
                // Pastikan menggunakan driver MySQL JDBC yang terbaru
                koneksi = DriverManager.getConnection(url, user, password);
            } catch (SQLException t) {
                System.out.println("Error Membuat Koneksi: " + t.getMessage());
            }
        }
        return koneksi;
    }
}


