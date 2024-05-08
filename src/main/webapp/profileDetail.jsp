<%@ page import="Data.dto.ProfileDto" %>
<%@ page import="java.util.List" %>
<%@ page import="Data.dao.ProfileDao" %>
<%@ page import="Data.dto.MovieDto" %>
<%@ page import="Data.dao.MovieDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 4.
  Time: 오후 4:02
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
            top: 70px;
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

        .choose-movie {
            opacity: 1;
            transition: opacity .4s ease-out;
            margin: 1em 0;
        }

        .choose-movie-scroll {
            overflow-x: auto;
            white-space: nowrap;
        }

        .choose-movie-scroll::-webkit-scrollbar {
            height: 5px;
            width: 10px;
        }

        .choose-movie-scroll::-webkit-scrollbar-thumb {
            height: 30%;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 25px;
        }

        li.movie {
            max-width: 200px;
            min-width: 84px;
            display: inline-block;
            position: relative;
            margin: 0 2vw 0 0;
        }

        .movie-link {
            text-decoration: none;
        }

        .movie-icon {
            background-color: #333;
            background-repeat: no-repeat;
            background-size: cover;
            border: 1px solid #404040;
            border-radius: 4px;
            box-sizing: border-box;
            height: 200vw;
            max-height: 260px;
            max-width: 200px;
            min-height: 84px;
            min-width: 180px;
            position: relative;
            text-decoration: none;
            width: 1vw;
        }

        .movie-btn {
            margin: 10px;
            background-color: #828282;
            border: none;
        }

        .movie-btn:hover {
            background-color: #666666;
        }
        a.profileDelete {
            color: whitesmoke;
            text-decoration: none;
        }
        a.profileDelete:hover {
            cursor: pointer;
            text-decoration: underline;
        }
    </style>
</head>
<%
    ProfileDao dao = new ProfileDao();
    ProfileDto dto = dao.getP_IDProfile(Integer.parseInt(request.getParameter("profile")));

    int P_ID = Integer.parseInt(request.getParameter("profile"));
    //System.out.println(P_ID);
    String ID = (String) session.getAttribute("ID");
    MovieDao movieDao = new MovieDao();
    List<MovieDto> WatchedMovies = movieDao.getP_MovieData(ID, P_ID);
%>
<body style="background: #141414;">
<div>
    <div style="float: right; padding: 30px;"><a class="profileDelete" id="deleteAction">프로필 삭제</a></div>
    <div class="profile-container">
        <div class="profile-center">
            <div class="list-profiles">
                <div class="profile-h1-label">
                    <h1><b><%=dto.getP_NAME()%>
                    </b>님의 시청기록</h1>
                    <ul class="choose-movie choose-movie-scroll">
                        <%
                            if (WatchedMovies.size() == 0) {%>
                        <h5 style="color: #666666; font-style: italic;">시청한 영화가 없습니다. 채우러 가볼까요 ? </h5>
                        <%
                            }
                            for (MovieDto M_dto : WatchedMovies) {
                        %>
                        <li class="movie">
                            <div>
                                <a class="movie-link">
                                    <div>
                                        <div class="movie-icon"
                                             style="background-image: url('<%=M_dto.getM_IMG()%>')"></div>
                                        <button type="button" class="btn btn-danger movie-btn"
                                                name="<%=M_dto.getM_ID()%>"
                                                onclick="location.href='watchMovieDetail.jsp?M_ID='+<%=M_dto.getM_ID()%>">
                                            자세히보기
                                        </button>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                    <script>

                    </script>
                    <div>
                        <button type="button" class="btn btn-danger addMovie-btn"
                                onclick="location.href='watchMovie.jsp?P_ID=<%=dto.getP_ID()%>'">영화 보러 가기
                        </button>
                        <button type="button" class="btn btn-danger addMovie-btn"
                                onclick="location.href='profile.jsp?ID=<%=ID%>'">프로필 선택
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $("#deleteAction").click(function () {
        if (confirm("프로필을 삭제하시겠습니까?")) {
            location.href = "deleteProfileAction.jsp?P_ID=<%=P_ID%>";
        }
    })
</script>
</body>
</html>
