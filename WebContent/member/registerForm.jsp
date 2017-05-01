<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/shoppingmall/css/style.css" />

<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js"></script>
<script src="/shoppingmall/member/register.js"></script>
<div id="regForm" class="box">
	<ul>
		<li><label for="id">아이디</label> <input type="email" id="id"
			name="id" size="20" maxlength="50" placeholder="abc123@naver.com"
			autofocus="autofocus">
			<button id="checkId">ID 중복확인</button>
		<li><label for="passwd">비밀번호</label> <input type="password"
			id="passwd" name="passwd" size="20" placeholder="6~16숫자/문자"
			maxlength="16">
		<li><label for="repass">비밀번호 재입력</label> <input type="password"
			id="repass" name="repass" size="20" placeholder="비밀번호 재입력"
			maxlength="16">
		<li><label for="name">이 름</label> <input type="text" id="name"
			name="name" size="20" placeholder="홍길동" maxlength="10">
		<li><label for="address">주 소</label> <input type="text"
			id="address" name="address" size="30" placeholder="주소 입력"
			maxlength="50">
		<li><label for="tel">전화번호</label> <input type="tel" id="tel"
			name="tel" size="20" placeholder="전화번호 입력" maxlength="20">
		<li class="label2">
			<button id="process">가입하기</button>
			<button id="cancle">취소</button>
	</ul>


</div>