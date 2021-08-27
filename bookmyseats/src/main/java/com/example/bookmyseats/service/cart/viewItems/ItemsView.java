package com.example.bookmyseats.service.cart.viewItems;

import com.example.bookmyseats.factory.MongoFactory;
import com.example.bookmyseats.model.cartInfo.CartInfo;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import org.bson.Document;
import java.util.List;

public class ItemsView {

    private static MongoFactory userObject = new MongoFactory();
    private static List userList;
    private static CartInfo infoObject = new CartInfo();
    public static List<CartInfo> viewItems(){
        try{
            MongoCollection collection = MongoFactory.getCollection("bookmyseats", "cart");
            MongoCursor iterator = collection.find().iterator();
            if(iterator.hasNext()==true){
                infoObject.setUsername(new Document().get("username").toString());
                infoObject.setEvent(new Document().get("event").toString());
                infoObject.setSeats(new Document().get("seats").toString());
                userList.add(infoObject);
                return userList;
            }else {
                infoObject.setUsername("John");
                infoObject.setEvent("event");
                infoObject.setSeats("0");
                userList.add(infoObject);
                return userList;
            }
        }catch (MongoException e){
            // logs
        }finally {
            // MongoFactory.closeConnection();
            return userList;
        }
    }
}
