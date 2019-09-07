<html>
<body>

<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<form>
Area to be updated:<select name=c>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
                 Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

             
                  Statement st= con.createStatement();

             
                  ResultSet rs = st.executeQuery("select * from area");

	
	while(rs.next()) {
	%><option><%= rs.getString("area_name") %></option><%
	}
%><input type=submit value=submit onclick="form.action='add_candidate_action.jsp';">
</form>
</body>
</html>