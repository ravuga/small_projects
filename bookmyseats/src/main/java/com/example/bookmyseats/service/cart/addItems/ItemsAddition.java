package com.example.bookmyseats.service.cart.addItems;


import com.example.bookmyseats.factory.MongoFactory;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import org.bson.Document;

public class ItemsAddition {
    public static boolean addToCart(String username,String event, Integer seats){
        try{
            Document userObject = new Document();
            userObject.put("username",username);
            userObject.put("event",event);
            userObject.put("seats",seats);
            MongoCollection collection = MongoFactory.getCollection("bookmyseats","cart");
            MongoCursor findIterable = collection.find(userObject).iterator();
            if(findIterable.hasNext()==false) {
                collection.insertOne(userObject);
                return true;
            }else{
                return false;
            }
        }catch (MongoException e){
            //Log
        }finally {
           // MongoFactory.closeConnection();
        }
        return false;
    }
}
