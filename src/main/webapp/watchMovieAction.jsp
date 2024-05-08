<%@ page import="Data.dao.W_MovieDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 5.
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    int P_ID = Integer.parseInt(request.getParameter("P_ID"));
    int M_ID = Integer.parseInt(request.getParameter("M_ID"));
    String ID = (String) session.getAttribute("ID");

    W_MovieDao dao = new W_MovieDao();
    dao.insertW_Movie(P_ID, M_ID, ID);
%>
<script>
    alert("영화를 시청하였습니다.");
    location.href = "profileDetail.jsp?profile=" + <%=P_ID%>;
</script>