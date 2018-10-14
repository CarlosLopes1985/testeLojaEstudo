package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;

public class Dao {

	public Connection con;
	public ResultSet rs;
	public PreparedStatement stmt;
	
	public DB con2;
	public BasicDBObject stmt2;
	public DBCursor rs2;
	
	public void openMongo() throws Exception{
		Mongo mongo =new Mongo();
		 con2 = mongo.getDB("workshop1");
	}
	/**
	 * Abre a conexão
	 * @throws Exception
	 */
	public void open( )throws Exception{
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/lojaArtesanato","root","371casa1");
	}
	
	/**
	 * Fecha a conexão
	 * @throws Exception
	 */
	public void close( )throws Exception{
		con.close();
	}
	
	/**
	 * Resposável por testar a conexão
	 * @param args
	 */
	public static void main(String[] args) {
		
		try {
				Dao d = new Dao();
				d.open();
				d.close();
				System.out.println("Aberta com sucesso!!!");
			} catch (Exception e) {
				System.out.println("Deu merda!!!");
		}

	}
}
