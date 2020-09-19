<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%

	Class.forName("com.mysql.jdbc.Driver");
	String jdbcUrl = "jdbc:mysql://localhost:3306/shubhashish"; 
	String username = "root";
	String password = "mynewpassword";
	Connection connection = null;

	connection = DriverManager.getConnection(jdbcUrl, username, password);

	Statement statement = connection.createStatement();

	String x=request.getParameter("name");
	String y=request.getParameter("dept");
	
	String sql = "insert into emp values ('"+x+"','"+y+"')";
	statement.executeUpdate(sql);
	PrintWriter out1=response.getWriter();
	out1.println("<h1> Record Successfully Inserted </h1?");
	
	RequestDispatcher rd=request.getRequestDispatcher("form.html"); 
	rd.include( request, response);
	
%>

