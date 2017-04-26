<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="/shoppingmall/css/style.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="cata" class="box2">
		<ul>
			<li><a href="/shoppingmall/list.do?book_kind=100">문학</a></li>
			<li><a href="/shoppingmall/list.do?book_kind=200">어학</a></li>
			<li><a href="/shoppingmall/list.do?book_kind=300">컴퓨터</a></li>
			<li><a href="/shoppingmall/list.do?book_kind=all">전체</a></li>
		</ul>
	</div>
	<div id="shop" class="box2">
		<c:forEach var="bookList" items="${bookLists }">
			<c:set var="book_kind" value="${bookList[0].getBook_kind() }"></c:set>
			<c:if test="${book_kind=='100' }"></c:if>
		</c:forEach>
	</div>
</body>
</html>