<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="feed-card">
			<div class="feed-card-image">
				<img src="img/style/style1.webp" alt="상품 이미지">
			</div>
			<div class="feed-card-content">
				<div class="feed-card-title">
					<div class="user-info">
						<img class="profile-circle" src="img/profile/profile1.webp" alt="프로필">
						<span class="username">m_o9u</span>
					</div>
					<div class="like-info">
						<img class="icon" src="img/heart_off.svg" alt="좋아요"> <span
							class="like-count">11</span>
					</div>
				</div>
				<div class="feed-card-subtitle">아딜레늄 시즌 2</div>
			</div>
		</div>

		<!-- 카드 복사 -->
		<div class="feed-card">
			<div class="feed-card-image">
				<img src="img/style/style2.webp" alt="이미지">
			</div>
			<div class="feed-card-content">
				<div class="feed-card-title">
					<div class="user-info">
						<img class="profile-circle" src="img/profile/profile2.webp" alt="프로필">
						<span class="username">anappleofmyeye</span>
					</div>
					<div class="like-info">
						<img class="icon" src="img/heart_off.svg" alt="좋아요"> <span
							class="like-count">7</span>
					</div>
				</div>
				<div class="feed-card-subtitle">모자 미친미친 귀여움이다.!!!🩶🪽🪽</div>
			</div>
		</div>

		<div class="feed-card">
			<div class="feed-card-image">
				<img src="img/style/style3.webp" alt="이미지">
			</div>
			<div class="feed-card-content">
				<div class="feed-card-title">
					<div class="user-info">
						<img class="profile-circle" src="img/profile/profile3.webp" alt="프로필">
						<span class="username">jdu_kk</span>
					</div>
					<div class="like-info">
						<img class="icon" src="img/heart_off.svg" alt="좋아요"> <span
							class="like-count">150</span>
					</div>
				</div>
				<div class="feed-card-subtitle">🍙</div>
			</div>
		</div>

		<div class="feed-card">
			<div class="feed-card-image">
				<img src="img/style/style4.jpeg" alt="이미지">
			</div>
			<div class="feed-card-content">
				<div class="feed-card-title">
					<div class="user-info">
						<img class="profile-circle" src="img/profile/profile4.webp" alt="프로필">
						<span class="username">Ihjun_</span>
					</div>
					<div class="like-info">
						<img class="icon" src="img/heart_off.svg" alt="좋아요"> <span
							class="like-count">12</span>
					</div>
				</div>
				<div class="feed-card-subtitle">Hi~</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>