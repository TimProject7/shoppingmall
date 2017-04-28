$(document).ready(function() {
	$("#uRes").click(function() { //회원가입 버튼 클릭
	
		location.href="/shoppingmall/registerForm.do";
		
	});
	
	
	$("#uLogin").click(function() { //로그인 버튼 클릭
		alert("눌렀다");
		var query = {id:$("#cid").val(),
						passwd:$("#cpasswd").val()};
		
		$.ajax({
			
			type:"POST",
			url:"/shoppingmall/loginPro.do",
			data:query,
			success: function(data) {
				
				var str1 = '<p id="ck">';
				var loc = data.indexOf(str1);
				var len = str1.length;
				var check = data.substr(loc+len,1);
				
				if(check == "1"){
					location.href="/shoppingmall/index.do";
				}else if(check == "0"){
					alert("비밀번호가 틀립니다.");
					$("#cpasswd").val("");
				}else{
					alert("아이디가 틀립니다.");
					$("#id").val("");
					$("#cpasswd").val("");
				}
			}
		});
	});
	
	$("#uUpdate").clicek(function() { //회원 정보 변경 버튼 클릭
		
		location.href="/shoppingmall/modify.do";
		
	});
	
	$("#uLogout").click(function() { //로그아웃 버튼 클릭
		
		$.ajax({
			
			type:"POST",
			url:"/shoppingmall/logout.do",
			success : function(data) {
				location.href="/shoppingmall/index.do";
			}
		});
	});
	
	$("#cart").click(function() { //장바구니 버튼 클릭
	
		location.href="/shoppingmall/cartList.do";
		
	});
	
	$("#buy").click(function() { //구매내역 버튼 클릭
	
		location.href="/shoppingmall/butList.do";
		
	});
});