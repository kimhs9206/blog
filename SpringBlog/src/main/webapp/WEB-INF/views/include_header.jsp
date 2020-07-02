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