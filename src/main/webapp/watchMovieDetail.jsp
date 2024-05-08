<%@ page import="Data.dto.MovieDto" %>
<%@ page import="Data.dao.MovieDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 5.
  Time: 오후 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wokflix</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: KoPubDotum, serif;
        }

        .container {
            bottom: 0;
            left: 0;
            position: fixed;
            right: 0;
            text-align: center;
            top: 0;
            z-index: 0;
        }

        .container .container-center {
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

        .h1-label {
            color: #fff;
            font-size: 3.5vw;
            font-weight: unset;
            width: 100%;
        }

        div.left {
            margin-top: 10px;
            float: left;
        }

        div.right {
            margin-top: 10px;
            display: inline-block;
        }

        .movie-icon {
            background-color: #333;
            background-repeat: no-repeat;
            background-size: cover;
            border: 1px solid #404040;
            border-radius: 4px;
            box-sizing: border-box;
            height: 200vw;
            max-height: 360px;
            max-width: 200px;
            min-height: 84px;
            min-width: 250px;
            position: relative;
            text-decoration: none;
            width: 1vw;
        }
        .tbl-style{
            margin-left: 10px;
            border-color: rgba(0, 0, 0, 0.1);
            --bs-table-bg: #141414;
            --bs-table-color: #fff;
        }
    </style>
</head>
<%
    int M_ID = Integer.parseInt(request.getParameter("M_ID"));
    //System.out.println(M_ID);
    MovieDao dao = new MovieDao();
    MovieDto dto = dao.getMovieData(M_ID);
%>
<body style="background-color: #141414">
<div>
    <div class="container">
        <div class="container-center">
            <h1 class="h1-label">영화 정보</h1>
            <div>
                <div class="left">
                    <div class="movie-icon" style="background-image: url('<%=dto.getM_IMG()%>')"></div>
                </div>
                <div class="right">
                    <div>
                        <table class="table table-bordered tbl-style">
                            <tr>
                                <td style="width: 100px">영화명</td>
                                <td><%=dto.getM_TITLE()%></td>
                            </tr>
                            <tr>
                                <td>감독</td>
                                <td><%=dto.getM_DIRECTOR()%></td>
                            </tr>
                            <tr>
                                <td>장르</td>
                                <td><%=dto.getM_TYPE()%></td>
                            </tr>
                            <tr>
                                <td>상영시간</td>
                                <td><%=dto.getM_STIME()%></td>
                            </tr>
                            <tr>
                                <td>개봉일</td>
                                <td><%=dto.getM_MDAY()%></td>
                            </tr>
                            <tr>
                                <td>요약</td>
                                <td style="width: 500px"><%=dto.getM_SUMMARY()%></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div>
                <button type="button" class="btn btn-danger" onclick="history.back()">뒤로가기</button>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
