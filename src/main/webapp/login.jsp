<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ID = (String) session.getAttribute("ID");
    String PW = (String) session.getAttribute("PW");

    if (ID != null && PW != null) {
        response.sendRedirect("profile.jsp?id=" + ID);
    }
%>
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

        th {
            text-align: center;
        }

        .myImg {
            height: 100%;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .login {
            margin-block-start: 0;
            margin-block-end: 0;
            margin: 0;
            padding: 0;
            color: rgb(255, 255, 255);
            font-size: 2rem;
            font-weight: 700;
        }

        .form-control::placeholder {
            color: gray;
        }

        .default-p {
            margin-block-start: 0;
            margin-block-end: 0;
            margin: 10px;
            padding: 0;
            color: rgba(255, 255, 255, 0.7);
            font-size: 1rem;
            font-weight: 400;
            text-align: center;
        }

        .btn-createAccount {
            width: 314px;
            height: 40px;
            background-color: rgba(105, 105, 105, 0.8);
            color: gainsboro;
            border: dimgray
        }

        .btn-createAccount:hover {
            background-color: #828282;
        }
    </style>
</head>
<body>
<div>
    <div class="myImg"
         style="background-image: url('https://assets.nflxext.com/ffe/siteui/vlv3/058eee37-6c24-403a-95bd-7d85d3260ae1/adeb74e4-7c1f-4f19-abb5-031ec96e3d68/KR-ko-20240422-POP_SIGNUP_TWO_WEEKS-perspective_WEB_85051bc5-5db3-40fb-b406-c1393c5be73f_large.jpg');">
        <a href="createAccount.jsp"><img src="image/wokflix_54.png" style="margin: 20px"></a>
        <div align="center">
            <div style="color: white; background-color: rgba(0,0,0,0.8); width: 450px; height: 450px; border-radius: 2px"
                 class="back">
                <div style="padding-top: 30px;">
                    <header style="width: 314px; height: 64px">
                        <h1 class="login">로그인</h1>
                    </header>
                    <form action="loginAction.jsp" method="post">
                        <div style="width: 314px; height: 56px">
                            <div style="width: 314px; height: 56px">
                                <input type="text" name="ID" id="floatingInput" class="form-control"
                                       style="width: 314px; height: 56px; background-color: rgba(0,0,0,0.8); color: white"
                                       placeholder="아이디">
                            </div>
                        </div>
                        <div style="padding-top: 25px"></div>
                        <div style="width: 314px; height: 56px">
                            <div style="width: 314px; height: 56px">
                                <input type="password" name="PW" id="floatingPassword" class="form-control"
                                       style="width: 314px; height: 56px; background-color: rgba(0,0,0,0.8); color: white"
                                       placeholder="비밀번호">
                            </div>
                        </div>
                        <div style="padding-top: 25px"></div>
                        <div>
                            <div>
                                <button type="submit" class="btn btn-danger" style="width: 314px; height: 40px">로그인
                                </button>
                                <p class="default-p">또는</p>
                                <button type="button" class="btn btn-danger btn-createAccount" style=""
                                        onclick="location.href='registration.jsp'">회원가입
                                </button>
                            </div>
                        </div>
                    </form>
                    <footer>

                    </footer>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
