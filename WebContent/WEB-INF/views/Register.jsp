<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<!-- css -->
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/register.js"></script>
 
<title>LIBOUTCOMES</title>
</head>
<body>
    <!-- hedaer -->
    <%@ include file="Header.jsp" %>
    <!-- /.header -->
    
    <!-- contents -->
    <div class="container mt120 mb80"><br>
        <div class="lib-login jumbotron center-block">
 
            <div>
                <h2>회원가입</h2>
            </div><br>
            <div>
                <label for="register_email">이메일</label>
                <input id="register_email" type="text" class="form-control mb10" placeholder="이메일"/>
                
                <label for="register_password">비밀번호</label>
                        <input id="register_password" type="password" class="form-control mb10" placeholder="비밀번호"/>
 
				<label for="register_password_check">비밀번호 확인</label>
                        <input id="register_password_check" type="password" class="form-control mb10" placeholder="비밀번호 확인"/>
				
				<label for="register_name">이름</label>
                        <input id="register_name" type="text" class="form-control mb10" placeholder="이름"/>
				
				<label for="register_library">도서관명</label><br>
                       <!--  <select name="register_library" class="form-control"> -->
                       <!-- 			<option>성북구 A 도서관</option><option>성북구 B도서관</option> </select><br> -->
        				<input id="register_library" type="text" class="form-control mb10" placeholder="도서관"/>
     
                <button id="registerMemberBtn" class="form-control btn btn-success mt10" >회원가입</button>
            </div>
            
        </div>
    </div>
    <!-- /.contents -->
 
    <!-- footer -->
    <%@ include file="Footer.jsp" %>
    <!-- /.footer -->
</body>
</html>