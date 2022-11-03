function fn_boardRegi() {
	var subject = $("#title").val();
	var name = $("#name").val();
	var content = $("#content").val();

	$.ajax({
		type: "POST",
		url: "board/regi",
		data: { subject : subject, name : name, content : content},
		success: function(data) {
			if (data == "Y") {
				alert("글 등록이 완료되었습니다.");
				console.log(data);
				console.log(url);
				//location.href = "/boardList";
			}
		},
		error: function(data) {
			alert("실패");
			console.log(data);
		}
	});
};