<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.*" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
CustomDAOImpl cst_dao = CustomDAOImpl.getInstance();
ArrayList<CustomVO> customs = cst_dao.readList();
%>
  <h1>회원목록조회</h1>
  <table border="1">
    <tr>
      <td>회원아이디</td>
      <td>회원이름</td>
      <td>이메일</td>
      <td>연락처</td>
    </tr>
    <%
    for(CustomVO cst : customs) 
    {
    %>
    <tr>
      <td><%= cst.getP_id() %></td>
      <td><%= cst.getC_name() %></td>
      <td><%= cst.getC_email() %></td>
      <td><%= cst.getC_tel() %></td>
    </tr>
    <%
    }
    %>
  </table>
</body>
</html>