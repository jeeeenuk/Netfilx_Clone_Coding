<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 6.
  Time: 오전 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>