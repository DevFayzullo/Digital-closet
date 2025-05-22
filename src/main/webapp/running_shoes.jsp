<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">러닝화 트렌드</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">폼 나게 러닝 하자!</p>
	</div>
</div>

<!-- 러닝화 브랜드 탭 -->
<div class="running-tab-container">
	<div class="running-tab-menu">
		<button class="running-tab active" data-tab="running-nike">나이키</button>
		<button class="running-tab" data-tab="running-adidas">아디다스</button>
		<button class="running-tab" data-tab="running-asics">아식스</button>
	</div>

	<div class="running-panel" id="running-nike">
		<jsp:include page="running_shoes_nike.jsp" />
	</div>
	<div class="running-panel" id="running-adidas" style="display: none;">
		<jsp:include page="running_shoes_adidas.jsp" />
	</div>
	<div class="running-panel" id="running-asics" style="display: none;">
		<jsp:include page="running_shoes_asics.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const runningTabs = document.querySelectorAll(".running-tab");
    const runningPanels = document.querySelectorAll(".running-panel");

    runningTabs.forEach(tab => {
      tab.addEventListener("click", () => {
        runningTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        runningPanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>