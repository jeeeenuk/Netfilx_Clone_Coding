<%@ page import="Data.dao.ProfileDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 6.
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    ProfileDao dao = new ProfileDao();
    int P_ID = Integer.parseInt(request.getParameter("P_ID"));
    //System.out.println(P_ID);
    dao.deleteProfile(P_ID);
    response.sendRedirect("profile.jsp?ID="+session.getAttribute("ID"));
%>