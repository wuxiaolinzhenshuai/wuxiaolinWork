<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";  //http://localhost:8080/easyuiDemo/easyui
	String linkPath = basePath+"/"; //http://localhost:8080/easyuiDemo/easyui
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post">
		<table>
			<tr>
				<td>用户名:<input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>密码:<input type="text" name="upassword"></td>
			</tr>
			<tr>
				<td><input type="submit" value="登陆"></td>
			</tr>
		</table>
	</form>
</body>
</html>