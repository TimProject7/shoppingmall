﻿$(document).ready(function(){
	$("#regist").click(function(){//[책등록] 버튼 클릭
		location.href="/shoppingmall/mg/bookRegisterForm.do";
		
	});
	$("#bookMain").click(function(){//[관리자 메인으로] 버튼클릭
		location.href="/shoppingmall/mg/managerMain.do";
	});
});

//[수정]버튼을 클릭하면 자동 실행
function edit(editBtn){
	var rStr = editBtn.name;
	var arr = rStr.split(",");
	var query = "/shoppingmall/mg/bookUpdateForm.do?book_id="+arr[0];
	query += "&book_kind="+arr[1];
	location.href=query;
}

//[삭제]버튼을 클릭하면 자동 실행
function del(delBtn){
	var rStr = delBtn.name;
	var arr = rStr.split(",");
	var query = "/shoppingmall/mg/bookDeletePro.do?book_id="+arr[0];
	query += "&book_kin="+arr[1];
	location.href=query;
}
