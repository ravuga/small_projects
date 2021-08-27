package com.example.bookmyseats.service.login.session;


public class Creds {
    static String C_username;
    public static void setCreds(String username){
        C_username = username;
    }
    public static String getCreds(){
        return C_username;
    }
}
