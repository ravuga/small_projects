package com.example.bookmyseats.service.signup;

import com.example.bookmyseats.factory.MongoFactory;
import com.example.bookmyseats.service.login.hash.HashGenerator;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import org.bson.Document;
import org.springframework.stereotype.Controller;

@Controller
public class Sign_Up {
    private static MongoFactory userObject = new MongoFactory();

    public static boolean signUp(String username, String password){
        try{
            MongoCollection collection = userObject.getCollection("bookmyseats","userBase");
            Document newUser = new Document();
            newUser.put("username",username);
            password = HashGenerator.encryptThisString(password);
            newUser.put("password",password);
            MongoCursor findIterable = collection.find(newUser).iterator();
            if(findIterable.hasNext()==false){
                   collection.insertOne(newUser);
                   return true;
            }else{
                return false;
            }
        }catch(MongoException e) {
            // Log
        }finally {
            // userObject.closeConnection();
        }
        return false;
    }
}
