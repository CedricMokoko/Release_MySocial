package com.release.utils;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordManager {

    public static boolean verifyPassword(String password, String storedHash) {
        try {
            // Hash le mot de passe donné avec MD5.
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] passwordBytes = password.getBytes();
            byte[] hashBytes = md.digest(passwordBytes);
            String passwordHash = new BigInteger(1, hashBytes).toString(16);

            // Compare le hash généré avec le hash stocké dans la base de données
            return passwordHash.equals(storedHash);
        }
        catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return false;
        }
    }

}
