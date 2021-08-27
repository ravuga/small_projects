package com.example.demo.spring.factory;

import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

public class MongoFactory {
    private static MongoClient mongoClient;
    private static String MONGO_HOST = "localhost";
    private static int MONGO_PORT = 27017;

    public static MongoClient createConnection(){
        if (mongoClient == null) {
            try {
                mongoClient = new MongoClient(MONGO_HOST, MONGO_PORT);
            } catch (MongoException ex) {
                //Logs
            }
        }
        return mongoClient;
    }

    public static MongoDatabase getDatabase(String database_name){
        return createConnection().getDatabase(database_name);
    }
    public static MongoCollection<Document> getCollection(String database_name, String collection_name){
        return getDatabase(database_name).getCollection(collection_name);
    }

    public static void closeConnection(){
        mongoClient.close();
    }

}
