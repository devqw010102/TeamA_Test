<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>시설 및 교통 정보 안내</title>
    <script src="https://code.jquery.com/jquery-4.0.0.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50">

<div class="h-screen flex flex-col overflow-hidden">

    <%@ include file="/WEB-INF/jsp/kr/common/header.jsp" %>

    <%-- 안내 배너 --%>
    <div class="bg-teal-600 text-white px-10 py-3 flex items-center gap-3 shrink-0">
        <p class="text-base font-medium">시설 및 교통 정보 안내 &nbsp;·&nbsp; 원하시는 항목을 선택해 주세요</p>
    </div>

    <%-- 서브메뉴 버튼 영역 --%>
    <div class="flex flex-col px-12 py-6 gap-4 shrink-0">

        <%-- 구내식당 --%>
        <button type="button" onclick="location.href='/facility/cafeteria.do'"
                class="bg-white border-2 border-slate-200 rounded-2xl px-10 py-6
                       flex items-center gap-8 hover:border-teal-400 hover:shadow-xl w-full text-left">
            <div class="flex-1">
                <h2 class="text-2xl font-extrabold text-slate-900">🍽️ 구내식당</h2>
                <p class="text-slate-500 mt-1">메뉴 및 위치 안내</p>
            </div>
        </button>

        <%-- 흡연장소 --%>
        <button type="button" onclick="location.href='/facility/smoking.do'"
                class="bg-white border-2 border-slate-200 rounded-2xl px-10 py-6
                       flex items-center gap-8 hover:border-teal-400 hover:shadow-xl w-full text-left">
            <div class="flex-1">
                <h2 class="text-2xl font-extrabold text-slate-900">🚬 흡연장소</h2>
                <p class="text-slate-500 mt-1">흡연 구역 위치 안내</p>
            </div>
        </button>

        <%-- 강의실 안내 --%>
        <button type="button" onclick="location.href='/facility/classroom.do'"
                class="bg-white border-2 border-slate-200 rounded-2xl px-10 py-6
                       flex items-center gap-8 hover:border-teal-400 hover:shadow-xl w-full text-left">
            <div class="flex-1">
                <h2 class="text-2xl font-extrabold text-slate-900">🏫 강의실 안내</h2>
                <p class="text-slate-500 mt-1">교육 과정별 강의실 배치도</p>
            </div>
        </button>

        <%-- 교통정보 --%>
        <button type="button" onclick="location.href='/facility/transport.do'"
                class="bg-white border-2 border-slate-200 rounded-2xl px-10 py-6
                       flex items-center gap-8 hover:border-teal-400 hover:shadow-xl w-full text-left">
            <div class="flex-1">
                <h2 class="text-2xl font-extrabold text-slate-900">🚆 교통정보</h2>
                <p class="text-slate-500 mt-1">KTX · 시외버스 이동 안내</p>
            </div>
        </button>

    </div>

    <%-- 메인으로 돌아가기 --%>
    <div class="px-12">
        <button type="button" onclick="location.href='/main.do'"
                class="bg-slate-200 hover:bg-slate-300 text-slate-700 font-bold px-8 py-3 rounded-xl">
            ← 메인으로
        </button>
    </div>

    <%@ include file="/WEB-INF/jsp/kr/common/footer.jsp" %>

</div>

</body>
</html>