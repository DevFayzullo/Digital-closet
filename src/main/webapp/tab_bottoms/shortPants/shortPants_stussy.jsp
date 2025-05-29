<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스투시 숏팬츠</title>
<link rel="stylesheet" type="text/css" href="css/item.css?after">
</head>
<body>
    <div class="products">
        <div class="product_list_wrap">
            <div class="product_list">
                <!-- 상품 카드 -->
                <%
                ResultSet rs = null;
                PreparedStatement pstmt = null;

                try {
                    String sql = "SELECT POST_ID, POST_TITLE, POST_CAPTION, PICTURE_URL FROM BOTTOM_CLOTHES WHERE POST_TITLE = 'Stussy' AND ADMIN_ID = 'A002'";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();

                    while (rs.next()) {
                        String pictureUrl = rs.getString("PICTURE_URL");
                        String postTitle = rs.getString("POST_TITLE");
                        String postCaption = rs.getString("POST_CAPTION");
                %>
                <div class="product_item">
                    <a href="#" class="item_inner">
                        <div class="thumb_box">
                            <img src="<%=pictureUrl%>" alt="<%=postCaption%>">
                            <div class="bookmark_icon">
                                <img src="img/bookmark2.svg" alt="북마크 아이콘">
                            </div>
                        </div>
                        <div class="info_box">
                            <p class="brand-name"><%=postTitle %></p>
                            <p class="product-name"><%=postCaption %></p>
                            <div class="tag_container">
                                <div class="tag">숏팬츠</div>
                                <div class="tag">Stussy</div>
                            </div>
                        </div>
                    </a>
                </div>
                <%
                    }

                } catch (SQLException ex) {
                    out.println("상품 정보를 불러오는 데 실패했습니다: " + ex.getMessage());
                    ex.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) {}
                    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
                    if (conn != null) try { conn.close(); } catch (SQLException e) {}
                }
                %>
                <!-- 상품 카드 끝 -->
            </div>
        </div>
    </div>
</body>
</html>
