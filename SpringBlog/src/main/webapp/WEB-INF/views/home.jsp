<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ page
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page
session="false" %>
<html>
  <head>
    <title>Home</title>
    <link rel="stylesheet" href="resources/reset.css" />
    <style>
      body {
        display: grid;
        background: lightgray;
        grid-template-rows: 3fr 2fr 2fr 1fr;
        grid-template-columns: 1fr 1fr 1fr;
        grid-gap: 10px;
      }
      .header {
        background: cyan;
        grid-column: 1/4;
      }
      .nav {
        background: red;
        grid-row: 2/4;
      }
      .article {
        background: blue;
        grid-column: 2/4;
        grid-row: 2/4;
      }
      .footer {
        background: rosybrown;
        grid-column: 1/4;
      }
    </style>
  </head>

  <body>
    <!-- 헤더 배경이미지, 로그인 (로그아웃), 방명록, 전체글,  -->
    <header class="header">
      헤더영역
    </header>
    <!-- 네비메뉴 카테고리,블로그주인설명,today,total,yesterday 접속자 수 -->
    <nav class="nav">
      네비영역
    </nav>
    <article class="article">
      메인컨텐츠 영역
    </article>
    <footer class="footer">
      푸터영역
    </footer>
  </body>
</html>
