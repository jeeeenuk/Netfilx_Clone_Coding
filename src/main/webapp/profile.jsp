<%@ page import="Data.dao.ProfileDao" %>
<%@ page import="Data.dto.ProfileDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오후 6:32
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

        .list-profiles {
            max-width: 80%;
        }

        .choose-profile {
            opacity: 1;
            transition: opacity .4s ease-out;
            margin: 2em 0;
        }

        .choose-profile-label {
            color: #fff;
            font-size: 3.5vw;
            font-weight: unset;
            width: 100%;
        }

        li.profile {
            max-width: 200px;
            min-width: 84px;
            display: inline-block;
            position: relative;
            margin: 0 2vw 0 0;
        }

        .profile-link {
            text-decoration: none;
        }

        .profile-icon {
            background-color: #333;
            background-repeat: no-repeat;
            background-size: cover;
            border: none;
            border-radius: 4px;
            box-sizing: border-box;
            height: 10vw;
            max-height: 200px;
            max-width: 200px;
            min-height: 84px;
            min-width: 84px;
            position: relative;
            text-decoration: none;
            width: 10vw;
        }
        .profile-icon:hover{
            border: 1px solid whitesmoke;
        }

        .profile-name {
            color: grey;
            display: block;
            font-size: 1.3vw;
            line-height: 1.2em;
            margin: .6em 0;
            min-height: 1.8em;
            overflow: hidden;
            text-align: center;
            text-overflow: ellipsis;
        }

        #profile-addBtn {
            background-color: transparent;
            border: 1px solid grey;
            color: grey;
            cursor: pointer;
            display: block;
            font-size: 1.2vw;
            letter-spacing: 2px;
            margin: 2em 0 1em;
            padding: .5em 1.5em;
        }

        #profile-addBtn:hover {
            border-color: whitesmoke;
            color: whitesmoke;
        }
    </style>
</head>
<%
    ProfileDao dao = new ProfileDao();
    List<ProfileDto> list = dao.getIDProfile(request.getParameter("ID"));
%>
<body style="background-color: #141414">
<div>
    <div>
        <div style="float: right; padding: 30px;"><a href="logoutAction.jsp" style="text-decoration: none; color: whitesmoke;">로그아웃</a></div>
        <div class="profile-container">
            <div class="profile-center">
                <div class="list-profiles">
                    <h1 class="choose-profile-label">욱플릭스를 시청할 프로필을 선택하세요</h1>
                    <ul class="choose-profile">
                        <%
                            for (ProfileDto dto : list) {%>
                        <li class="profile">
                            <div>
                                <a class="profile-link" tabindex="0" href="profileDetail.jsp?profile=<%=dto.getP_ID()%>">
                                    <div>
                                        <div class="profile-icon" style="background-image: url('<%=dto.getP_IMG()%>')"></div>
                                    </div>
                                    <span class="profile-name" ><%=dto.getP_NAME()%></span>
                                </a>
                            </div>
                        </li>
                        <%
                            }
                            String displayBtn = list.size()<4?"":"none";
                        %>
                    </ul>
                </div>
                <span><button type="button" class="btn btn-danger" id="profile-addBtn"
                              onclick="location.href='addProfile.jsp'" style="display: <%=displayBtn%>">프로필 추가</button></span>
            </div>
        </div>
    </div>
</div>
</body>
</html>
