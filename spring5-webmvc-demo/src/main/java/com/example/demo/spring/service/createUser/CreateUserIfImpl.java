package com.example.demo.spring.service.createUser;

import com.example.demo.spring.factory.MongoFactory;
import com.example.demo.spring.model.UserIfImpl;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;


public class CreateUserIfImpl {

    MongoFactory userObject = new MongoFactory();
    public boolean createUser(String userName, String password) {
        try{
            MongoCollection collection = userObject.getCollection("UserBase","UserData");
            Document userDoc = new Document();
            userDoc.put("username",userName);
            userDoc.put("password",password);
            collection.insertOne(userDoc);
            return true;
        }catch(MongoException e){
            // Log
        }finally {
           // userObject.closeConnection();
        }
        return false;
    }
}
