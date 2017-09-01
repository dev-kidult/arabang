<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Include Required Prerequisites -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript"
	src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />
<!-- Include Date Range Picker -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<script src="/searchBang/js/user/mainPage.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" /> -->
<link rel="stylesheet" type="text/css" href="/searchBang/css/user/searchNormalize.css" />
<!-- css -->
<link rel="stylesheet" href="/searchBang/css/user/search.css">
<style>
#daterange {
	border: 1px solid #fff;
	font-size: 20px;
	width: 250px;
	height: 30px;
}

#people {
	border: 1px solid #fff;
	font-size: 20px;
	width: 100px;
	height: 30px;
}
</style>
<script type="text/javascript">
	function goSearch() {
		location.href = "searchView.bang?address="+$('#address').val()+"&date="+$('#daterange').val()+"&people="+$('#people').val();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div id="searchDiv">
			<table id="searchTable">
				<thead>
					<tr>
						<th class="searchTh">위치</th>
						<th class="searchTh">날짜</th>
						<th class="searchTh">인원</th>
						<th class="searchTh"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<!-- 위치 -->
						<td><input type="text" class="serachTd" id="address" maxlength="40" size="30"></td>
						<!-- 날짜 -->
						<td><input type="text" name="daterange" class="serachTd"
							id="daterange" /> <script type="text/javascript"
								id="DateRangePicker">
								$(function() {
									$('input[name="daterange"]')
											.daterangepicker(
													{
														weekStart : 1,
														"autoApply" : true,
														"opens" : "center"
													},
													function(start, end, label) {
														console
																.log("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')");
													});
								});
							</script></td>
						<!-- 인원 -->
						<td><select class="serachTd" id='people'>
								<option value="1">1 명</option>
								<option value="2">2 명</option>
								<option value="3">3 명</option>
								<option value="4">4 명</option>
								<option value="5">5 명</option>
								<option value="6">6 명</option>
								<option value="7">7 명</option>
						</select></td>
						<td>
							<button class="serachTd" id=searchBt onclick="goSearch()">검색</button>
						</td>
			</table>
		</div>

	</div>
</body>
</html>