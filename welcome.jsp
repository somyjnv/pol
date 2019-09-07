<html>
<head>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<% String s=request.getParameter("t1");
int flag=0;
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	
          Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\pol\\Database4.accdb"); 

             
            Statement st= con.createStatement();

             
            ResultSet rs = st.executeQuery("select * from user");
	 while(rs.next()) {
			String s1=rs.getString("ID");
			if(s.equals(s1))
			{ 	if(Boolean.parseBoolean(rs.getString("checked")))
				{ %>you had already voted  <%
				}
				else
				{ 
				  ResultSet rs1=st.executeQuery("select * from "+ rs.getString("area_code"));
				  %><form action="main.jsp" method="GET">
					<input type="text" style="display:none" name="area" value="<%= rs.getString("area_code") %>"/>
				     <%while(rs1.next())
					{ %>
					        <input  type="radio" name="vote" value="<%= rs1.getString("party_name") %>"/><%= rs1.getString("party_name") %><br>
					      					        <%
					}%> 
					 <input type=submit>
					</form><%
					st.executeUpdate("update user set checked=TRUE where id="+s );
				}
			    flag=1;
					
			}
		           }
			if(flag==0)
			{%><h1> SOooory you are not registered</h1> <% 	
			}
			
		
		
		
	
%>
</body>
</html>

 