﻿var status = true;

$(document).ready(function () {
	$("registProduct").click(function(){//[상품등록]버튼 클릭
		location.href="/shoppingmall/mg/bookRegisterForm.do";
	});
	
	$("#updateProduct").click(function(){//[상품수정/삭제] 버튼클릭
		location.href="/shoppingmall/mg/bookList.do?book_kind=all";
	});
	$("#orderedProduct").click(function(){//[전체구매목록 확인]버튼 클릭
		location.href="/shoppingmall/mg/orderList.do";
	});
	$("#qua").click(function(){//[상품 QnA답변] 버튼 클릭
		location.href="/shoppingmall/mg/qnaList.do";
	});
});