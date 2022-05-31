<%@page import="com.javaex.dao.PhoneDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	int id = Integer.parseInt(request.getParameter("id"));
	PhoneDao phoneDao = new PhoneDao();
	
	
	int count = phoneDao.personDelete(id);
	
	response.sendRedirect("./list.jsp");



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test

</body>
</html>