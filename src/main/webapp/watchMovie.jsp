<%@ page import="Data.dao.MovieDao" %>
<%@ page import="Data.dto.MovieDto" %>
<%@ page import="java.util.List" %>
<%@ page import="Data.dao.W_MovieDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 5.
  Time: 오전 1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wokflix-Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: KoPubDotum, serif;
        }

        .profile-container {
            background: #141414;
            bottom: 0;
            left: 0;
            position: fixed;
            right: 0;
            text-align: center;
            top: 0;
            z-index: 0;
        }

        .profile-container .profile-center {
            align-items: center;
            bottom: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            left: 0;
            position: absolute;
            right: 0;
            top: 0;
            z-index: 100;
        }

        .profile-h1-label {
            color: whitesmoke;
            font-size: 3.5vw;
            font-weight: unset;
            width: 100%;
        }

        .list-profiles {
            max-width: 80%;
        }

        div.left {
            margin-top: 10px;
            width: 50%;
            float: left;
        }

        div.right {
            margin-top: 100px;
            width: 50%;
            float: right;
        }
    </style>
</head>
<%
    MovieDao dao = new MovieDao();
    W_MovieDao M_dao = new W_MovieDao();
    List<MovieDto> list = dao.getALLData();
    String P_ID = request.getParameter("P_ID");
    //String ID = session.getAttribute("ID").toString();
%>
<body>
<div class="profile-container">
    <div class="profile-center">
        <div class="list-profiles">
            <div class="profile-h1-label">
                <h1>보고싶은 영화를 고르시오</h1>
                <div class="right">
                    <select class="form-select" aria-label="Default select example" id="posterImg">
                        <%
                            for (MovieDto dto : list) {
                                //System.out.println(P_ID);
                                //System.out.println(dto.getM_ID());
                                //System.out.println(M_dao.checkW_Movie(dto.getM_ID(),Integer.parseInt(P_ID)));
                        %>
                        <option value="<%=dto.getM_IMG()%>" M_ID="<%=dto.getM_ID()%>" <%=M_dao.checkW_Movie(dto.getM_ID(),Integer.parseInt(P_ID))?"hidden":""%>><%=dto.getM_TITLE()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="left">
                    <div class="poster-img">
                        <img src="./image/poster/1.jpeg" class="posterImg" style="width: 150px; border-radius: 4px;">
                    </div>
                </div>
                <div>
                    <button type="button" class="btn btn-danger addMovie-btn" style="margin-top: 45px;" id="W_Movie">영화 시청</button>
                    <button type="button" class="btn btn-danger addMovie-btn" style="margin-top: 45px;" onclick="history.back()">돌아 가기</button>
                </div>
                <script type="text/javascript">
                    let M_ID;
                    $("#posterImg").on("change", function () {
                        $(".posterImg").attr("src", $(this).val());
                        M_ID = $("#posterImg").find(":selected").attr("M_ID");
                    })
                    $("#W_Movie").on("click", function () {
                        location.href = `watchMovieAction.jsp?M_ID=\${M_ID}&P_ID=`+ <%=P_ID%>;
                    })
                </script>
            </div>
        </div>
    </div>
</div>
</body>
</html>
