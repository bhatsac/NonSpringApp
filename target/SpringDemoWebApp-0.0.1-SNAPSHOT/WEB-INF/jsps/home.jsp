<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
sachin Bhat!!!!!
<%=session.getAttribute("name") %> </br>
<%=request.getAttribute("name") %>
<c:out value="${name }"></c:out>
</br>
<sql:query var="rs" dataSource="jdbc/spring">
select name from offers
</sql:query>
<c:forEach var="row" items="${rs.rows}">
    Name ${row.name}<br/>
  
</c:forEach>
<a href="${pageContext.request.contextPath}/offers">Offers</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/createOffers">create Offers</a>

</body>
</html>