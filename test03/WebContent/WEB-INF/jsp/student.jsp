<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/controller" method="post">
 name:
  <input name="name" type="text" />
  <input type="submit" value="提交" />
  <a href="${pageContext.request.contextPath }/add"><b>添加学生</b></a>
  </form>
     <table border=1>
		<tr>
			<td>id</td>
			<td>name</td>
			<td>age</td>
			<td>gender</td>
			<td>number</td>
			<td>address</td>
			<td>status</td>
			<td>操作</td>
			<td>操作</td>
		</tr>
		 <c:forEach var="student" items="${student}"> 
		 <tr>
			<td>${student.id}</td>
			<td>${student.name}</td>
			<td>${student.age}</td>
			<td>${student.gender}</td>
			<td>${student.number}</td>
			<td>${student.address}</td>
			<td>${student.status}</td>
			<td><a href="${pageContext.request.contextPath }/update?id=${student.id}">修改</a></td>
			<td><a href="${pageContext.request.contextPath }/delete?id=${student.id}">删除</a></td>
		</tr>
		</c:forEach>
</table>		
</body>
</html>