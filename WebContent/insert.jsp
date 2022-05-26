<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	// personVo를 메모리에 올려서 name,hp,company를 넣는다
	
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo);
	
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personInsert(personVo);
	
	// -- 저장하고 리스트화면으로 가기
	
	//리스트 가져와서 html섞어놓는다
	
	
	//////////////////////////////
	//// 리스트 가져와서 뿌리기 .. ////
	/////////////////////////////
	
	List<PersonVo> personList = phoneDao.getPersonList();
	System.out.println(personList);
	
	
	response.sendRedirect("./list.jsp");
	
	
	
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>리스트-저장후</h2>

	<p>입력한 정보 내역입니다.</p>
	
	<%for(int i=0; i<personList.size(); i++){ %>
	<table border="1">
		<tr>
			<td>이름(name)</td>
			<td><%=personList.get(i).getName() %></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=personList.get(i).getHp() %></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=personList.get(i).getCompany() %></td>
		</tr>
	</table>
	<br>
	<%} %>
	
	
</body>
</html>