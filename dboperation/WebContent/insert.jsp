<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
	<head>
		<title>insert</title>

	</head>
	<body>
		<form action="insert_mid.jsp" mothed="get ">
			<table>
			<tr>
				<td align="right">id:</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td align="right">name:</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td align="right">url:</td>
					<td><input type="text" name="url" /></td>
				</tr>
				<tr>
					<td align="right">alexa:</td>
					<td align="right"><input type="text" name="alexa" /></td>
				</tr>
				<tr>
					<td align="right">country:</td>
					<td><input type="text" name="country" /></td>
				</tr>

			</table>
			<input type="submit" value="添加" />
		</form>



	</body>


</html>