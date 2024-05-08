<%@ page import="Data.dto.UserDto" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오후 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dao" class="Data.dao.UserDao"/>
<%
    String ID = request.getParameter("ID");
    UserDto dto = dao.IDCheck(ID);
    if (dto==null){
        response.sendRedirect("registrationPW.jsp?ID=" + request.getParameter("ID"));
    } else {
        response.sendRedirect("login.jsp");
    }
%>