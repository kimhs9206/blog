<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>Home</title>
   
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/rayout.css" />
  </head>
  <body>
<div class="wrap">
  
    <!-- 헤더 배경이미지, 로그인 (로그아웃), 방명록, 전체글,  -->
    <header class="header">
        <a href="#"class="header-logo"><i class="fab fa-accusoft"></i>MyBlog</a>
        <!--로그인 -로그아웃 -->
          <a class="header-serch" href="#"><i class="fas fa-search"></i>검색</a>          
      
    </header>
    <!-- 네비메뉴 카테고리,블로그주인설명,today,total,yesterday 접속자 수 -->
    <div class="content">
    <nav class="content-category">
      
      <ul>
        <li>카테고리1</li>
        <li>카테고리2</li>
        <li>카테고리3</li>
        <li>카테고리4</li>
      </ul>
      네비영역
      <ul class="content-adminMenu">
        <li><a href="#"><i class="fas fa-plus"></i></a></li>
        <li><a href="#"><i class="fas fa-address-book"></i></a></li>
        <li><a href="#"><i class="far fa-list-alt"></i></a></li>
        <li><a href="#"><i class="fas fa-cog"></i></a></li>
        <li><a href="#"><i class="fas fa-user-alt"></i></a></li>
      </ul>
      
    </nav>
    
    <!-- 작은화면 네비 사용 버튼 -->
    <a href="#"class="content-category-toggleBtn"><i class="fas fa-arrow-right"></i>category</a>
    <!-- 메인 컨텐츠 영역 -->
    <article class="content-mainContent">
      메인컨텐츠 영역
    </article>
  </div>
    <footer class="footer">
      푸터영역
    </footer>
  </div>
  </body>
  <script
  src="https://kit.fontawesome.com/2f97bf7127.js"
  crossorigin="anonymous"></script>
  <script type="text/javascript"src="${pageContext.request.contextPath }/resources/blog.js"></script>
</html>
