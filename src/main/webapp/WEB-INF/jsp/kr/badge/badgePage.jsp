<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- <link rel="stylesheet" href="/resources/css/badge.css"> -->
<div>
	<div id = "search-area">
		<label>교육생 조회</label>
		<input type = "text" id = "birth" name = "birth" placeholder = "생년월일 입력(ex: 970826)">
		<button type = "button" onclick = "searchByBirth()">조회하기</button>
	</div>
   	
    <table id="result-table" border="1" style="display:none;">
        <thead>
            <tr>
                <th>아이디</th>
                <th>이   름</th>
                <th>생년월일</th>
                <th>교육과정</th>
                <th>기숙사</th>
                <!-- STUDENTS 테이블 컬럼에 맞게 수정 -->
            </tr>
        </thead>
        <tbody id="result-body">
        </tbody>
    </table>
   	
   	<label id="no-result" style="display:none;">조회 결과가 없습니다.</label>
</div>

<!-- <script src="/resources/js/badge.js"></script> -->
<script>
/*
	function selectCount() {
		$.ajax({
			url: '/count.do',
			success: function(data) {
				console.log(data);
				$('#result').text(data)
			},
			error: function() {
				alert("오류 발생")
			}
		});
	}
*/
function searchByBirth() {
	var birth = $('#birth').val();
	
	if(birth == '') {
		alert("생년월일을 입력해주세요");
		return;
	}
	console.log(birth);
	
	$.ajax({
		url: '${pageContext.request.contextPath}/searchStudent.do',
		data: {param : birth},
		success: function(data) {
			$('#result-body').empty();
			
			if(data.length == 0) {
				$('#result-table').hide()
				$('#no-result').show();
				return;
			}
			
			$('#result-table').show()
			$('#no-result').hide();
			
			$.each(data, function(i, row) {
                var tr = '<tr>' +
                '<td>' + row.STUDENT_ID + '</td>' +
                '<td>' + row.STUDENT_NAME + '</td>' +
                '<td>' + row.BIRTH_DATE + '</td>' +
                '<td>' + row.EDU_NAME + '</td>' +
                '<td>' + row.DORMITORY_ID + '</td>' +
                '</tr>';
            $('#result-body').append(tr);
			});
		},
		error: function() {
			alert("오류 발생");
		}
	})
}


</script>




