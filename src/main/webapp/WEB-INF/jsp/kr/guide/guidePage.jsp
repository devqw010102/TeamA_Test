<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
    #guide-container {
        max-width: 900px;
        margin: 30px auto;
        padding: 20px;
    }
    #guide-title {
        text-align: center;
        font-size: 2rem;
        font-weight: bold;
        color: #003399;
        margin-bottom: 30px;
    }
    .info-label {
        color: #666;
        font-size: 1rem;
    }
    .info-value {
        font-size: 1.5rem;
        font-weight: bold;
        color: #003399;
    }
    #back-btn {
        width: 100%;
        font-size: 1.5rem;
        padding: 20px;
        border-radius: 10px;
        margin-top: 20px;
    }
</style>

<div id="guide-container">

    <div id="guide-title">
        🪪 <span id="card-name"></span> 교육생 안내
    </div>

    <!-- 교육 정보 -->
    <div class="card border-primary mb-3">
        <div class="card-header bg-primary text-white fs-5">
            📚 교육 정보
        </div>
        <div class="card-body">
            <div class="row mt-2">
                <div class="col-6">
                    <div class="info-label">교육과정</div>
                    <div class="info-value" id="card-edu-name"></div>
                </div>
                <div class="col-6">
                    <div class="info-label">교육기간</div>
                    <div class="info-value" id="card-period"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- 강의실 안내 -->
    <div class="card border-success mb-3">
        <div class="card-header bg-success text-white fs-5">
            🏫 강의실 안내
        </div>
        <div class="card-body">
            <div class="row mt-2">
                <div class="col-6">
                    <div class="info-label">강의실</div>
                    <div class="info-value" id="card-room"></div>
                </div>
                <div class="col-6">
                    <div class="info-label">층</div>
                    <div class="info-value" id="card-floor"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- 생활관 안내 -->
    <div class="card border-warning mb-3">
        <div class="card-header bg-warning fs-5">
            🏠 생활관 안내
        </div>
        <div class="card-body">
            <div class="mt-2">
                <div class="info-label">배정 호실</div>
                <div class="info-value" id="card-dorm"></div>
            </div>
        </div>
    </div>

    <!-- 처음으로 버튼 -->
    <button type="button" id="back-btn" class="btn btn-danger" onclick="goMain()">
        🏠 처음으로
    </button>

</div>

<script>
	function goMain() {
		$('#content-area').empty();
	}
</script>