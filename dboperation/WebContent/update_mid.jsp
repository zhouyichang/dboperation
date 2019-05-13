<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
	<head>
		<title>update</title>
		<meta http-equiv="refresh" content="2;url=info.jsp"/>
	</head>
	<body>

		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    	 url="jdbc:mysql://localhost:3306/RUNOOB?useUnicode=true&characterEncoding=utf-8"
    	 user="root"  password="123456"/>

		<sql:update dataSource="${snapshot}" var="name">
			update websites set name=?,url=?,alexa=?,country=? WHERE id = ?;
			<sql:param value="${param.name}" />
			<sql:param value="${param.url }" />
			<sql:param value="${param.alexa }" />
			<sql:param value="${param.country }" />
			<sql:param value="${param.id}" />
		</sql:update>

	</body>
</html>