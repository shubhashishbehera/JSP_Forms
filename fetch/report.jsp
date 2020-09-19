<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>


<h1>Employee Details</h1>
<%

	Class.forName("com.mysql.jdbc.Driver");
	String jdbcUrl = "jdbc:mysql://localhost:3306/shubhashish"; 
	String username = "root";
	String password = "mynewpassword";
	Connection connection = null;

	connection = DriverManager.getConnection(jdbcUrl, username, password);

	Statement statement = connection.createStatement();

	String z=request.getParameter("dept");
	
	String sql = "select * from emp where dept='"+z+"'";

	ResultSet rs = statement.executeQuery(sql);
	
	out.println("<table border='2'>");
	out.println("<tr>");
	out.println("<th>Name</th>");
	out.println("<th>Dept</th>");
	out.println("</tr>");
	
	while(rs.next())
	{
	String ename = rs.getString("name");
	String dept = rs.getString("dept");
	out.println("<tr>");
	out.println("<th>"+ename+"</th>");
	out.println("<th>"+dept+"</th>");
	out.println("</tr>");
	}
	out.println("</table>");
		
%>

