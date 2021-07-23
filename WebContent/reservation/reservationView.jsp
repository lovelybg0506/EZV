<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationView</title>
<style>
.portfolio-filter{
    margin: 10px 20px;
    padding: 0;
}
h2{
	color: #A5732A;
}
#tdh{
	color: #A5732A;
	back-ground:#EFEFEF;
} 
</style>
  <body>
   <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">영화 예매</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   
    <section id="portfolio">
   	<div class="container" >
        <ul class="portfolio-filter">
        </ul>
        <div class="col-md-9 col pl-md-5 pt-4">
          <form action="reservationProc.jsp" class="pt-4" style="width:560px; margin-left:250px;">
            <div class="form-group">
              <label>상영 장소</label>
                <select name="area" class="form-control">
                	<option value="노원" selected>노원</option>
                </select>
            </div>
            <div class="form-group" >
              <label>상영 영화</label>
                <select name="mno" class="form-control">
	                <option value=1 selected>어벤져스: 엔드게임</option>
	                <option value=2>발신제한</option>
	                <option value=3>다빈치 코드</option>
	                <option value=4>지구를 지켜라!</option>
	                <option value=5>해리포터와 마법사의 돌</option>
	                <option value=6>극한직업</option>
	                <option value=7>빛나는 순간</option>
	                <option value=8>원령공주</option>
	                <option value=9>괴물</option>
	                <option value=10>시계태엽 오렌지</option>
	                <option value=11>너의 이름은</option>
	                <option value=12>블랙 위도우</option>
                </select>
            </div>
            <div class="form-group" >
              <label>상영 시간</label>
              <select name="rsdate" class="form-control" style="margin-bottom:5px;">
	                <option value="7/10 토">7/10 토</option>
	                <option value="7/11 일">7/11 일</option>
	                <option value="7/12 월">7/12 월</option>
	                <option value="7/13 화">7/13 화</option>
	                <option value="7/14 수">7/14 수</option>
	                <option value="7/15 목">7/15 목</option>
	                <option value="7/16 금">7/16 금</option>
              </select>
              <select name="rstime" class="form-control">
	              	<option value="08:40">08:40</option>
	                <option value="10:30">10:30</option>
	                <option value="13:20">13:20</option>
	                <option value="15:40">15:40</option>
	                <option value="19:00">19:00</option>
	                <option value="21:20">21:20</option>
	                <option value="23:50">23:50</option>
              </select>
            </div>
            <div class="form-group">
              <label>상영관</label>
              <select name="place" class="form-control">
                <option value="4F 1관" selected>4F 1관</option>
                <option value="7F 2관">7F 2관</option>
              </select>
            </div>
            <input type="submit" value="인원/좌석 선택" id="tdh" class="float-right">
          </form>
      </div>
    </div>
    </section>
    <%@ include file="../main/footer.jsp" %>
  </body>
</html>
