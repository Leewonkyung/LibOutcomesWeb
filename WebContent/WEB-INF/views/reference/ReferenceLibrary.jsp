<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript"
	src="assets/js/reference/referenceLibrary.js"></script>

<title>LIBOUTCOMES</title>
<style>
li{list-style:none;}

#wrap{
	position:relative;
	width:1200px;
	height:110px;
	left:50%;
	margin-left:-600px;
}
#wrap>ul>button {
	width:200px;
	height:40px;
	float:left;
	margin-left:32px;
	margin-top:10px;
}


/* #wrap ul li a {
	display: block;
	color: gray;
}

#wrap ul li a:hover {
	background: #226fbe;
	color: white;
}
#wrap ul li a:active {
	background: #226fbe;
	color: white;
} */
 #wrap ul {
  list-style: none;
  margin-left: 0;
 }
 #wrap ul > li {
  display: inline-block;
 }
#wrap ul > li > a {
  color: gray;
  text-decoration: none;
  display: block;
  padding: 5px 10px;
  background-color: #fff;
 }
#subnav {
	position: absolute;
	width: 1200px;
	height: 630px;
	border: 1px solid silver;
	left: 50%;
	margin-left: -600px;
	z-index: 100;
	top: 110px;
	box-sizing: border-box;
	display: none;
	background: url("assets/img/독서교실.png") top no-repeat;
}

#logic2 {
	position: absolute;
	width: 1200px;
	height: 630px;
	border: 1px solid silver;
	background: url("assets/img/꾸러기열람실.PNG") top no-repeat;
	left: 50%;
	margin-left: -600px;
	z-index: 100;
	top: 110px;
	padding-top: 50px;
	box-sizing: border-box;
	display: none;
}

#logic3 {
	position: absolute;
	width: 1200px;
	height: 630px;
	border: 1px solid silver;
	background: url("assets/img/어린이독서회.PNG") top no-repeat;
	left: 50%;
	margin-left: -600px;
	z-index: 100;
	top: 110px;
	padding-top: 50px;
	box-sizing: border-box;
	display: none;
}
/*#chart {width:600px; height:400px; margin:0 auto; border:1px solid blue; }*/
#print {
	position: fixed;
	right: 5%;
	bottom: 5%;
	width: 65px;
	height: 30px;
	background: gray;
	text-align: center;
	line-height: 28px;
}

#print a {
	color: white;
}

#print a:hover {
	color: #FAED7D;
}

#subnav .btn{
	width: 105px;
	height: 60px;
	background: blue;
	margin-left: 560px;
	margin-top: 79px;
	opacity: 0.3;
	cursor: pointer;
	box-sizing: border-box;
}
#subnav .dropdown-menu{
	margin-left: 750px;
}
#subnav #click2 {
	width: 105px;
	height: 60px;
	background: blue;
	margin-left: 830px;
	margin-top: 100px;
	opacity: 0.3;
	cursor: pointer;
	box-sizing: border-box;
}
#container {
	position: relative;
	width: 1200px;
	height: 400px;
	left: 50%;
	margin-left: -600px;
	margin-top:650px;
}

#container #chart1 {
	width: 1200px;
	height: 400px;
	position: absolute;
	z-index: 1;
	display: none;

}
#container #chart2 {
	width: 1200px;
	height: 400px;
	background-color: #6CF;
	position: absolute;
	z-index: 2;
	display: none;
}
#container #chart3 {
	width: 1200px;
	height: 400px;
	background-color: yellow;
	position: absolute;
	z-index: 2;
	display: none;
}
#container #chart2_1 {
	width: 1200px;
	height: 400px;
	background-color:#EAEAEA;
	position: absolute;
	z-index: 2;
	display: none;
}
</style>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script>
$(function(){
	$('#btn1').addClass('active');
	$('#subnav').show();
});
</script>

<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawStuff);

	function drawStuff() {
		var data = new google.visualization.arrayToDataTable([
				[ '최근 3개월 내역', '구입한 희망도서 수', '전체 구입 도서 수' ],
				[ '2015년 1월', 8000, 23.3 ], [ '2015년 2월', 2000, 40.5 ],
				[ '2015년 3월', 20000, 50.1 ] ]);

		var options = {
			width : 1200,
			chart : {
				title : '구입한 희망도서 수 / 전체 구입 도서 수',
				subtitle : '구입한 희망도서 수와 전체 구입 도서 수의 비교'
			},
			series : {
				0 : {
					axis : 'distance'
				}, // Bind series 0 to an axis named 'distance'.
				1 : {
					axis : 'brightness'
				}
			// Bind series 1 to an axis named 'brightness'.
			},
			axes : {
				y : {
					distance : {
						label : '왼쪽'
					}, // Left y-axis.
					brightness : {
						side : 'right',
						label : '오른쪽'
					}
				// Right y-axis.
				}
			}
		};

		var chart = new google.charts.Bar(document.getElementById('chart1'));
		chart.draw(data, options);
	};
</script>
</head>
<script src="js/jquery-1.12.0.min.js"></script>
<script>
	$(function() {
		/*$("#wrap").mouseenter(function(){
			$("#subnav").stop().slideDown(400);
		});
 
		$("#subnav").mouseleave(function(){
			$(this).stop().slideUp(400)
		});*/
		$("li:first.selected");
		$("#btn1").click(function() {
			$("#subnav").stop().slideDown(400);
			$('#logic2').hide();
			$('#logic3').hide();
		});
		$("#btn2").click(function() {
			$("#logic2").stop().slideDown(400);
			$('#subnav').hide();
			$('#logic3').hide();
			$("#chart1").hide();
			$("#chart2").hide();
			$("#chart3").hide();
			$("#chart2_1").hide();
		});
		$("#btn3").click(function() {
			$("#logic3").stop().slideDown(400);
			$('#subnav').hide();
			$('#logic2').hide();
			$("#chart1").hide();
			$("#chart2").hide();
			$("#chart3").hide();
			$("#chart2_1").hide();
		});
	});
</script>

<body>
	<!-- hedaer -->
	<%@ include file="../Header.jsp"%>
	<!-- /.header -->

	<!-- contents -->
	<section id="lib-section">
	<div class="container text-center">

		<!-- 제목 -->
		<article class="article-title center mb40">
		<h2>
			<strong>분석</strong> 페이지
		</h2>
		<div class="line">
			<hr>
		</div>
		</article>
		<!-- /.제목 -->

		<!-- 내용 -->

			<div id="wrap">
				<ul>
					<button id="btn1" class="btn btn-default">독서교실</button>
					<button id="btn2" class="btn btn-default">꾸러기열람실</button>
					<button id="btn3" class="btn btn-default">어린이독서회</button>
					<button id="btn4" class="btn btn-default">프로그램4</button>
					<button id="btn5" class="btn btn-default">프로그램5</button>
					<button id="btn6" class="btn btn-default">프로그램6</button>
					<button id="btn7" class="btn btn-default">프로그램7</button>
					<button id="btn8" class="btn btn-default">프로그램8</button>
					<button id="btn9" class="btn btn-default">프로그램9</button>
					<button id="btn10" class="btn btn-default">프로그램10</button>

					<div id="subnav">
						<!--<img src="assets/img/logic.JPG"/>  -->
						 <div class="dropdown" id="drop">
   					 <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
   					 <span class="caret"></span></button>
   					 <ul class="dropdown-menu">
    					  <li id="click1_1"><a href="#">서브메뉴1</a></li>
    					  <li id="click1_2"><a href="#">서브메뉴2</a></li>
    					  <li id="click1_#"><a href="#">서브메뉴3</a></li>
   					 </ul>
  					</div>
						<div id="click2"></div>
						
					</div>
					<div id="logic2"></div>
					<div id="logic3"></div>
			</div>
		<div id="container">
			<div id="container_nav">
			<p>표시할 그래프가 없습니다.</p>
			<div id="chart1"></div>
			<div id="chart2">두번째 그래프</div>
			<div id="chart3">세번째 그래프</div>
			
			<div id="chart2_1">관련 프로그램 재참여</div>
			</div>
		</div>
		<!-- <div id="print">
			<a href="javascript:window.print()">인쇄하기</a>
		</div> -->
		<!-- /.내용 -->

	</div>
	</section>
	<!-- /.contents -->



	<script>
		$("#click1_1").click(function() {
			$("#chart1").stop().toggle(1000);
			$("#chart2").hide();
			$("#chart3").hide();
			$("#container p").hide();
		});

		$("#click1_2").click(function() {
			$("#chart2").stop().toggle(1000);
			$("#chart1").hide();
			$("#chart3").hide();
			$("#container p").hide();
		});
		$("#click1_3").click(function() {
			$("#chart3").stop().toggle(1000);
			$("#chart1").hide();
			$("#chart2").hide();
			$("#container p").hide();
		});
		$("#click2").click(function() {
			$("#chart2_1").stop().toggle(1000);
			$("#chart1").hide();
			$("#chart2").hide();
			$("#chart3").hide();
			$("#container p").hide();
		});
		$("#print").click(function() {
			$(this).css({
				display : "none"
			});
		});
	</script>
	<!-- footer -->
	<%@ include file="../Footer.jsp"%>
	<!-- /.footer -->
</body>
</html>