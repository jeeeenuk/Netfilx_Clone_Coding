<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오전 2:20
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

        .myImg {
            /*background-image: url("https://assets.nflxext.com/ffe/siteui/vlv3/058eee37-6c24-403a-95bd-7d85d3260ae1/adeb74e4-7c1f-4f19-abb5-031ec96e3d68/KR-ko-20240422-POP_SIGNUP_TWO_WEEKS-perspective_WEB_85051bc5-5db3-40fb-b406-c1393c5be73f_large.jpg");*/
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            height: 100%;
            z-index: 1;
        }
    </style>
</head>
<%
    session.invalidate();
%>
<body>
<div class="myImg"
     style="background-image: url('https://assets.nflxext.com/ffe/siteui/vlv3/058eee37-6c24-403a-95bd-7d85d3260ae1/adeb74e4-7c1f-4f19-abb5-031ec96e3d68/KR-ko-20240422-POP_SIGNUP_TWO_WEEKS-perspective_WEB_85051bc5-5db3-40fb-b406-c1393c5be73f_large.jpg');">
    <div>
        <a href="createAccount.jsp"><img src="image/wokflix_54.png" style="margin: 20px"></a>
        <a href="login.jsp" class="btn btn-danger" style="float: right; margin: 20px">로그인</a>
        <div align="center" style="color: white; padding: 100px;">
            <div>
                <h1><b>영화, 시리즈 등을 무제한으로</b></h1>
                <h4>어디서나 자유롭게 시청하세요. 김창인이 곧 반장이다.</h4>
                <h4>시청할 준비가 되셨나요 ? 멤버십을 등록하거나 재시작 하려면 아이디를 입력하세요.</h4>
            </div>
            <div>
                <label><input type="email" class="form-control" id="floatingInput" name="ID" placeholder="아이디"
                              style="width: 350px; height: 40px"></label>
                <button type="button" class="btn btn-danger" style="height: 41px" id="startBtn">시작하기 ></button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $("#startBtn").on("click", function () {
        let ID = $("#floatingInput").val()
        location.href = 'registrationAction.jsp?ID=' + ID;
    })
</script>
</body>
</html>
