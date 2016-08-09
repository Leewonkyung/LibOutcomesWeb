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

<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- hedaer -->
	<%@ include file="../Header.jsp" %>
	<!-- /.header -->
	
	<!-- contents1 -->
	<section id="lib-section">
	    <div class="container text-center">
	        
	        <!-- 제목 -->
	        <article class="article-title center">
	            <h2><strong>프로젝트</strong> 소개</h2>
	            <div class="line">
	                <hr>
	            </div>
	        </article>
	        <!-- /.제목 -->
	        
	        <!-- 내용 -->
	        <article class="row">
	            <div class="col-lg-12">
	                <h3>공공도서관 서비스 가치평가 모델 개발 및 소프트웨어 구축</h3>
	                <h3 class="text-muted mb40"><small><em>Modeling the Values of Public Library Services and Software Development</em></small></h3>
	            </div>
	            <div class="row mlr5">
	                <div class="col-md-8 col-md-offset-2">
	                    <p>2012년 ACRL(미국 대학 및 연구도서관 협회)은 도서관의 10대 핵심 이슈 중 하나로 ‘도서관 가치 알리기 (Communicating value)’를 선정한 바 있다. 
	                                         이는 도서관의 가치를 알리고 이를 통해 지역사회에서 변화와 소통에 주도적인 역할을 주문하는 것이다. 도서관이 지역사회와 소통하기 위해서는 무엇보다 올바른 평가를 통한 가치의 발견이 선행되어야 함은 물론이다.</p>
	                    <p>그간 도서관에서 수행한 평가는 이용자의 만족도 조사 혹은 서비스 산출 평가(Output evaulation) 위주로 되어 있어 지역사회 내에서 도서관이 만들어내는 변화와 성과를 충분히 보여주지 못하여 도서관이 가진 가치에 비해 
	                                        상대적으로 낮은 인식을 받아왔다. 또한 내부적으로도 도서관에 축적된 데이터를 평가에 다양하게 활용할 수 있음에도 불구하고 단순 기술통계로 사용하고 있어 도서관 데이터 활용의 효율성을 제고할 필요가 있는 상황이다.</p>
	                    <p>따라서 본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 
	                                        측정하는 것을 목적으로 한다. 본 목적을 달성하기 위해서 구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 로직모델(Logic model)을 바탕으로 
	                                        평가 프레임워크를 개발한다. 이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 한다.</p>
	                    <p>본 연구를 통해 다음과 같은 효과를 얻을 수 있을 것으로 기대한다.</p>
	                </div>
	            </div>
	        </article>
	        <!-- /.내용 -->
	
	    </div>
	</section>
	<!-- /.contents1 -->
	
	<!-- contents2 -->
	<section id="lib-section">
	    <div class="container text-center">
	        
	        <!-- 제목 -->
	        <article class="article-title center mb40">
	            <h2><strong>연구계획</strong> 소개</h2>
	            <div class="line">
	                <hr>
	            </div>
		        <div class="clearfix"></div>
	        </article>
	        <!-- /.제목 -->
	        
	        <!-- 내용 -->
	        <article class="row">
	            <div class="col-lg-12">
	                <ul class="timeline">
	                	<!-- timeline1 -->
	                    <li>
	                        <div class="timeline-image">
	                            <img class="img-circle img-responsive" src="assets/img/intro/plan_timeline1.jpg">
	                        </div>
	                        <div class="timeline-panel">
	                            <div class="timeline-heading">
	                                <h4>2015-2016</h4>
	                                <h4 class="subheading">1년차 활동내용</h4>
	                            </div>
	                            <div class="timeline-body">
	                                <p class="text-muted">① 도서관 서비스 성과평가 모형개발 (성북정보도서관 서비스 분석 / 성과평가 워크숍 / 성과지표 개발 / 성과평가 모델 프레임워크 개발)</p> 
	                                <p class="text-muted">② LibOutcomes 개발 (평가업무 프로세스분석 / KOLAS 시스템 저장 데이터 DB 구조 분석 / 유사 DB 설계 및 기획 / LibOutcomes Prototype 설계 및 구현 / 간단한 UI를 이용한 구현 및 테스트)</p>
	                                <p class="text-muted">③ 성과확산을 위한 웹사이트 구축 (콘텐츠 구축 / 웹사이트 구축 / 웹사이트 시범운영 / 웹사이트 공개)</p>
	                            </div>
	                        </div>
	                    </li>
	                    <!-- /.timeline1 -->
	                    <!-- timeline2 -->
	                    <li class="timeline-inverted">
	                        <div class="timeline-image">
	                            <img class="img-circle img-responsive" src="assets/img/intro/plan_timeline2.jpg">
	                        </div>
	                        <div class="timeline-panel">
	                            <div class="timeline-heading">
	                                <h4>2016-2017</h4>
	                                <h4 class="subheading">2년차 활동내용</h4>
	                            </div>
	                            <div class="timeline-body">
	                                <p class="text-muted">① 도서관 시스템 환경분석 (KOLAS 시스템 저장 데이터 분석 / KOLAS 시스템 DB 구조 분석 / 기존 DB외 추가 입력될 데이터 분석)</p>
	                                <p class="text-muted">② LibOutcomes 개발 (LibOutcomes DB 설계 / LibOutcomes DB 구현 / 웹사이트와 LibOutcomes 연동 / 시범 운영, 테스트 및 시스템 공개)</p>
	                                <p class="text-muted">③ LibOutcomes 확산을 위한 전략 (시스템 활용 매뉴얼 개발 / LibOutcomes 워크숍)</p>
	                            </div>
	                        </div>
	                    </li>
	                    <!-- /.timeline2 -->
	                    <!-- timeline3 -->
	                    <li class="timeline-inverted">
	                        <div class="timeline-image">
	                            <h4><br>· · ·</h4>
	                        </div>
	                    </li>
	                    <!-- /.timeline3 -->
	                </ul>
	            </div>
	        </article>
	        <!-- /.내용 -->
	
	    </div>
	</section>
	<!-- /.contents2 -->

	<!-- footer -->
	<%@ include file="../Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>