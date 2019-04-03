<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="javax.servlet.* ,java.io.* ,java.sql.*"
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>checking user login...</title>
</head>
<body>
<%
String uname=request.getParameter("uName");  
out.print(uname);

String upass=request.getParameter("uPassword");
out.print(upass);

Connection conn=null;
try{

		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		final String DB_URL="jdbc:mysql://localhost:3306/wt";	  
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DB_URL,"root","pooja");
		Statement stmt=conn.createStatement();
		 System.out.println("hello");
		 System.out.println("Fetching records with condition...");
	     String sql = "SELECT * FROM emp1 ";
	     ResultSet rs = stmt.executeQuery(sql);
		 System.out.println("hello1");

		while(rs.next()){
			
	         String username = rs.getString("uname");
	         String password = rs.getString("upass");
	         System.out.println(username);
	         System.out.println(password);
	         if((username.equals(uname)) && (password.equals(upass))){
	        	 System.out.println("login successfull");
	         }
			break;
		}
		 rs.close();

	}catch(Exception e){};
	
conn.close();

%>
</body>
</html>