


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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<title>LIBOUTCOMES</title>
<style>
li{list-style:none;}

</style>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script>
$(function(){
	$('#btn1').addClass('active');
	$('#subnav').show();
});
//첫번째 그래프
$(function () {
    $('#chart1').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Column chart with negative values'
        },
        xAxis: {
            categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
        },
        credits: {
            enabled: false
        },
        series: [{
            name: 'John',
            data: [5, 3, 4, 7, 2]
        }, {
            name: 'Jane',
            data: [2, -2, -3, 2, 1]
        }, {
            name: 'Joe',
            data: [3, 4, 4, -2, 5]
        }]
    });
});
//두번째 그래프
$(function() {
	  $('#chart2').highcharts({
	    chart: {
	      alignTicks: false
	    },
	    title: {
	      text: '',
	      x: -20 //center
	    },
	    xAxis: {
	      categories: ['2005', '2006', '2007', '2008', '2009', '2010',
	        '2011', '2012', '2013', '2014'
	      ]
	    },
	    yAxis: [{ // Primary yAxis
	      min: 0,
	      max: 3.6,
	      gridLineWidth: 0,
	      tickInterval: 0.4,
	      labels: {
	        format: '{value:.1f}',
	        style: {
	          color: Highcharts.getOptions().colors[1]
	        }
	      },
	      title: {
	        text: 'A/B/C/D',
	        style: {
	          color: Highcharts.getOptions().colors[1]
	        }
	      }
	    }, { // Secondary yAxis
	      min: 0,
	      max: 90.0,
	      gridLineWidth: 0,
	      tickInterval: 10.0,
	      title: {
	        text: 'E/F',
	        style: {
	          color: Highcharts.getOptions().colors[0]
	        }
	      },
	      labels: {
	        format: '{value:.1f}',
	        style: {
	          color: Highcharts.getOptions().colors[0]
	        }
	      },
	      opposite: true
	    }],
	    legend: {
	      layout: 'horizontal',
	      verticalAlign: 'top',
	    },
	    series: [{
	      name: '샘플1',
	      yAxis: 1,
	      data: [60.2, 61.6, 62.0, 61.7, 61.7, 61.9, 61.1, 61.6, 62.7, 61.6]
	    }, {
	      name: '샘플2',
	      yAxis: 0,
	      data: [1.0, 0.2, 0.1, 0.2, 0.1, 0.1, 0.2, 0.0, 0.0, 0.2]
	    }, {
	      name: '샘플3',
	      yAxis: 0,
	      data: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
	    }, {
	      name: '샘플4',
	      yAxis: 0,
	      data: [1.2, 1.3, 1.0, 0.9, 0.8, 1.1, 1.6, 1.1, 0.9, 0.6]
	    }, {
	      name: '총결함',
	      yAxis: 0,
	      data: [2.2, 1.5, 1.2, 1.1, 0.9, 1.2, 1.8, 1.1, 0.9, 0.8]
	    }, {
	      name: '샘플5',
	      yAxis: 1,
	      data: [61.9, 77.2, 69.9, 64.1, 78.6, 70.9, 81.0, 68.0, 67.0, 67.0]
	    }]
	  });
	});
//세번째 그래프

//관련 프로그램 재참여 차트
$(function () {
    $('#chart2_1').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: 'Historic World Population by Region'
        },
        subtitle: {
            text: 'Source: <a href="https://en.wikipedia.org/wiki/World_population">Wikipedia.org</a>'
        },
        xAxis: {
            categories: ['Africa', 'America', 'Asia', 'Europe', 'Oceania'],
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Population (millions)',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' millions'
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
            x: -40,
            y: 80,
            floating: true,
            borderWidth: 1,
            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
            shadow: true
        },
        credits: {
            enabled: false
        },
        series: [{
            name: 'Year 1800',
            data: [107, 31, 635, 203, 2]
        }, {
            name: 'Year 1900',
            data: [133, 156, 947, 408, 6]
        }, {
            name: 'Year 2012',
            data: [1052, 954, 4250, 740, 38]
        }]
    });
});


</script>

<!-- <script type="text/javascript">
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
</script> -->
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
		$("button").click(function(){
			$("#btn1").removeClass('active');
		});
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
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<!-- header -->
	<%@ include file="../Header.jsp" %>
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
   					 <div id="dropdown-menu">
   					 <ul>
    					  <li id="click1_1"><a href="#">서브메뉴1</a></li>
    					  <li id="click1_2"><a href="#">서브메뉴2</a></li>
    					  <li id="click1_#"><a href="#">서브메뉴3</a></li>
   					 </ul>
   					 </div>
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
			$("#chart2_1").hide();
			$("#container p").hide();
		});

		$("#click1_2").click(function() {
			$("#chart2").stop().toggle(1000);
			$("#chart1").hide();
			$("#chart3").hide();
			$("#chart2_1").hide();
			$("#container p").hide();
		});
		$("#click1_3").click(function() {
			$("#chart3").stop().toggle(1000);
			$("#chart1").hide();
			$("#chart2").hide();
			$("#chart2_1").hide();
			$("#container p").hide();
		});
		$("#click2").click(function() {
			$("#chart2_1").stop().toggle(1000);
			$("#chart1").hide();
			$("#chart2").hide();
			$("#chart3").hide();
			$("#dropdown-menu").hide();
			$("#container p").hide();
		});
		$("#print").click(function() {
			$(this).css({
				display : "none"
			});
		});
		$(".btn").click(function() {
			$("#dropdown-menu").stop().toggle();
		});
	</script>
	
	<!-- footer -->
	<%@ include file="../Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>