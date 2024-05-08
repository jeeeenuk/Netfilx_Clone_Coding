<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 3.
  Time: 오전 10:09
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

        th {
            text-align: center;
        }

        .sm-span {
            display: block;
            font-size: 13px;
            line-height: 19px;
            text-align: left;
        }
        .md-span {
            display: block;
            font-size: 16px;
            line-height: 19px;
            text-align: left;
            margin: 0px 0px 8px;
        }

        .stepTitle {
            text-align: left;
        }

        .headTitle {
            text-align: left;
            margin: auto;
            max-width: 440px;
        }

        .label {
            width: 440px;
            height: 56px;
        }
    </style>
</head>
<body>
<div>
    <div>
        <div>
            <div style="height: 91px; margin: 20px">
                <a href="createAccount.jsp"><img src="./image/wokflix_54.png"></a>
                <a href="login.jsp" style="color: black; text-decoration: none">로그인</a>
                <hr>
            </div>
            <div align="center" style="padding: 32px 20px">
                <form method="post">
                    <div class="headTitle">
                        <div style="width: 440px; height: 135.8px">
                            <span class="sm-span"><b>3</b>/<b>3단계</b></span>
                            <h1 class="stepTitle">회원 가입 완료 !</h1>
                            <a style="font-size: 18px">로그인 고고씽</a><br>
                            <a style="font-size: 18px">김창인 반장 시키자</a>
                        </div>
                        <div>
                            <button type="button" class="btn btn-danger" style="width: 440px; height: 65px"
                                    onclick="location.href='login.jsp'">로그인 하러 가기
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
