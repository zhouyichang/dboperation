<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
	<head>
		<title>insert</title>
		<meta http-equiv="refresh" content="2;url=info.jsp"/>
		
	</head>
	<body>
		<%-- <%
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		String alexaStr = request.getParameter("alexa");
		String country = request.getParameter("country");
		Integer alexa = Integer.valueOf(alexaStr);
		%> --%>
		
		
		<!--
		JDBC 驱动名及数据库 URL 
		数据库的用户名与密码，需要根据自己的设置
		useUnicode=true&characterEncoding=utf-8 防止中文乱码
 		-->
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/RUNOOB?useUnicode=true&characterEncoding=utf-8"
			user="root" password="123456" />

		
		
		<!--
			插入数据
		 -->
		<sql:update dataSource="${snapshot}" var="result">
			INSERT INTO websites (id,name,url,alexa,country) VALUES(?,?,?,?,?);
			<sql:param value="${param.id }" />
			<sql:param value="${param.name }" />
			<sql:param value="${param.url }" />
			<sql:param value="${param.alexa }" />
			<sql:param value="${param.country }" />
		</sql:update>
		
	</body>
	
	
</html>