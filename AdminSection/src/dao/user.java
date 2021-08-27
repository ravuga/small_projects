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
public class user {	
	public int emailValidate(String email, String password)
	{
		try {
			connection c = new connection();
			DB database = c.getConnection();
			DBCollection collection = database.getCollection("contacts");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("email", email);
			DBCursor cursor = collection.find(searchQuery);

			if (cursor.hasNext()) 
			{
				cursor.close();
				return 1;
			}
			else{

			}

		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return 0;

	}

	public int verifyPassword(String email, String password)
	{
		try {

			connection c = new connection();
			DB database = c.getConnection();
			DBCollection collection = database.getCollection("contacts");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("email", email);
			DBCursor cursor = collection.find(searchQuery);
			if(cursor.hasNext())
			{
				BasicDBObject dbo= new BasicDBObject();
				dbo = (BasicDBObject) cursor.next();
				cursor.close();
				String dbpassword = dbo.getString("password");
				if(password.equals(dbpassword))
				{
					return 1;

				}
				else
				{
					return 0;
				}
			}
		}
		catch(Exception e)
		{
			System.out.print(e);
		}

		return 0;	
	}
	public int saveEmployee(String email, String pass, String pass2 )
	{
		if(pass.equals(pass2))
		{
			try {
				connection c = new connection();
				DB database = c.getConnection();
				DBCollection collection = database.getCollection("contacts");
				BasicDBObject searchQuery = new BasicDBObject();
				searchQuery.put("email", email);
				DBCursor cursor = collection.find(searchQuery);
				if(cursor.hasNext())
				{	
					cursor.close();
					return 0;
				}
				else
				{
					cursor.close();
					BasicDBObject document = new BasicDBObject();
					document.put("email", email);
					document.put("password", pass);
					collection.insert(document);
					return 1;
				}
			}
			catch(Exception e)
			{
				System.out.print(e);
			}
		}
		else
		{
			return -1;
		}

		return 0;	

	}
	public int updateUser(String email, String pass)
	{
		try {
			connection c = new connection();
			DB database = c.getConnection();
			DBCollection collection = database.getCollection("contacts");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("email", email);
			DBCursor cursor = collection.find(searchQuery);
			if(cursor.hasNext())
			{      
				BasicDBObject query = new BasicDBObject();
				query.put("email", email);

				BasicDBObject newDocument = new BasicDBObject();
				newDocument.put("email", email);
				newDocument.put("password", pass);

				BasicDBObject updateObject = new BasicDBObject();
				updateObject.put("$set", newDocument);

				collection.update(query, updateObject);
				return 1;

			}
			else
			{

				cursor.close();
				return 0;

			}
		}
		catch(Exception e)
		{
			System.out.print(e);
		}

		return 0;    

	}

	public int deleteUser(String email)
	{
		try {
			connection c = new connection();
			DB database = c.getConnection();
			DBCollection collection = database.getCollection("contacts");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("email", email);
			DBCursor cursor = collection.find(searchQuery);
			if(cursor.hasNext())
			{      
				collection.remove(searchQuery);
				return 1;

			}
			else
			{
				cursor.close();
				return 0;

			}
		}
		catch(Exception e)
		{
			System.out.print(e);
		}

		return 0;    

	}



}
