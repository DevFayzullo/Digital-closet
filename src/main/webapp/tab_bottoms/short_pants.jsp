<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">지금 필요한 건 숏팬츠</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">시원함과 스타일을 동시에 잡은 여름 필수템</p>
	</div>
</div>

<!-- 숏팬츠 브랜드 탭 -->
<div class="shortPants-tab-container">
	<div class="shortPants-tab-menu">
		<button class="shortPants-tab active" data-tab="shortPants-nike">나이키</button>
		<button class="shortPants-tab" data-tab="shortPants-adidas">아디다스</button>
		<button class="shortPants-tab" data-tab="shortPants-stussy">스투시</button>
	</div>

	<div class="shortPants-panel" id="shortPants-nike">
		<jsp:include page="shortPants/shortPants_nike.jsp" />
	</div>
	<div class="shortPants-panel" id="shortPants-adidas" style="display: none;">
		<jsp:include page="shortPants/shortPants_adidas.jsp" />
	</div>
	<div class="shortPants-panel" id="shortPants-stussy" style="display: none;">
		<jsp:include page="shortPants/shortPants_stussy.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const shortPantsTabs = document.querySelectorAll(".shortPants-tab");
    const shortPantsPanels = document.querySelectorAll(".shortPants-panel");

    shortPantsTabs.forEach(tab => {
      tab.addEventListener("click", () => {
    	shortPantsTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        shortPantsPanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>