<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 좌석 배치</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/hiphop5782/js@0.0.13/cinema/hacademy-cinema.css">
<style>
* {
	box-sizing: border-box;
}

.float-box>div {
	float: left;
	width: 50%;
}

.float-box::after {
	content: "";
	display: block;
	clear: both;
}

.float-box>.result {
	padding: 0.5rem;
}
</style>
<script src="https://cdn.jsdelivr.net/gh/hiphop5782/js@0.0.13/cinema/hacademy-cinema.js"></script>
<script>
	window.addEventListener("load", function() {
		var cinema = new Hacademy.Reservation("#cinema");
		cinema.addChangeListener(function(seat) {
			print(this);
		});
		print(cinema);
		function print(app) {
			document.querySelector(".result").textContent = app
					.getQueryString();
		}
	});
</script>
</head>
<body>
	<div class="float-box">
		<div>
			<form action="example.html" method="get">
				<div id="cinema" class="cinema-wrap" data-name="seat">
					<div class="cinema-seat-area" data-rowsize="5" data-colsize="5"
						data-mode="client" data-fill="auto" data-seatno="visible"></div>
				</div>

				<input type="submit" value="선택">
			</form>
		</div>

		<h2 align="center">전송되는 데이터 형태</h2>
		<div class="result"></div>
	</div>
</body>
</html>