<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty sessionScope.id}">
	<meta http-equiv ="Refresh" content="0;url=/shoppingmall/index.do">
</c:if>

<div id="updateResult">
	<p>${msg}</p>
</div>

<div id="cartDeletePro">
	<form action="/shoppungmall/cartList.do" method="post" id="cartDeletePro">
		<input type="hidden" name="buyer" value="${sessionScope.id}">
		<input type="submit" value="장바구니로 되돌아가기">
	</form>
</div>
