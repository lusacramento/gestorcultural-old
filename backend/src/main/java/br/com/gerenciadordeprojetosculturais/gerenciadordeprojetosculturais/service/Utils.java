package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Utils {
    public static String generateHash(String hash) throws NoSuchAlgorithmException,
            UnsupportedEncodingException {


        MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
        byte messageDigest[] = algorithm.digest(hash.getBytes("UTF-8"));

        StringBuilder hexString = new StringBuilder();
        for (byte b : messageDigest) {
            hexString.append(String.format("%02X", 0xFF & b));
        }

        return (hexString.toString());
    }

    public boolean compareHashs(String hash1, String hash2){
        return hash1.equals(hash2);

    }

}
