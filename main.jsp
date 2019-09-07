<html>
   <head>
   </head>
   
   <body>
   <%@ page import="java.sql.*" %>
    <%= request.getParameter("vote") %><%= request.getParameter("area")%>
    <%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
          Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

             
            Statement st= con.createStatement();
            int count=0;
            ResultSet rs = st.executeQuery("select * from "+ request.getParameter("area")+" where party_name= '"+request.getParameter("vote")+"'");
           	 while(rs.next()) {
	count=rs.getInt("counts");
	count=count+1;
	}
	st.executeUpdate("update "+ request.getParameter("area")+" set counts="+count+" where party_name= '"+request.getParameter("vote")+"'" );
	%>
   
   </body>
</html>
