<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">슬라이드 트렌드</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">여름엔 시원한게 최고</p>
	</div>
</div>

<!-- 슬리퍼 브랜드 탭 -->
<div class="slides-tab-container">
	<div class="slides-tab-menu">
		<button class="slides-tab active" data-tab="slides-oofos">우포스</button>
		<button class="slides-tab" data-tab="slides-hoka">호카</button>
		<button class="slides-tab" data-tab="slides-adidas">아디다스</button>
	</div>

	<div class="slides-panel" id="slides-oofos">
		<jsp:include page="slides/slides_oofos.jsp" />
	</div>
	<div class="slides-panel" id="slides-hoka" style="display: none;">
		<jsp:include page="slides/slides_hoka.jsp" />
	</div>
	<div class="slides-panel" id="slides-adidas" style="display: none;">
		<jsp:include page="slides/slides_adidas.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const slidesTabs = document.querySelectorAll(".slides-tab");
    const slidesPanels = document.querySelectorAll(".slides-panel");

    slidesTabs.forEach(tab => {
      tab.addEventListener("click", () => {
        slidesTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        slidesPanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>