function searchByBirth() {
	var birth = $('#birth').val();
	
	if(birth == '') {
		alert("생년월일을 입력해주세요");
		return;
	}
    if(birth.length != 6) {
        alert("생년월일 6자리를 입력해주세요.");
        return;
    }

	// console.log(birth);
	
	$.ajax({
		url: '/searchStudent.do',
		data: {param : birth},
		success: function(data) {
			$('#result-body').empty();
            $('#selected-area').hide();
            $('#confirm-btn').hide();
            $('#cancel-btn').hide();

			if(data.length == 0) {
				$('#result-table').hide()
				$('#no-result').show();
				return;
			}
			
			$('#result-table').show()
			$('#no-result').hide();
			
			$.each(data, function(i, row) {
                var tr = '<tr class="student-row" data-student=\'' + JSON.stringify(row) + '\'>' +
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

$(document).on('click', '.student-row', function() {
    $('.student-row').removeClass('table-primary');
    $(this).addClass('table-primary');

    var selected = $(this).data('student');

    $('#selected-name').text(selected.STUDENT_NAME);
    $('#selected-edu').text(selected.EDU_NAME);
    $('#selected-area').show();
    $('#confirm-btn').show();
    $('#cancel-btn').show();
});

function confirmStudent() {
    var selected = $('.student-row.table-primary').data('student');
    // console.log('SELECTED :: ' + selected.STUDENT_NAME);
    // alert(selected.STUDENT_ID + "선택됨")

    var studentId = selected.STUDENT_ID;

    $.ajax({
        url: '/studentDetail.do',
        data: { param: studentId },
        success: function(data) {
            // content-area에 guidePage 로드 후 데이터 표시
            $('#content-area').load('/guide.do', function() {
                $('#card-name').text(data.STUDENT_NAME);
                $('#card-edu-name').text(data.EDU_NAME);
                $('#card-room').text(data.EDU_ROOM_NAME + '호');
                $('#card-period').text(data.START_DATE + ' ~ ' + data.END_DATE);
                
                var dormId = data.DORMITORY_ID;
                if(dormId == null || dormId == 'X') {
                    $('#card-dorm').text('생활관 미배정');
                } else {
                    var dong = dormId.charAt(5);
                    var ho = dormId.substr(6);
                    $('#card-dorm').text(dong + '동 ' + ho + '호');
                }
            });
        },
        error: function() {
            alert('오류가 발생했습니다.');
        }
    });

}

function cancelSelect() {
    $('.student-row').removeClass('table-primary');
    $('#selected-area').hide();
    $('#confirm-btn').hide();
    $('#cancel-btn').hide();
}
