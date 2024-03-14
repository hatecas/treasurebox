<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="/css/register.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div id="logo">
        <img src="/image/logo1.png">
    </div>
    <div id="container">
        <form action="/join-success" method="post">
            아이디 : <input type="text" id="user_id" name="user_id">
            <button type="button" onclick="checkId()">중복확인</button> <br/>
            비밀번호 : <input type="password" name="user_pw"><br/>
            이름 : <input type="text" name="user_name"><br/>
            전화번호 : <input type="text" name="user_phone" placeholder="- 제외하고 작성해주세요."><br/>
            생년월일 : <input type="text" name="user_birthdate"><br/>
            <button type="submit">회원가입</button>
        </form>
    </div>

<script>
    function checkId(){
        let userId = document.getElementById("user_id").value;

        $.ajax({
            type: "GET",
            url: "/check-id",
            data: {userId: userId},
            success: function(check){
                if(userId.empty()){
                    document.getElementById("user_id").innerHTML = "이메일을 입력해주세요.";
                }

                if(check === true){
                    document.getElementById("user_id").innerHTML="사용가능합니다.";
                } else {
                    document.getElementById("user_id").innerHTML="중복된아이디입니다.";
                }
            }
        })
    }
</script>
</body>
</html>