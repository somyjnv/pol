<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>


<% 	String s="";
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
           Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

            Statement st=con.createStatement();
	
	ResultSet rs= st.executeQuery("select * from area where area_name='"+request.getParameter("c")+"'");
           
	 while(rs.next()) {
	s=rs.getString("area_code");
	}
           
           st.executeUpdate("insert into user(ID,area_code) values("+request.getParameter("t1")+",'"+s+"')");
	response.sendRedirect("add_user.jsp");
	
%>	