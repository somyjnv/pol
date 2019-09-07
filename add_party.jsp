<%= request.getParameter("t1") %>
<%= request.getParameter("area_code") %>


 <%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>


<% 	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
           Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

            Statement st=con.createStatement();
	 st.executeUpdate("insert into "+request.getParameter("area_code")+"(party_name) values('"+request.getParameter("t1")+"')");
	response.sendRedirect("add_candidate.jsp");
%>