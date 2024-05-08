<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오후 9:02
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
<%
    String ID = request.getParameter("ID");
%>
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
                <form action="registrationINFO.jsp" method="post">
                    <div class="headTitle">
                        <div style="width: 440px; height: 135.8px">
                            <span class="sm-span"><b>1</b>/<b>3단계</b></span>
                            <h1 class="stepTitle">비밀번호를 설정하세요</h1>
                            <a style="font-size: 18px">30초만 투자하세요 !</a><br>
                            <a style="font-size: 18px">비트701 화이텡</a>
                        </div>
                            <div>
                                <input type="text" autocomplete="off" id="ID" name="ID" class="form-control label"
                                       placeholder="아이디" value="<%=ID%>">
                            </div>
                            <div style="margin-top: 15px"></div>
                            <div>
                                <input type="password" autocomplete="off" id="PW" name="PW" class="form-control label"
                                       placeholder="비밀번호를 추가하세요" value="">
                            </div>
                            <div style="margin-top: 15px"></div>
                            <div>
                                <button type="submit" class="btn btn-danger" style="width: 440px; height: 65px"
                                    >다음 단계로 계속
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
