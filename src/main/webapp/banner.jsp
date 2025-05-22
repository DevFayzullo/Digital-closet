<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>배너</title>
<link rel="stylesheet" href="css/style.css?after" />
</head>
<body>
	<div id="main_banner_wrap" class="main_banner_wrap">
		<div class="main_banner">
			<img src="img/banner/banner1.webp" alt="배너1" data-bgcolor="#aa9a8b" />
			<img src="img/banner/banner2.webp" alt="배너2" data-bgcolor="#55628b" />
			<img src="img/banner/banner3.webp" alt="배너3" data-bgcolor="#111518" />
			<img src="img/banner/banner4.webp" alt="배너4" data-bgcolor="#929292" />
			<img src="img/banner/banner5.webp" alt="배너5" data-bgcolor="#8b8b7d" />
			<img src="img/banner/banner6.webp" alt="배너6" data-bgcolor="#91d9b3" />
		</div>

		<!-- 이전/다음 버튼 -->
		<button class="banner-btn prev"></button>
		<button class="banner-btn next"></button>

		<!-- 슬라이드 인디케이터 버튼 -->
		<div class="slide-indicators"></div>
	</div>

	<script>
    	const bannerWrap = document.getElementById('main_banner_wrap');
    	const images = document.querySelectorAll('.main_banner img');
    	const prevBtn = document.querySelector('.banner-btn.prev');
    	const nextBtn = document.querySelector('.banner-btn.next');
    	const indicatorsContainer = document.querySelector('.slide-indicators');

    	let currentIndex = 0;
    	let autoSlideInterval;

    	// 슬라이드 표시 함수
    	function showSlide(index) {
      		images.forEach((img, i) => {
        		img.style.display = i === index ? 'block' : 'none';
      		});

      		// 배경색 변경
      		const bgColor = images[index].getAttribute('data-bgcolor');
      		bannerWrap.style.backgroundColor = bgColor;

      		// 인디케이터 상태 업데이트
      		indicatorButtons.forEach((btn, i) => {
        		btn.classList.toggle('active', i === index);
      		});
    	}

    	// 다음 슬라이드로 이동
    	function nextSlide() {
      		currentIndex = (currentIndex + 1) % images.length;
      		showSlide(currentIndex);
    	}

    	// 이전 슬라이드로 이동
    	function prevSlide() {
      		currentIndex = (currentIndex - 1 + images.length) % images.length;
      		showSlide(currentIndex);
    	}

    	// 자동 슬라이드 타이머 초기화
    	function resetInterval() {
      		clearInterval(autoSlideInterval);
      		autoSlideInterval = setInterval(nextSlide, 5000);
    	}

    	// 인디케이터 버튼 생성 및 클릭 이벤트 연결
    	images.forEach((_, idx) => {
      		const btn = document.createElement('button');
      		btn.addEventListener('click', () => {
        		currentIndex = idx;
        		showSlide(currentIndex);
        		resetInterval();
      		});
      		indicatorsContainer.appendChild(btn);
    	});

    	const indicatorButtons = indicatorsContainer.querySelectorAll('button');

    	// 이전/다음 버튼 이벤트 연결
    	prevBtn.addEventListener('click', () => {
      		prevSlide();
      		resetInterval();
    	});

    	nextBtn.addEventListener('click', () => {
      		nextSlide();
      		resetInterval();
    	});

    	// 초기 슬라이드 설정 및 자동 전환 시작
    	showSlide(currentIndex);
    	autoSlideInterval = setInterval(nextSlide, 5000);
  	</script>
</body>
</html>