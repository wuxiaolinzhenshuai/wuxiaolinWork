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



<link href="<%=linkPath %>/themes/black/easyui.css"  rel="stylesheet" type="text/css" >
<link href="<%=linkPath %>/themes/color.css" >
<link href="<%=linkPath %>/themes/icon.css" >


<script type="text/javascript" src="<%=linkPath %>/jquery.min.js"></script>
<script type="text/javascript" src="<%=linkPath %>/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=linkPath %>/easyui-lang-zh_CN.js"></script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
	当前用户:${user.uname}
	<form action="list" method="post">
		关键字:<td><input type="text" name="mohu" value="${mohu}"></td>
			 <td><input type="submit" value="查询"></td>
			 <td><input type="button" value="添加" onclick="location='toAdd'"></td>
	</form>
	<tr>
		<td>
			<input type="checkbox">科技
			<input type="checkbox">哲学
			<input type="checkbox">音乐
			
		</td>
	</tr>
	<table border="1px" bordercolor="blue" width="800px">
		<tr>
			<td>图书ID</td>
			<td>图书名</td>
			<td>类别</td>
			<td>作者</td>
			<td>受欢迎程度</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list}" var="s">
			<tr>
				<td>${s.cid}</td>
				<td>${s.cname}</td>
				<td>${s.cbie}</td>
				<td>${s.czuozhe}</td>
				<td>${s.cying}</td>
				<td>
					<input type="button" value="修改" onclick="location='toUpdate?cid=${s.cid}'">
					<input type="button" value="删除" onclick="location='toDel?cid=${s.cid}'">
				</td>
			</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>