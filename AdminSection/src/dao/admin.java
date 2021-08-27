package dao;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import connection.connection;

/**
 * @author Gaurav.Kumar61
 *
 */
public class admin {
	public admin() {
	}

	public int validateAdminEmail(String email, String password) {
		try {
			connection c = new connection();
			DB database = c.getConnection();
			DBCollection collection = database.getCollection("adminInfo");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("id", email);
			DBCursor cursor = collection.find(searchQuery);
			if (cursor.hasNext()) {
				new BasicDBObject();
				BasicDBObject dbo = (BasicDBObject)cursor.next();
				String dbpassword = dbo.getString("pwd");
				if (dbpassword.equals(password)) {
					return 1;
				}

				return 0;
			}
		} catch (Exception var10) {
			var10.printStackTrace();
		}

		return 0;
	}

	public String searchName(String name) {
		String dbpassword = "";

		try {
			connection c = new connection();
			DB database = c.getConnection();
			DBCollection collection = database.getCollection("contacts");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("email", name);
			DBCursor cursor = collection.find(searchQuery);
			if (cursor.hasNext()) {
				new BasicDBObject();
				BasicDBObject dbo = (BasicDBObject)cursor.next();
				dbpassword = dbo.getString("password");
				return dbpassword;
			}
		} catch (Exception var9) {
			System.out.print(var9);
		}

		return dbpassword;
	}
}
