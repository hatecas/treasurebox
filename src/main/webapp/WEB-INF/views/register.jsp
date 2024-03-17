<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="css/register.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div id="container">
        <div id="logo">
            <img src="image/logo1.png">
        </div>
        <form action="/join-success" method="post" class="register_form">
            <h2>회원가입</h2>
            <div>
                <input type="text" id="user_id" name="user_id" placeholder="아이디">
            </div>
            <div>
                <input type="password" id="user_pw" name="user_pw" placeholder="비밀번호">
            </div>
            <div>
                <input type="password" id="user_pwre" name="user_pwre" placeholder="비밀번호확인">
            </div>
            <div>
                <input type="text" id="user_name" name="user_name" placeholder="이름">
            </div>
            <div>
                <input type="text" id="user_phone" name="user_phone" placeholder="전화번호( - 제외하고 입력해주세요)">
            </div>
            <div>
                <input type="text" id="user_birthdate" name="user_birthdate" placeholder="생년월일">
            </div>
            <div>
                <input type="text" id="user_nickname" name="user_nickname" placeholder="닉네임">
            </div>
            <button type="submit" id="register_btn">회원가입</button>
        </form>
    </div>

<%--<script>--%>
<%--    function checkId(){--%>
<%--        let userId = document.getElementById("user_id").value;--%>

<%--        if(userId === ""){--%>
<%--            alert("이메일을 입력해주세요.");--%>
<%--        } else {--%>
<%--            $.ajax({--%>
<%--                type: "GET",--%>
<%--                url: "/check-id",--%>
<%--                data: {userId: userId},--%>
<%--                success: function(check){--%>
<%--                    if(check === "true"){--%>
<%--                        alert("이미 사용중인 아이디입니다.");--%>
<%--                    } else {--%>
<%--                        alert("사용 가능한 아이디 입니다.");--%>
<%--                    }--%>
<%--                }--%>
<%--            })--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>