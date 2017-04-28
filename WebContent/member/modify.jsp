<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="/shoppingmall/css/style.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js">
</script>

<c:if test="${empty sessionScope.id }">
	<meta http-equiv="Refresh" content="0;url=/shoppingmall/index.do" >
</c:if>

<div id="mStatus">
	<form action="/shoppingmall/modifyForm.do" method="post" id="uForm">
		<ul>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" name="passwd" id="passwd" size="20" placeholder="6~16자리 숫자/문자" maxlength="16">
				<input id="id" name="id" type="hidden" value="${sessionScope.id}">
				<input type="submit" id="modify" value="정보수정">
		</ul>
	</form>
	
	<form action="/shoppingmall/deletePro.do" id="dForm" method="post">
		<ul>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" name="passwd" id="passwd" size="20" placeholder="6~16자리 숫자/문자">
				<input id="id" name="id" type="hidden" value="${sessionScope.id}">
				<input type="submit" id="delete" value="회원탈퇴">
				<small class="cau">[탈퇴] 버튼을 누르면 바로 탈퇴됩니다.</small>
		</ul>
	</form>
	
	<button id="shopMain" onclick="window.location.href('/shoppingmall/index.do')">메인으로</button>

</div>