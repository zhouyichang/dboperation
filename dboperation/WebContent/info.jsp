<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
	<head>
		<title>select operation</title>
		<style type="text/css">
			a{
				text-decoration: none;
			}
		</style>
	</head>
	<body>
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/RUNOOB?useUnicode=true&characterEncoding=utf-8"
			user="root" password="123456" />

		<sql:query dataSource="${snapshot}" var="result">
			SELECT * from websites;
		</sql:query>
		<h1 align="center">数据信息</h1>
		
			<table border="1" width="100%" Cellpadding="0" cellspacing=0>
				<tr>
					<th>id</th>
					<th>姓名</th>
					<th>访问地址</th>
					<th>排名</th>
					<th>国家</th>
					<th>操作</th>
				</tr>
				<c:forEach var="row" items="${result.rows }">
					<tr>
						<td align="center"><c:out value="${row.id}" /></td>
						<td align="center"><c:out value="${row.name}" /></td>
						<td align="center"><c:out value="${row.url}" /></td>
						<td align="center"><c:out value="${row.alexa}" /></td>
						<td align="center"><c:out value="${row.country}" /></td>
						<c:url var="update" value="update.jsp" >
							<c:param name="id" value="${row.id}" />
							<c:param name="name" value="${row.name}" />
							<c:param name="url" value="${row.url}" />
							<c:param name="alexa" value="${row.alexa}" />
							<c:param name="country" value="${row.country}" />
						</c:url>
						
						<td align="center"><a href="delete.jsp?id=${row.id}" >delete</a>&nbsp;&nbsp;<a href="${update }">update</a></td>
					</tr>
				</c:forEach>
			</table>
		<form action="insert.jsp">
			<input type="submit" value="添加" />
		</form>
	</body>
</html>