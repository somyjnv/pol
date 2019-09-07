<%
String s=request.getParameter("t1");
String s1=request.getParameter("p1");
if(s.equals("somy") && s1.equals("somy"))
{%><jsp:forward page="admin_home.html" /> <% }
%>