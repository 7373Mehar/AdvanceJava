import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import java.sql.*;

@WebListener
public class DbConnection implements ServletContextListener 
{
	public void contextInitialized(ServletContextEvent evt) 
	{
		ServletContext app=evt.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost/","root","mysql");
			createDatabase(cn1);
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/cms","root","mysql");
			createTables(cn);
			PreparedStatement psinsert=cn.prepareStatement("insert into customerinfo values(?,?,?,?,?,?)");
			app.setAttribute("insert",psinsert);
			Statement st=cn.createStatement();
			app.setAttribute("st",st);
			PreparedStatement pssearch=cn.prepareStatement("select * from customerinfo where cid=?");
			app.setAttribute("search",pssearch);
			PreparedStatement psdelete=cn.prepareStatement("delete from customerinfo where cid=?");
			app.setAttribute("delete",psdelete);
			PreparedStatement psupdate=cn.prepareStatement("update customerinfo set firstname=?,lastname=?,city=?,phone=?,email=? where cid=?");
			app.setAttribute("update",psupdate);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
	private static void createDatabase(Connection cn1) throws Exception
	{
		Statement st=cn1.createStatement();
		st.execute("create database if not exists cms");
		System.out.println("Database created...");
	}
	private static void createTables(Connection cn)throws Exception
	{
		Statement st=cn.createStatement();
		st.execute("create table if not exists customerinfo(cid int primary key,firstname varchar(20),lastname varchar(20),city varchar(20),phone varchar(20),email varchar(40))");
		System.out.println("Table created...");
	}
}
