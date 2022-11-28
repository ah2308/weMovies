var action = '';
var url = '';
var type = '';
var bno = 0;

$(document).ready(function(){
	//예매하기 버튼 클릭
	$('#reservation').click(function(){
		action = 'ticket/res';
		type = 'POST'
		$('#modal-title').text("모달창 테스트");
		$('#myModal').modal();
	});
});