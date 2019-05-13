<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
	<head>
		<title>select operation</title>
	</head>
	<body>
		<h1>更改信息</h1>
		<form action="update_mid.jsp" method="post">
			<table border="1" width="100%" Cellpadding="0" cellspacing=0>
				<tr>
					<th>id</th>
					<th>姓名</th>
					<th>访问地址</th>
					<th>排名</th>
					<th>国家</th>
				</tr>
			
				<tr>
					<td align="center"><input type="text" name="id" value="<c:out value="${param.id}" />"/></td>
					<td align="center"><input type="text" name="name" value="<c:out value="${param.name}" />"/></td>
					<td align="center"><input type="text" name="url" value="<c:out value="${param.url}" />"/></td>
					<td align="center"><input type="text" name="alexa" value="<c:out value="${param.alexa}" />"/></td>
					<td align="center"><input type="text" name="country" value="<c:out value="${param.country}" />"/></td>
				</tr>
			</table>
			<input type="submit" value="修改" />
		</form>
	</body>
</html>