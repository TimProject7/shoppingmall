$(document).ready(function(){
	//[로그인] 버튼을 클릭하면 자동실행
	$("#login").click(function(){
		var query={id:$("#id").val(),
				passwd:$("#passwd").val()};
		
		$.ajax({
			type:"post",
			url:"/shoppingmall/mg/managerLoginPro.do",
			data:query,
			success:function(data){
				location.href("/shoppingmall/mg/managerMain.do");
			}
		});
	});//end login
	
	//[로그아웃]버튼을 클릭하면 자동실행
	$("#logout").click(function(){
		$.ajax({
			type:"post",
			url:"/shoppingmall/mg/managerLogout.do",
			success:function(data){
				location.href("/shoppingmall/mg/managerMain.do");
			}
		});
	});//end logout
	
});