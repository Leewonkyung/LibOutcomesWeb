<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css" href="assets/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>

<title>LIBOUTCOMES</title>
</head>
<body>
<!-- 구글 애널리틱스 -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-80872975-1', 'auto');
  ga('send', 'pageview');
</script>

<!-- 구글 애널리틱스 끝 -->

	<!-- header -->
	<%@ include file="Header.jsp" %>
	<!-- /.header -->

	<header id="lib-main">
	    <div class="overlay">
	        <div class="sub-home text-left" style="padding-left:90px;">
	            <h1  style="color:#4C4C4C;"><br>Welcome on <strong><span class="color">LIBOUTCOMES</span></strong></h1>
	            <p class="lead mlr5" style="color:#4C4C4C;"><strong>공공도서관 서비스 성과 측정 시스템</strong> 및 <strong>시스템 구축</strong>	   </p>
<p style="padding-left:180px;"><br></p>
         <center><a href="#lib-section" class="fa fa-angle-down page-scroll"></a>
</center>	        </div>
	    </div>
	</header>

	<section id="lib-section">
	    <article class="container">
	        <div class="row">
	            <div class="col-md-6">
	                <img src="assets/img/bg/bg_img.jpg" class="img-responsive">
	            </div>
	            <div class="col-md-6">
	                <div class="article-title">
	                    <h4>What is this project?</h4>
	                    <h2>about <strong>LibOutcomes</strong></h2>
	                    <hr>
	                    <div class="clearfix"></div>
	                </div>
	                <p class="sub">본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 
	                	기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 합니다. 본 목적을 달성하기 위해서 
	                	구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 
	                	로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발합니다.<br>
	               		이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 합니다.</p>
	             </div>
	        </div>
	    </article>
	</section>
	
	<!-- contents2 기대효과 -->
	<section id="lib-section">
	    <div class="container text-center">
	
	        <!-- 제목 -->
	        <article class="article-title center mb40">
	            <h2>프로젝트 <strong>기대효과</strong></h2>
	            <div class="line">
	                <hr>
	            </div>
	            <div class="clearfix"></div>
	        </article>
	        <!-- /.제목 -->
	        
	        <!-- 내용 -->
	        <article class="row">
	            <div class="col-md-4 content">
	                <i class="fa fa-bar-chart"></i>
	                <h4><strong>올바른 평가 및 가치 알리기</strong></h4>
	                <p class="mt20">지역사회에 대한 공공도서관의 성과에 대한 평가를 수행함으로써 공공도서관의 프로그램 운영에 대한 올바른 평가와 
	                		가치 알리기가 가능해질 것이다. 아울러, 도서관을 이용하는 지역사회 주민과의 지속적인 연계 및 관계 유지에 유용하게 이용될 것이다.</p>
	            </div>
	            <div class="col-md-4 content">
	                <i class="fa fa-book"></i>
	                <h4><strong>업무 개선 및 사업 확장</strong></h4>
	                <p class="mt20">공공도서관 업무 개선 및 사업의 확장이 가능할 것이다. 이제 단순 수치만으로 도서관을 평가할 수는 없다. 
	                		지속적인 가치의 평가와 이용자 서비스의 개발을 통해 지역사회와의 소통에 구심점으로 자리매김해야 할 것이다.</p>
	            </div>
	            <div class="col-md-4 content">
	                <i class="fa fa-paper-plane"></i>
	                <h4><strong>문헌정보학계의 발전</strong></h4>
	                <p class="mt20">평가모델의 공유를 통한 문헌정보학계의 발전을 도모할 수 있을 것이다. 과거의 여러 연구를 통해 평가의 영역이 현재도 여러 문제점이 있으나 
	                		개선 및 새로운 지표의 개발이 용이하지 않다는 것을 목도해 왔다. 따라서 본 연구를 통해 성과의 평가라는 새로운 화두를 던질 수 있을 것이다.</p>
	            </div>
	        </article>
	        <!-- /.내용 -->
	             
	    </div>
	</section>
	<!-- /.contents2 -->

	<!-- footer -->
	<%@ include file="Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>