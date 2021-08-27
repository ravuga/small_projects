package com.example.bookmyseats.service.login.auth;
import com.example.bookmyseats.factory.MongoFactory;
import com.example.bookmyseats.service.login.hash.HashGenerator;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import org.bson.Document;
public class Auth {
    private static MongoFactory userObject = new MongoFactory();
    public static boolean auth(String username, String password){
        try {
            Document creds = new Document();
            creds.put("username",username);
            password = HashGenerator.encryptThisString(password);
            creds.put("password",password);
            MongoCollection collection = userObject.getCollection("bookmyseats","userBase");
            MongoCursor iterator = collection.find(creds).iterator();
            if(iterator.hasNext()==true){
                return true;
            }else{
                return false;
            }
        }catch (MongoException e) {
            // Log
        }finally {
            // userObject.closeConnection();
        }
        return false;
    }
}
