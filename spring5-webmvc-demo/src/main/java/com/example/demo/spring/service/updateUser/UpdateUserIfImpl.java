package com.example.demo.spring.service.updateUser;

import com.example.demo.spring.factory.MongoFactory;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import org.bson.Document;

public class UpdateUserIfImpl implements UpdateUserIf {

    MongoFactory userObject = new MongoFactory();
    public boolean updateUser(String old_userName, String old_password, String new_userName, String new_password){
        try{
            MongoCollection collection = userObject.getCollection("UserBase","UserData");
            Document oldUserDoc = new Document();
            oldUserDoc.put("username",old_userName);
            oldUserDoc.put("password",old_password);
            MongoCursor findIterable = collection.find(oldUserDoc).iterator();
            if(findIterable.hasNext()==true){
                Document newUserDoc = new Document();
                newUserDoc.put("username",new_userName);
                newUserDoc.put("password",new_password);

                collection.findOneAndReplace(oldUserDoc,newUserDoc);
                return true;
            }else {
                return false;
            }
        }catch (MongoException e) {
            //log
        }finally {
            //userObject.closeConnection();
        }
        return false;
    }
}
