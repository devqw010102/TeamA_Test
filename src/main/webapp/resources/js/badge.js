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
    console.log('SELECTED :: ' + selected.STUDENT_NAME);
    alert(selected.STUDENT_NAME + "선택됨")
}

function cancelSelect() {
    $('.student-row').removeClass('table-primary');
    $('#selected-area').hide();
    $('#confirm-btn').hide();
    $('#cancel-btn').hide();
}
