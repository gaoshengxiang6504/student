<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/addStudent" method="post">
  <table align="center" border="0">
  <tr><td><p align="center" ><b>添加学生信息</b></p></td></tr>
   <tr align="right"><td>name:<input name="name"  type="text">必填项</td></tr>
   <tr align="right"><td>age:<input name="age" type="text">必填项</td></tr>
   <tr align="right"><td>gender:<input name="gender" type="text">选填项</td></tr>
   <tr align="right"><td>number:<input name="number" type="text">选填项</td></tr>
   <tr align="right"><td>address:<input name="address" type="text">选填项</td></tr>
   <tr align="right"><td>status:<input name="status" type="text">必填项</td></tr>
   <tr align="left"><td><input type="submit" value="确定">
   <input type="reset" value="重置">
   <a href="${pageContext.request.contextPath }/controller"><input type="button" value="返回"></a></td>
 </table>
</form>
</body>   
</html>