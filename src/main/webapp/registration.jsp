<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오전 11:28
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
    </style>
</head>
<body>
<div>
    <div align="top" style="margin: 20px;">
        <img src="image/wokflix_54.png">
        <a href="login.jsp" style="color: black; text-decoration: none">로그인</a>
        <hr>
    </div>
    <div align="center" style="padding: 32px 20px">
        <h6>1/3 단계</h6>
        <h1>계정 설정 마무리하기</h1>
        <h6>맞춤형 콘텐츠 서비스, 욱플릭스 ! <br>
            비밀번호를 설정하고 넷플릭스를 <br>
            시청하세요.
        </h6>
        <button type="button" class="btn btn-danger" style="margin-top: 10px; width: 350px; height: 60px" onclick="location.href='registrationPW.jsp'">다 음</button>
    </div>
</div>
</body>
</html>
