<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="add" method="post">
		<table>
			<tr>
				<td>图书名:<input type="text" name="cname"></td>
			</tr>
			<tr>	
				<td>类别:<input type="text" name="cbie">
				</td>
			</tr>
			<tr>	
				<td>作者:<input type="text" name="czuozhe"></td>
			</tr>
			<tr>	
				<td>欢迎程度:<input type="text" name="cying"></td>
			</tr>
			<tr>	
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>