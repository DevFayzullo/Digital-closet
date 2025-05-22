<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String uri = request.getRequestURI();
    String homeActive = (uri.contains("index.jsp") || uri.endsWith("/")) ? "active" : "";
    String styleActive = uri.contains("style_list.jsp") ? "active" : "";
    String profileActive = uri.contains("profile.jsp") ? "active" : "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단</title>
</head>
<body>
    <div class="header_container">
        <div class="main_inner">
            <div class="logo">
                <img src="img/logo.png" alt="LOGO" width="120" height="24">
            </div>
            <div class="menu">
                <div class="search_box">
                    <input type="text" placeholder="브랜드, 상품, 프로필, 태그 등">
                </div>
                <a href="index.jsp" class="<%=homeActive%>">HOME</a>
                <a href="style_list.jsp" class="<%=styleActive%>">STYLE</a>
                <a href="profile.jsp" class="<%=profileActive%>">PROFILE</a>
            </div>
        </div>
    </div>
</body>
</html>