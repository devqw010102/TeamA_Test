function selectMenu(url, title) {
    // 오버레이 페이드아웃
    $('#intro-overlay').css('opacity', '0');

    setTimeout(function() {
        // 오버레이 숨기기
        $('#intro-overlay').hide();

        // header, button-area, footer 표시
        $('#header').show();
        $('#button-area').show();
        $('#footer').show();

        // 선택된 버튼 하이라이트
        $('#button-area button').css('background', '#003399');
        if(url == '/badge.do') {
            $('#nav-badge').css('background', '#0044cc');
        } else {
            $('#nav-facility').css('background', '#0044cc');
        }

        // 페이지 로드
        loadPage(url);

    }, 500);
}

function loadPage(url) {
    $('#content-area').load(url);
}

function goMain() {
    $('#content-area').load('/main.do');
}