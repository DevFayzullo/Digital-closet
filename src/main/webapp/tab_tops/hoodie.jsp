<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">스트릿 감성, 후드티로 완성</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">지금 주목받는 브랜드의 후드티를 만나보세요</p>
	</div>
</div>

<!-- 후드티 브랜드 탭 -->
<div class="hoodie-tab-container">
	<div class="hoodie-tab-menu">
		<button class="hoodie-tab active" data-tab="hoodie-nike">나이키</button>
		<button class="hoodie-tab" data-tab="hoodie-yeezy">이지</button>
		<button class="hoodie-tab" data-tab="hoodie-stussy">스투시</button>
	</div>

	<div class="hoodie-panel" id="hoodie-nike">
		<jsp:include page="hoodies/hoodie_nike.jsp" />
	</div>
	<div class="hoodie-panel" id="hoodie-yeezy" style="display: none;">
		<jsp:include page="hoodies/hoodie_yeezy.jsp" />
	</div>
	<div class="hoodie-panel" id="hoodie-stussy" style="display: none;">
		<jsp:include page="hoodies/hoodie_stussy.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const hoodieTabs = document.querySelectorAll(".hoodie-tab");
    const hoodiePanels = document.querySelectorAll(".hoodie-panel");

    hoodieTabs.forEach(tab => {
      tab.addEventListener("click", () => {
    	hoodieTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        hoodiePanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>