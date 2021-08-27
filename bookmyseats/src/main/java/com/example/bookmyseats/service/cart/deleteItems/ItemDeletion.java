package com.example.bookmyseats.service.cart.deleteItems;

import com.example.bookmyseats.factory.MongoFactory;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;

public class ItemDeletion {
    public static boolean deleteFromCart(String username,String event, Integer seats){
        try{
            Document userObject = new Document();
            userObject.put("username",username);
            userObject.put("event",event);
            userObject.put("seats",seats);
            MongoCollection collection = MongoFactory.getCollection("bookmyseats","cart");
            collection.findOneAndDelete(userObject);
        }catch (MongoException e){
            //Log
        }finally {
            // MongoFactory.closeConnection();
        }
        return false;
    }
}
