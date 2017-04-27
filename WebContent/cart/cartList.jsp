<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<link rel="stylesheet" href="/shoppingmall/css/style.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js">
</script>

<c:if test="${empty sessionScope.id }">
	<meta http-equiv = "Refresh" content="0;/shoppingmall/index.do">
</c:if>

<div id="cata" class="box2">
	<ul>
		<li><a href="/shoppingmall/list.do?book_kind=100">문학</a>
		<li><a href="/shoppingmall/list.do?book_kind=200">어학</a>
		<li><a href="/shoppingmall/list.do?book_kind=300">컴퓨터</a>
		<li><a href="/shoppingmall/list.do?book_kind=all">전체</a>
	</ul>
</div>

<div id="goShop">
	<button id="conShopping">쇼핑계속</button>
	<button id="shopMain">메인으로</button>
</div>

<div id="cartList">
	<c:if test="${count==0}">
		<ul>
			<li>장바구니에 담긴 물품이 존재하지 않습니다.
		</ul>	
	</c:if>
	
	<c:if test="${count>0}">
	
	
	</c:if>
	
</div>