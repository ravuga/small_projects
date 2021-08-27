package com.example.demo.spring.service.deleteUser;

import com.example.demo.spring.factory.MongoFactory;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;

public class DeleteUserIfImpl implements DeleteUserIf {
    MongoFactory userObject = new MongoFactory();
    public boolean deleteOneUser(String userName,String password){
        try{
            MongoCollection<Document> collection = MongoFactory.getCollection("UserBase", "UserData");
            Document userDoc = new Document();
            userDoc.put("username",userName);
            userDoc.put("password",password);
            collection.findOneAndDelete(userDoc);
            return true;
        }catch (MongoException e){
            // Log
        }finally{
          //  userObject.closeConnection();
        }
        return false;
    }
}
