<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TreasureBox</title>
<link rel="stylesheet" href="index.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div id="container">
        <div id="divTop">
            <div id="logo">
                <img src="logo1.png">
            </div>
            <div id="search-container">
                <form>
                    <input type="text" placeholder="검색할 단어를 입력하세요.">
                    <button type="submit">
                        <img src="searchIcon.png">
                    </button>
                </form>
            </div>
            <div id="user-controls">
                <button id="login">로그인</button>
                <button id="register" onclick="location='/register'">회원가입</button>
            </div>
        </div>
        <div class="carousel">
          <div class="carousel-images">
            <img src="banner1.png" alt="Banner 1">
            <img src="banner2.jpg" alt="Banner 2">
            <img src="banner3.png" alt="Banner 3">
          </div>
          <button class="carousel-button prev">Previous</button>
          <button class="carousel-button next">Next</button>
        </div>
        <div id="divBottom">아이템들</div>
    </div>
    <script>
        $(document).ready(function(){
          var currentIndex = 0;
          var images = $('.carousel-images img');
          var imageCount = images.length;

          $('.next').click(function(){
            images.eq(currentIndex).hide();
            currentIndex = (currentIndex + 1) % imageCount;
            images.eq(currentIndex).show();
          });

          $('.prev').click(function(){
            images.eq(currentIndex).hide();
            currentIndex = (currentIndex - 1 + imageCount) % imageCount;
            images.eq(currentIndex).show();
          });
        });
    </script>
</body>
</html>
