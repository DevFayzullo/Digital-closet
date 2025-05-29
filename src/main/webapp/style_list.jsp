<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타일</title>
<link rel="stylesheet" type="text/css" href="css/style.css?after">
</head>
<body>
<jsp:include page="header.jsp" />

<div class="page_title">STYLE</div>
<div class="feed-card-list">
<%
    ResultSet rs = null;
    PreparedStatement pstmt = null;

    try {
    	String sql = "SELECT CP.POST_ID, CP.POST_TITLE, CP.POST_CAPTION, CP.PICTURE_URL, CP.REGISTER_DATE, CP.USER_ID, CP.ADMIN_ID, CP.POST_SUBTITLE, CP.TAG_ID, COUNT(UL.USER_ID) AS LIKE_COUNT FROM CLOTHES_POST CP " +
                "LEFT JOIN USER_LIKES UL ON CP.POST_ID = UL.POST_ID " +
                "GROUP BY CP.POST_ID, CP.POST_TITLE, CP.POST_CAPTION, CP.PICTURE_URL, CP.REGISTER_DATE,CP.USER_ID, CP.ADMIN_ID, CP.POST_SUBTITLE, CP.TAG_ID";


        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            String pictureUrl = rs.getString("PICTURE_URL");
            String USER_ID = rs.getString("USER_ID");
            String POST_CAPTION = rs.getString("POST_CAPTION");
            String POST_SUBTITLE = rs.getString("POST_SUBTITLE");
            int likeCount = rs.getInt("LIKE_COUNT");
%>
    <div class="feed-card">
        <div class="feed-card-image">
            <img src="<%=pictureUrl%>" alt="상품 이미지">
        </div>
        <div class="feed-card-content">
            <div class="feed-card-title">
                <div class="user-info">
                    <img class="profile-circle" src="<%=POST_SUBTITLE%>" alt="프로필">
                    <span class="username"><%=USER_ID%></span>
                </div>
                <div class="like-info">
                    <img class="icon" src="img/heart_off.svg" alt="좋아요">
                    <span class="like-count"><%=likeCount%></span> 
                </div>
            </div>
            <div class="feed-card-subtitle"><%=POST_CAPTION%></div>
        </div>
    </div>
<%
        }
    } catch (SQLException ex) {
        out.println("Product 테이블 호출이 실패했습니다.");
        ex.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
