<%@ page import="Data.dto.UserDto" %>
<%@ page import="Data.dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 2.
  Time: 오후 11:22
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
<%  String ID = request.getParameter("ID");
    String PW = request.getParameter("PW");
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
                <form action="registrationINFOAction.jsp" method="post">
                    <input type="hidden" name="ID" value="<%=ID%>">
                    <input type="hidden" name="PW" value="<%=PW%>">
                    <div class="headTitle">
                        <div style="width: 440px; height: 135.8px">
                            <span class="sm-span"><b>2</b>/<b>3단계</b></span>
                            <h1 class="stepTitle">거의 다 왔습니다 !</h1>
                            <a style="font-size: 18px">개인정보는 걱정마세요 !</a><br>
                            <a style="font-size: 18px">김창인 반장 시키자</a>
                        </div>
                        <div>
                            <span class="md-span"><b>이름</b></span>
                            <input type="text" autocomplete="off" id="NAME" name="NAME" class="form-control label"
                                   placeholder="이름 입력" value="">
                        </div>
                        <div style="margin-top: 15px"></div>
                        <div>
                            <span class="md-span"><b>생년월일</b></span>
                            <input type="date" autocomplete="off" id="BIRTHDAY" name="BIRTHDAY" class="form-control label"
                                   value="" required>
                        </div>
                        <div style="margin-top: 15px"></div>
                        <div>
                            <span class="md-span"><b>이메일</b></span>
                            <input type="email" autocomplete="off" id="EMAIL" name="EMAIL" class="form-control label"
                                   value="" required>
                        </div>
                        <div style="margin-top: 15px"></div>
                        <div>
                            <span class="md-span"><b>휴대폰</b></span>
                            <input type="number" autocomplete="off" id="PHONENUMBER" name="PHONENUMBER" class="form-control label"
                                   value="" required>
                        </div>
                        <div style="margin-top: 15px"></div>
                        <div>
                            <span class="md-span"><b>성별</b></span>
                            <select class="form-select" aria-label="Default select example" style="width: 440px; height: 56px" id="GENDER" name="GENDER">
                                <option selected>선택</option>
                                <option value="남자">남자</option>
                                <option value="여자">여자</option>
                            </select>
                        </div>
                        <div style="margin-top: 15px"></div>
                        <div>
                            <button type="submit" class="btn btn-danger" style="width: 440px; height: 65px"
                                    >가입 완료 하기
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

