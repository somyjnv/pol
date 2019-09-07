<html>
<body>

<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>


<% int a=0;
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
          Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

             
            Statement st= con.createStatement();

             
            ResultSet rs = st.executeQuery("select * from user");
	 while(rs.next()) {
	a=Integer.parseInt(rs.getString("ID"));
	}%>
<form action=add_user_action.jsp name=f1>
ID:<input type=text name=t1 value=<%= a+1 %> readonly="readonly" /><br>
Area_Name:<select name=c>
<% ResultSet rs1 = st.executeQuery("select * from area");
	 while(rs1.next()) {
	%>
              <option value="<%= rs1.getString("area_name") %>"><%= rs1.getString("area_name") %></option>
	
 	<% } %>
</select>
<input type=submit>

</form>
</body>
</html>