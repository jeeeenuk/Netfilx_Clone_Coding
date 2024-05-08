<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 3.
  Time: 오전 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dto" class="Data.dto.UserDto"/>
<jsp:useBean id="dao" class="Data.dao.UserDao"/>
<jsp:setProperty name="dto" property="*"/>
<%
    dao.createAccount(dto);
    response.sendRedirect("registrationSuccess.jsp");
%>
