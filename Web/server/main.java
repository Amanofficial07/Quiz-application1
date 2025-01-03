import java.sql.*;
public class main {

	public static void main(String[] args) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:4214/tree","root", "Aman07$");
		    Statement stmt = con.createStatement();
		    System.out.println("Inserting Records");
		    String sql = "Insert into fruit value(54)";
		    stmt.executeUpdate(sql);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
