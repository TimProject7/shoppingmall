<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta name="viewport" content="width=device-width,initial-scale=1.0" />

<link rel="stylesheet" href="/shoppingmall/css/style.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js">
	
</script>
<script src="/shoppingmall/cart/cartList.js"></script>
<c:if test="${empty sessionScope.id }">
	<meta http-equiv="Refresh" content="0;/shoppingmall/index.do">
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
		<table>
			<tr>
				<td width="300">상품명</td>
				<td width="100">판매가격</td>
				<td width="150">수량</td>
				<td width="150">금액</td>
			</tr>

			<c:set var="total" value="0"/>
				<c:forEach var="cart" items="${cartLists}">
					<tr>
						<td width="300"><img alt=""
							src="/shoppingmall/bookImage/${cart.getBook_image()}"
							class="cartimaage"> ${cart.getBook_title()}</td>
						<td width="100"><fmt:formatNumber
								value="${cart.getBuy_price()}" type="number" pattern="#,##0" />
							원</td>
						<td width="150"><input type="text" name="buy_count" size="5"
							value="${cart.getBuy_count()}">
							<button id="updateSu"
								name="${cart.getCart_id()},${car.getBuy_count()}"
								onclick="editSu(this)">수정</button></td>
						<td width="150" align="center"><c:set var="amount"
								value="${cart.getBuy_count()*cart.getBuy_price()}" /> <c:set
								var="total" value="${total + amount }" /> <fmt:formatNumber
								value="${amount}" type="number" pattern="#,##0" /> 원
							<button id="deleteList" name="${cart.getCart_id()}"
								onclick="delList(this)">삭제</button></td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="4" align="right" class="b">총 금액 : <fmt:formatNumber
							value="${total}" type="number" pattern="#,##0" /> 원
					</td>
				</tr>

				<tr height="10">
					<td colspan="5" align="center">
						<div id="cinfo">
							<table>
								<tr>
									<td>
										<form action="/shoppingmall/buyForm.do" id="cartForm"
											method="post">
											<input type="hidden" name="buyer" value="${sessionScope.id}">
											<input type="submit" value="구매하기">
										</form>
									</td>
									<td>
										<form action="/shoppingmall/deleteCart.do" id="cartClearForm"
											method="post">
											<input type="hidden" name="list" value="all"> <input
												type="hidden" name="buyer" value="${sessionScope.id}">
											<input type="submit" value="장바구니 비우기">
										</form>
									</td>
							</table>
						</div>
		</table>
	</c:if>
	
</div>