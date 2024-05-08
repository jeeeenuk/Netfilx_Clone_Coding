<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 3.
  Time: 오후 4:27
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
            color: white;
        }

        .profile-gate-container {
            background: #141414;
            bottom: 0;
            left: 0;
            position: fixed;
            right: 0;
            text-align: center;
            top: 0;
            z-index: 0;
        }

        .centered-div {
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

        .profile-actions-container {
            position: relative;
            text-align: left;
        }

        .profile-actions-container h2 {
            color: #666;
            font-size: 1.3vw;
        }

        h2 {
            display: block;
            font-size: 1.5em;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
            unicode-bidi: isolate;
        }

        .profile-metadata {
            display: flex;
            padding: 2em 0;
        }

        .profile-entry {
            border-bottom: 1px solid #333;
            border-top: 1px solid #333;
        }

        .profile-img img {
            margin-right: 1.5vw;
            max-width: 180px;
            min-width: 80px;
            white-space: nowrap;
            width: 8vw;
        }

        .profile-add-parent {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .profile-entry-inputs {
            align-items: center;
            display: flex;
            flex-direction: row;
            position: relative;
            vertical-align: middle;
        }

        .profile-entry input[type=text] {
            background: #666;
            border: 1px solid transparent;
            box-sizing: border-box;
            color: #fff;
            font-size: 1.3vw;
            height: 2em;
            margin: 0 .8em 0 0;
            padding: .2em .6em;
            text-indent: .1vw;
            width: 18em;
        }

        .profile-btn-next {
            margin-top: 20px;
            background-color: lightgrey;
            border-color: lightgrey;
            color: black;
        }

        .profile-btn-cancel {
            margin-top: 20px;
            margin-left: 30px;
            background-color: rgba(20, 20, 20, 0);
            border-color: #333333;
            color: whitesmoke;
        }
    </style>
</head>
<%
    int randNum = (int)(Math.random()*30)+1;
%>
<script>
    $(document).ready(function (){
        let imgSrc = `./image/unsamples/image-<%=randNum%>.jpg`
        $("#P_IMG").attr("src",imgSrc);
    })
</script>
<body>
<div>
    <div class="profile-gate-container">
        <div class="centered-div">
            <div class="profile-actions-container" style="opacity: 1; transform: scale(1);">
                <h1>프로필 추가</h1>
                <h2>욱플릭스를 시청할 다른 사용자를 등록하시려면 프로필을 추가하세요.</h2>
                <form action="addProfileAction.jsp" method="post">
                    <input type="hidden" value="<%=session.getAttribute("ID").toString()%>" name="ID">
                    <input type="hidden" value="./image/unsamples/image-<%=randNum%>.jpg" name="P_IMG">
                    <div class="profile-metadata profile-entry">
                        <div class="profile-img">
                            <img id="P_IMG" src="">
                        </div>
                        <div class="profile-add-parent">
                            <div class="profile-entry-inputs">
                                <input type="text" id="P_NAME" name="P_NAME" placeholder="프로필명">
                            </div>
                        </div>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-danger profile-btn-next">다음</button>
                        <button type="button" class="btn btn-light profile-btn-cancel" onclick="history.back()">취소</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
