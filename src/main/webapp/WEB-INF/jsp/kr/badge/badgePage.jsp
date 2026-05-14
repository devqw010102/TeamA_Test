<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/resources/css/badge.css">
<div id="badge-container">

    <!-- 타이틀 -->
    <div id="badge-title">
        🪪 명찰 발급 및 개인 맞춤 안내
    </div>

    <!-- 검색 영역 -->
    <div id="search-area">
        <input type="text" id="birth" class="form-control" placeholder="생년월일 6자리 입력 (예: 970826)" maxlength="6">
        <button type="button" id="search-btn" class="btn btn-primary" onclick="searchByBirth()">
            조회
        </button>
    </div>

    <!-- 결과 테이블 -->
    <table id="result-table" class="table table-hover table-bordered" style="display:none;">
        <thead class="table-dark text-center">
            <tr>
                <th>학생 ID</th>
                <th>이   름</th>
                <th>생년월일</th>
                <th>교육과정</th>
                <th>기숙사</th>
            </tr>
        </thead>
        <tbody id="result-body" class="text-center">
        </tbody>
    </table>

    <!-- 결과 없음 -->
    <div id="no-result">
        조회 결과가 없습니다. 생년월일을 다시 확인해주세요.
    </div>

    <!-- 선택된 교육생 정보 -->
    <div id="selected-area">
        선택된 교육생 : <span id="selected-name" style="color:#003399; font-weight:bold;"></span>
        &nbsp;|&nbsp;
        교육과정 : <span id="selected-edu" style="color:#003399; font-weight:bold;"></span>
    </div>

    <!-- 확인 버튼 -->
    <button type="button" id="confirm-btn" class="btn btn-success" onclick="confirmStudent()">
        ✅ 확인
    </button>

    <!-- 취소 버튼 -->
    <button type="button" id="cancel-btn" class="btn btn-danger" onclick="cancelSelect()">
        ❌ 취소
    </button>

</div>


<script src="/resources/js/badge.js"></script> 