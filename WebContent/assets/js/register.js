/**
 * 회원가입 JS
 * 
 */

(function(W, D) {
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		// 회원가입 버튼 클릭 이벤트
		$('#registerMemberBtn').click(function() {
			var email = $('#register_email').val();
			var password = $('#register_password').val();
			var name = $('#register_name').val();
			var library = $('#register_library').val();
			$register.insertMember(email, password, name, library);
		});
	});

	W.register = W.$register || {}; // 객체 선언
	
	$register = {
		
			// 회원가입
			insertMember : function(email, password, password_check, name, library) {

				if (email == "") {
					alert("이메일을 입력하세요.");
					return;
				}else if (password == "") {
					alert("비밀번호를 입력하세요.");
					return;
				}else if (password_check == ""){
					alert("비밀번호를 확인해주세요.");
					return;
				}else if (name == "") {
					alert("이름을 입력하세요.");
					return;
				}
				else if (library == "") {
					alert("소속 도서관을 입력하세요.")
					return;
				}
				//else alert("JS 동작");
				
				/////////////////////////////////////////////////////////
				// Ajax post 방식으로 전송
			$.ajax({
					url : "Register",
					type : "POST",
					data : {
						"email" : email,
						"password" : password,
						"name" : name,
						"librray" : library,
					},
					success : function(data) {
						if (password == password_check) { // 회원 가입 성공
							alert("회원 가입이 완료 되었습니다.")
							goUrl('/LibOutcomesWeb/');
						} else { // 실패
							alert("정보를 확인하세요.");
						}
					}
				});
			////////////////////////////////////////////////////////////////////	
			}
	};
	
}(window, document));