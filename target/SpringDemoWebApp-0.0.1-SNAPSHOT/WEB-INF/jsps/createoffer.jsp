<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet'   href='${pageContext.request.contextPath}/static/css/main.css' type='text/css'  />
</head>
<body>
<form action="${pageContext.request.contextPath}/docreate" method="post" class="formtable">
<table>
	<tr>
		<td class="label">
			Name:
		</td>
		<td class="control">
			<input type="text" name="name"/>
		</td>
	</tr>
	<tr>
		<td class="label">
			Email:
		</td>
		<td class="control">
			<input type="text" name="email"/>
		</td>
	</tr>
	<tr>
		<td class="label">
			Your Offer:
		</td>
		<td class="control">
			<textarea name="text" rows="4" cols="10"></textarea>
		</td>
	</tr>
	<tr>
		<td class="label">
			Submit:
		</td>
		<td class="control">
			<input type="submit" value="Create Offer"/>
		</td>
	</tr>
</table>

</form>
<a href="${pageContext.request.contextPath}/">home</a>
</body>
</html>