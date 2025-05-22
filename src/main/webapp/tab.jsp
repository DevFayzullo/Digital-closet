<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>탭</title>
</head>
<body>
	<div class="tab_menu">
		<ul>
			<li><a href="#" data-tab="tab1">인기 코디</a></li>
			<li class="active"><a href="#" data-tab="tab2">추천</a></li>
			<!-- 추천 탭에 active -->
			<li><a href="#" data-tab="tab3">상의</a></li>
			<li><a href="#" data-tab="tab4">하의</a></li>
			<li><a href="#" data-tab="tab5">신발</a></li>
		</ul>
	</div>

	<div class="tab_content">
		<div id="tab1" class="tab_panel">
			<!-- 인기 코디는 active 제거 -->
		</div>
		<div id="tab2" class="tab_panel active">
			<!-- 추천만 active -->
			<jsp:include page="banner.jsp" />
			<jsp:include page="item_list1.jsp" />
		</div>
		<div id="tab3" class="tab_panel">
			<jsp:include page="t-shirt.jsp" />
			<jsp:include page="hoodie.jsp" />
		</div>
		<div id="tab4" class="tab_panel">
			<jsp:include page="short_pants.jsp" />
			<jsp:include page="sweatpants.jsp" />
		</div>
		<div id="tab5" class="tab_panel">
			<jsp:include page="running_shoes.jsp" />
			<jsp:include page="slides.jsp" />
			<jsp:include page="sneakers.jsp" />
		</div>
	</div>
</body>
</html>