<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String userName = (String) session.getAttribute("userName");
	pageContext.setAttribute("userName", userName);
%>
    
<!-- 네비게이션 바 -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="javascript:goUrl('/LibOutcomesWeb/')" class="navbar-brand">LibOutcomes</a>
        </div>
        
        <!-- navbar-collapse -->
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">소개 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('IntroProject')">프로젝트 소개</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('IntroMember')">연구팀 소개</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">LibOutcomes 평가 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('ReferenceLibrary')">분석 페이지</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('ReferenceReport')">타도서관 분석 결과</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:goUrl('Manual')">매뉴얼</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">참고자료 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('ResourceModel')">로직모델</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('ResourceData')">평가지표</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('ResourceRefer')">참고문헌</a>
                        </li>
                    </ul>
                </li>
				<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('BoardNotice')">공지 게시판</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('BoardNormal')">일반 게시판</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('BoardFAQ')">FAQ</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:goUrl('Sitemap')">사이트맵</a>
                </li>
            </ul>
            <div class="nav navbar-right" style="padding-right:15px;">
                <c:if test = "${userName eq null || userName == ''}">
                    <a href="javascript:goUrl('Login')" class="btn navbar-btn btn-default">로그인</a>
                </c:if>
                <c:if test = "${userName ne null}">
                    <a href="javascript:logoutProcess()" class="btn navbar-btn btn-danger">로그아웃</a>
                </c:if>
            </div>
        </div>
        <!-- /.navbar-collapse -->
        
    </div>
</nav>
<!-- /.네비게이션 바 -->