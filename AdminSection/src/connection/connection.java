package connection;
import com.mongodb.DB;
import com.mongodb.MongoClient;

/**
 * @author Gaurav.Kumar61
 *
 */
public class connection {
	public DB getConnection()
	{	
		@SuppressWarnings("resource")
		MongoClient mongoclient = new MongoClient("localhost",27017);
		@SuppressWarnings("deprecation")
		DB database = mongoclient.getDB("myMongoDb");
		return database ;
	}
}
