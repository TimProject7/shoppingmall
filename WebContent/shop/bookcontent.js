$(document).ready(function() {
	$("#insertCart").click(function() { // [장바구니에 담기] 버튼 클릭
		var buyer = $("$#buyer").val();
		var book_kind = $("#book_kind").val();
		var query = {
			book_id : $("#book_id").val(),
			buy_count : $("#buy_count").val(),
			book_image : $("#book_image").val(),
			book_title : $("book_title").val(),
			buy_price : $("#buy_price").val(),
			buyer : buyer
		};
		$.ajax({})

	})
})