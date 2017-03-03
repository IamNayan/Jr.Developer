<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data</title>
</head>
<body>
<center>
 <table align="center" border=2px width="80%">
 <tr align="center">
    <th colspan="7">User Info</th>
  </tr>
 <tr bgcolor="blue"> 
 <th>fname</th>
 <th>lname</th>
 <th>uemail</th>
 <th>umob</th>
 <th>uadd</th>
 <th></th>
 <!-- <th>Update</th>
 <th>Delete</th> -->
 </tr>
  <% Iterator itr; %>
  <% List data = (List) request.getAttribute("AllData");
     for(itr = data.iterator(); itr.hasNext();){
     %>
     
     <tr>
     
     <% String s = (String)itr.next(); %>
    		<%-- <td>
    		<input type="radio" name="radios" id="radio1" value="<%=s%>"/>
    		<label for="radio1"></label></td>  --%> 
    		 <td> <%= s%></td> 
    		<%--<td><%= itr.next() %></td> --%>
    		<td><%= itr.next()%></td> 
    		<td><%= itr.next() %></td> 
    		<td><%= itr.next() %></td>
    		<td><%= itr.next() %></td>
    		
    		
    		<td><a href=>edit</a> <a href=>delete</a></td>
    		<%-- <td><input type = "submit" value = "update" name="update" onclick="UpdateRecord(<%= s%>);"></td>  
    		<td><input type = "submit" value = "delete" name="delete" onclick="deleteRecord(<%= s%>);"></td>  --%> 
     
    <%  } %>
      
  </tr>
 </table>
 </center>
</body>
</html>