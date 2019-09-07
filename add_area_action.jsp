<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>


<% 	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
           Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

            Statement st=con.createStatement();
	
           Statement st1=con.createStatement();
	st1.executeUpdate("create table "+request.getParameter("t2")+" ( party_name varchar(10), counts int)");
	
           st.executeUpdate("insert into area(area_code,area_name) values('"+request.getParameter("t2")+"','"+request.getParameter("t1")+"')");
	
	response.sendRedirect("");
	
	
%>	