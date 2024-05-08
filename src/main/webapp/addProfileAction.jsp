<%@ page import="Data.dto.ProfileDto" %>
<%@ page import="Data.dao.ProfileDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 3.
  Time: 오후 8:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String P_NAME = request.getParameter("P_NAME");
    String P_IMG = request.getParameter("P_IMG");
    String ID = request.getParameter("ID");

    ProfileDto dto = new ProfileDto();
    dto.setP_NAME(P_NAME);
    dto.setP_IMG(P_IMG);
    dto.setID(ID);

//    System.out.println(P_IMG);
//    System.out.println(P_NAME);
//    System.out.println(ID);

    ProfileDao dao = new ProfileDao();
    dao.insertProfile(dto);
    response.sendRedirect("profile.jsp?ID="+ID);
%>