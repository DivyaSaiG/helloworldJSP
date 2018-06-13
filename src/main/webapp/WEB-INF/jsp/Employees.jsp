<%@page import="com.sai.helloworld.services.EmployeeService"%>
<%@page import="com.sai.helloworld.model.Employee"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<%
EmployeeService employeeService = new EmployeeService();
List<Employee> employeeList = employeeService.getAllEmployees();
for (Employee emp: employeeList){
%>
<tr> <td> <%=emp.getEmployeeId()%> </td>
<td> <%=emp.getFirstName()%> </td>
 <td> <%=emp.getLastname()%> </td>
<td> <%=emp.getDepartment()%> </td></tr>
<%} %>
</table>


</body>
</html>