<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">가장 핫한 티셔츠</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">지금 눈여겨봐야 할 브랜드의 티셔츠</p>
	</div>
</div>

<!-- 티셔츠 브랜드 탭 -->
<div class="t-shirt-tab-container">
	<div class="t-shirt-tab-menu">
		<button class="t-shirt-tab active" data-tab="t-shirt-stussy">스투시</button>
		<button class="t-shirt-tab" data-tab="t-shirt-supreme">슈프림</button>
		<button class="t-shirt-tab" data-tab="t-shirt-bape">베이프</button>
	</div>

	<div class="t-shirt-panel" id="t-shirt-stussy">
		<jsp:include page="tShirts/t-shirt_stussy.jsp" />
	</div>
	<div class="t-shirt-panel" id="t-shirt-supreme" style="display: none;">
		<jsp:include page="tShirts/t-shirt_supreme.jsp" />
	</div>
	<div class="t-shirt-panel" id="t-shirt-bape" style="display: none;">
		<jsp:include page="tShirts/t-shirt_bape.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const tShirtTabs = document.querySelectorAll(".t-shirt-tab");
    const tShirtPanels = document.querySelectorAll(".t-shirt-panel");

    tShirtTabs.forEach(tab => {
      tab.addEventListener("click", () => {
    	tShirtTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        tShirtPanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>