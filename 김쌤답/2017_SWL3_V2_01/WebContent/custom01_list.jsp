<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "model.*"%>
    <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table { border-collapse: collapse; width:100%; }
.t1 {font-weight:bold; text-align:center}
.t2 {text-align:center}
</style>
<body>
<%
CustomDAOImpl cst_dao = CustomDAOImpl.getInstance();
ArrayList<CustomVO> customs = cst_dao.readList();
%>
<h1 align=center>회원목록조회</h1>

<hr>
  <table border="1">
    <tr class=t1>
      <td>회원아이디</td>
      <td>회원이름</td>
      <td>이메일</td>
      <td>연락처</td>
    </tr>
    <%
    for(CustomVO cst : customs) 
    {
    %>
    <tr class="t2">
      <td><%= cst.getP_id() %></td>
      <td><%= cst.getC_name() %></td>
      <td><%= cst.getC_email() %></td>      
      <td><%= cst.getC_tel() %></td>
    </tr>
    <%
    }
    %>
  </table>
  <hr>
  <h2 align="center">HRDKOREA Coptyright &copy;2015 ALL rights reserved. Human resources Development Service of Korea</h2>
</body>
</html>