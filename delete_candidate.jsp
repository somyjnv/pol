<%= request.getParameter("delete") %>
<%= request.getParameter("area_code")
%>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<% 	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
                 Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

             
                  Statement st= con.createStatement();
                 
	st.executeUpdate("delete from "+request.getParameter("area_code")+" where party_name='"+request.getParameter("delete")+"'");
	response.sendRedirect("add_candidate.jsp");
%>
	


 