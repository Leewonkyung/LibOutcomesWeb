<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript"
	src="assets/js/reference/referenceReport.js"></script>
<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- header -->
	<%@ include file="../Header.jsp" %>
	<!-- /.header -->
	
	<!-- contents -->
	<section id="lib-section">
	    <div class="container text-center">
	        
	        <!-- 제목 -->
	        <article class="article-title center mb40">
	            <h2><strong>데이터 업로드</strong></h2>
	            <div class="line">
	                <hr>
	            </div>
	        </article>
	        <!-- /.제목 -->
	        
	        <!-- 내용 -->
	        <center>
	        <form method="post" enctype="multipart/form-data" action="ReferenceReport">
	        <input type="file" name="file1" size="20" align="absmiddle" /> 
				<input type="submit" value="제출"/>
			</form>
			데이터 업로드 결과 : ${UploadSuccess}
	        </center>
	        <!-- /.내용 -->
	
	    </div>
	</section>
	<!-- /.contents -->

	<!-- footer -->
	<%@ include file="../Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>