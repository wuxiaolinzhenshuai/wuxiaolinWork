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
	<center>
	当前用户:${user.uname}
	<table border="1px" bordercolor="blue" width="800px">
		<tr>
			<td>图书ID</td>
			<td>图书名</td>
			<td>类别</td>
			<td>作者</td>
			<td>喜欢</td>
			
		</tr>
		<c:forEach items="${wlist}" var="s">
			<tr>
				<td>${s.cid}</td>
				<td>${s.cname}</td>
				<td>${s.cbie}</td>
				<td>${s.czuozhe}</td>
				<td>
					<input type="checkbox">喜欢
				</td>
			</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>