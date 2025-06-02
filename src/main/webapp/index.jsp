<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" type="text/css" href="css/style.css?after">
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="tab.jsp" />
	<jsp:include page="footer.jsp" />

	<!-- 탭 스크립트 삽입 위치 -->
	<script>
        document.addEventListener("DOMContentLoaded", function () {
            const tabs = document.querySelectorAll(".tab_menu a");
            const panels = document.querySelectorAll(".tab_panel");

            function activateTab(tab) {
                // 탭 active 클래스 갱신
                document.querySelectorAll(".tab_menu li")
                .forEach(li => li.classList.remove("active"));
                tab.parentElement.classList.add("active");

                // 콘텐츠 영역 표시 갱신
                const targetId = tab.dataset.tab;
                panels.forEach(panel => {
                    panel.classList.remove("active");
                    if (panel.id === targetId) {
                        panel.classList.add("active");
                    }
                });
            }

            // 클릭 이벤트 연결
            tabs.forEach(tab => {
                tab.addEventListener("click", function (e) {
                    e.preventDefault();
                    activateTab(this);
                });
            });

            // ✅ 페이지 로드시 활성화된 탭 자동 실행
            const initialTab = document.querySelector(".tab_menu li.active a");
            if (initialTab) {
                activateTab(initialTab);
            }
        });
    </script>
</body>
</html>

//for check
