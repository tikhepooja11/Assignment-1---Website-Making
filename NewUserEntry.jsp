<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="javax.servlet.* ,java.io.* ,java.sql.*"
 %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new user entry page</title>
<link rel="stylesheet" type="text/html" href="signup.html"/>
</head>
<body>
<%
String name=request.getParameter("userName");  
out.print(name);

String addr=request.getParameter("userAddr");
out.print(addr);

String city=request.getParameter("userCity");
out.print(city);

String mail=request.getParameter("userMail");
out.print(mail);

String contact=request.getParameter("userContact");
out.print(contact);

String gender=request.getParameter("userGender");
out.print(gender);

String country=request.getParameter("userCountry");

String uname=request.getParameter("uName");

String upass=request.getParameter("uPassword");
	Connection conn=null;
		try{
				final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
				final String DB_URL="jdbc:mysql://localhost:3306/wt";	  
				Class.forName(JDBC_DRIVER);
				conn=DriverManager.getConnection(DB_URL,"root","pooja");
				Statement stmt=conn.createStatement();
				//int i=stmt.executeUpdate("insert into emp1 (ename,addr)values('"+name+"','"+addr+"');");
				int i=stmt.executeUpdate("insert into emp1 (ename,addr,city,mail,contact,uname,upass) values('"+name+"','"+addr+"','"+city+"','"+mail+"','"+contact+"','"+uname+"','"+upass+"');");  
				if (i>0){
				out.print( " Employee "+name+" Successfully registered ");}
		
			}catch(Exception e){};
			
		conn.close();
%>
</body>
</html>