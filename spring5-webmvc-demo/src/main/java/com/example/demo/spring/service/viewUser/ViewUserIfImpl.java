package com.example.demo.spring.service.viewUser;

import com.example.demo.spring.factory.MongoFactory;
import com.example.demo.spring.model.UserIfImpl;
import com.mongodb.MongoException;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import org.bson.Document;

import java.util.HashMap;

public class ViewUserIfImpl implements ViewUserIf {

    @Override
    public UserIfImpl viewDefaultUser() {
        UserIfImpl defaultUser = new UserIfImpl();
        defaultUser.defaultUserIfImpl();
        return defaultUser;
    }

    @Override
    public HashMap<String, String> viewAllUser() {
        HashMap<String, String> userList = new HashMap<>();
        MongoFactory userObject = new MongoFactory();
        try {
            MongoCollection<Document> collection = MongoFactory.getCollection("UserBase", "UserData");
            FindIterable<Document> cursor = collection.find();
            MongoCursor<Document> iterator = cursor.iterator();
            while (iterator.hasNext()) {
                Document dbObject = iterator.next();
                userList.put(dbObject.get("username").toString(), dbObject.get("password").toString());
            }
            return userList;
        }catch (MongoException e)
        {
                // Log Exception
        }finally {
             //   userObject.closeConnection();
        }
        return userList;
    }
}
