<%@ page import="java.util.List" %>
<%@ page import="Data.dao.UserDao" %>
<%@ page import="Data.dto.UserDto" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오후 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");

    String ID = request.getParameter("ID");
    String PW = request.getParameter("PW");

    UserDao dao = new UserDao();

    List<UserDto> list = dao.getAllList();

    for (UserDto dto : list) {
        if (ID.equals(dto.getID()) & PW.equals(dto.getPW())) {
            session.setAttribute("ID", ID);
            session.setAttribute("PW", PW);
            response.sendRedirect("profile.jsp?ID=" + ID);
        } else {%>
<script>
    alert("아이디 또는 비밀번호가 틀렸습니다. 계정을 확인하세요.");
    history.back();
</script>
<%
        }
    }
%>
<%--    for(UserDto dto : list){--%>
<%--        if(ID.equals(dto.getID())){--%>
<%--            if(PW.equals(dto.getPW())){--%>
<%--                session.setAttribute("ID", ID);--%>
<%--                session.setAttribute("PW", PW);--%>
<%--                response.sendRedirect("profile.jsp?ID="+ID);--%>
<%--            } else { %>--%>
<%--                <script>--%>
<%--                    alert("비밀번호가 틀렸습니다. 확인해주세요.")--%>
<%--                    history.back();--%>
<%--                </script>--%>
<%--            <% }--%>
<%--        } else { %>--%>
<%--                <script>--%>
<%--                    alert("아이디가 틀렸습니다. 확인해주세요.")--%>
<%--                    history.back();--%>
<%--                </script>--%>
<%--            <%}--%>
<%--    }--%>
%>
