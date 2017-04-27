﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="/shoppingmall/css/style.css"/>

<script src="/shoppingmall/member/modify.js"></script>

<c:if test="${empty sessionScope.id }">
	<mata http-equiv="Refresh" content="0;url=/shoppingmall/index.do" >
</c:if>

<div id="regForm" class="box">
	<ul>
		<li><p class="center">회원 정보 수정
		<li><label for="id">아이디</label>
			<input id="id" name="id" type="email" size="20" maxlength="50" value="${id}" readonly="readonly" disabled="disabled">
		
		<li><label for="passwd">비밀번호</label>
			<input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16">
			<small class="cau">반드시  입력해주세욧</small>
			
		<li><label for="name">이름</label>
			<input id="name" name="name" type="text" size="20" value="${m.getName()}" maxlength="10">
			
		<li><label for="address">주소</label>
			<input id="address" name="address" type="text" size="30" value="${m.getAddress()}" maxlength="50">
			
		<li><label for="tel">전화번호</label>
			<input id="tel" name="tel" type="tel" size="20" value="${m.getTel()}" maxlength="20">
			
		<li class="label2">
			<button id="modifyProcess">수정</button>
			<button id="cancle">취소</button>	
	</ul>
</div>