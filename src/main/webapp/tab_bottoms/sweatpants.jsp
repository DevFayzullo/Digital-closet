<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">지금 주목할 트레이닝 팬츠</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">움직임도 스타일도 자유롭게</p>
	</div>
</div>

<!-- 트레이닝팬츠 브랜드 탭 -->
<div class="sweatPants-tab-container">
	<div class="sweatPants-tab-menu">
		<button class="sweatPants-tab active" data-tab="sweatPants-supreme">슈프림</button>
		<button class="sweatPants-tab" data-tab="sweatPants-adidas">아디다스</button>
		<button class="sweatPants-tab" data-tab="sweatPants-nike">나이키</button>
	</div>

	<div class="sweatPants-panel" id="sweatPants-supreme">
		<jsp:include page="sweatPants/sweatPants_supreme.jsp" />
	</div>
	<div class="sweatPants-panel" id="sweatPants-adidas" style="display: none;">
		<jsp:include page="sweatPants/sweatPants_adidas.jsp" />
	</div>
	<div class="sweatPants-panel" id="sweatPants-nike" style="display: none;">
		<jsp:include page="sweatPants/sweatPants_nike.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const sweatPantsTabs = document.querySelectorAll(".sweatPants-tab");
    const sweatPantsPanels = document.querySelectorAll(".sweatPants-panel");

    sweatPantsTabs.forEach(tab => {
      tab.addEventListener("click", () => {
    	sweatPantsTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        sweatPantsPanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>