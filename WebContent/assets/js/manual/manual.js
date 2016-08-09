/**
 * 메뉴얼 JS
 * 
 */
var OBJECT_BOLD = null; //볼드체로 바뀐 객체를 기억해둘 변수
function changeToBold(obj){
	obj.style.fontWeight = "bold";
	obj.style.color="#FFBB00";
	if(OBJECT_BOLD){	//이전 객체의 볼드 속성을 없앤다.
		OBJECT_BOLD.style.fontWeight="";
		OBJECT_BOLD.style.color="";
	}
	OBJECT_BOLD=obj;	//현재 객체를 저장해 둔다.
}

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		$manual.setGotoTopBtn();
		
		// 메뉴로 버튼 클릭
		$('#gotoTop').click(function() {
			$(window).scrollTop(0);
		});
		
	});
	
	W.manual = W.$manual || {}; // 객체 선언
	
	$manual = {
			
			// 스크롤 높이에 따라 메뉴로 버튼 표시
			setGotoTopBtn : function() {
				
				$(window).scroll(function() {
					if ($(this).scrollTop() > 500) {
						$("#gotoTop").show();
					} else {
						$("#gotoTop").hide();
					}
				});
			}
		
	};
	
}(window, document));