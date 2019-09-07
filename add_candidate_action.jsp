<html>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<table border=3><tr><th>party_name</th><th></th></tr>
<% 	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
                 Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

             	String s=null;
                  Statement st= con.createStatement();

      
                 
	ResultSet rs = st.executeQuery("select * from area where area_name='"+request.getParameter("c")+"'" );
	while(rs.next()) {
	s=rs.getString("area_code");
	}
	ResultSet rs1 = st.executeQuery("select * from "+s );
	while(rs1.next()) { String sr=rs1.getString("party_name");
	out.println("<form action=delete_candidate.jsp><tr><td><b><i>"+sr+"</td><td><input type=submit  value=delete><input type=hidden value="+sr+" name=delete ><input type=hidden value="+s+" name=area_code ></td></tr></form>");
	}
	out.println("<tr><td><form action=add_party.jsp><input type=text placeholder='enter party name to add' name=t1></td><td><input type=submit value=add ><input type=hidden value="+s+" name=area_code ></form></td></tr></table>");
%>
</body>
</html>

 