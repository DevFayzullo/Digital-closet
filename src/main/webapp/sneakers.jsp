<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<link rel="stylesheet" type="text/css" href="css/item.css?after">

<div class="layout_list_vertical">
	<div class="text_body">
		<p class="shoes_title">운동화 트렌드</p>
	</div>
	<div class="text_body">
		<p class="shoes_subtitle">다양한 모델</p>
	</div>
</div>

<!-- 슬리퍼 브랜드 탭 -->
<div class="sneakers-tab-container">
	<div class="sneakers-tab-menu">
		<button class="sneakers-tab active" data-tab="sneakers-jordan">조던</button>
		<button class="sneakers-tab" data-tab="sneakers-newbalance">뉴발란스</button>
		<button class="sneakers-tab" data-tab="sneakers-adidas">아디다스</button>
	</div>

	<div class="sneakers-panel" id="sneakers-jordan">
		<jsp:include page="sneakers_jordan.jsp" />
	</div>
	<div class="sneakers-panel" id="sneakers-newbalance" style="display: none;">
		<jsp:include page="sneakers_newbalance.jsp" />
	</div>
	<div class="sneakers-panel" id="sneakers-adidas" style="display: none;">
		<jsp:include page="sneakers_adidas.jsp" />
	</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", () => {
    const sneakersTabs = document.querySelectorAll(".sneakers-tab");
    const sneakersPanels = document.querySelectorAll(".sneakers-panel");

    sneakersTabs.forEach(tab => {
      tab.addEventListener("click", () => {
    	sneakersTabs.forEach(t => t.classList.remove("active"));
        tab.classList.add("active");

        const targetId = tab.dataset.tab;
        sneakersPanels.forEach(panel => {
          panel.style.display = (panel.id === targetId) ? "block" : "none";
        });
      });
    });
  });
</script>