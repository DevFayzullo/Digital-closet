<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조던 운동화</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/item.css?after">
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
                    String sql = "select POST_ID, POST_TITLE, POST_CAPTION, PICTURE_URL, REGISTER_DATE, USER_ID, ADMIN_ID, POST_SUBTITLE, TAG_ID from SHOES WHERE POST_TITLE = 'Jordan' AND ADMIN_ID = 'A003'";

                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();

                    int iResult = 0;

                    while (rs.next()) {
                        String pictureUrl = rs.getString("PICTURE_URL");
                        String POST_TITLE = rs.getString("POST_TITLE");
                        String POST_CAPTION = rs.getString("POST_CAPTION");
            %>
				<div class="product_item">
					<a href="#" class="item_inner">
						<div class="thumb_box">
							<img src="<%=pictureUrl%>" alt="제품명">
							<div class="bookmark_icon">
  								<img src="img/bookmark2.svg" alt="북마크 아이콘">
      						</div>
						</div>
						<div class="info_box">
							<p class="brand-name"><%=POST_TITLE %></p>
							<p class="product-name"><%=POST_CAPTION %></p>
							<div class="tag_container">
								<div class="tag">운동화</div>
								<div class="tag">Jordan</div>
							</div>
						</div>
					</a>
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
				<!-- 상품 카드 끝 -->
			</div>
		</div>
	</div>
</body>
</html>