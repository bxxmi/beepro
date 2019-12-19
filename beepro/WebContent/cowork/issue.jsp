<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready( function() {
    $("#headers").load("common/side_bar.jsp");
    $("#top_bar").load("common/top_bar.jsp");
    $("#footer").load("common/footer.html")
});

jQuery(function($) {
	$(".container-fluid").css("display", "none");
	$(".container-fluid").fadeIn(500);
	$("a.transition").click(function(event){
	event.preventDefault();
	linkLocation = this.href;
	$(".container-fluid").fadeOut(500, redirectPage);
	});
	function redirectPage() {
	window.location = linkLocation;
	}
	});

$(document).ready(function() {
	$('[data-toggle="tooltip"]').tooltip();
});
</script>
<style type="text/css">
.container-fluid {
    animation: fadein 500ms ease-out;
    -moz-animation: fadein 2000ms ease-out; /* Firefox */
    -webkit-animation: fadein 2000ms ease-out; /* Safari and  Chrome */
    -o-animation: fadein 2000ms ease-out; /* Opera */
}


@-webkit-keyframes fadein { /* Safari and Chrome */
    from {opacity:0;}
    to {opacity:1;}
}

.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	margin: 30px auto;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-wrapper .btn {
	float: right;
	color: #333;
	background-color: #fff;
	border-radius: 3px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-wrapper .btn:hover {
	color: #333;
	background: #f2f2f2;
}

.table-wrapper .btn.btn-primary {
	color: #fff;
	background: #03A9F4;
}

.table-wrapper .btn.btn-primary:hover {
	background: #03a3e7;
}

.table-title .btn {
	font-size: 13px;
	border: none;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

.table-title {
	color: #fff;
	background: #4b5366;
	padding: 16px 25px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.show-entries select.form-control {
	width: 80px;
	margin: 0 5px;
}

.table-filter .filter-group {
	float: right;
	margin-left: 15px;
}

.table-filter input, .table-filter select {
	height: 34px;
	border-radius: 3px;
	border-color: #ddd;
	box-shadow: none;
}

.table-filter {
	padding: 5px 0 15px;
	border-bottom: 1px solid #e9e9e9;
	margin-bottom: 5px;
}

.table-filter .btn {
	height: 34px;
}

.table-filter label {
	font-weight: normal;
	margin-left: 10px;
}

.table-filter select, .table-filter input {
	display: inline-block;
	margin-left: 5px;
}

.table-filter input {
	width: 200px;
	display: inline-block;
}

.filter-group select.form-control {
	width: 110px;
}

.filter-icon {
	float: right;
	margin-top: 7px;
}

.filter-icon i {
	font-size: 18px;
	opacity: 0.7;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 80px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.view {
	width: 30px;
	height: 30px;
	color: #2196F3;
	border: 2px solid;
	border-radius: 30px;
	text-align: center;
}

table.table td a.view i {
	font-size: 22px;
	margin: 2px 0 0 1px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.status {
	font-size: 30px;
	margin: 2px 2px 0 0;
	display: inline-block;
	vertical-align: middle;
	line-height: 10px;
}

.text-success {
	color: #10c469;
}

.text-info {
	color: #62c9e8;
}

.text-warning {
	color: #FFC107;
}

.text-danger {
	color: #ff5b5b;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
</style>
<title>이슈 관리</title>
</head>
<body>
    <div id="wrapper">
    <!-- 상단 메뉴 바 -->
    <div id="headers"></div>
    
    <!-- 내용이 들어갈 구역을 정의하는 div -->
    <div id="content-wrapper" class="d-flex flex-column">
    
    <!-- 메인 내용이 들어갈 구역을 정의하는 div -->
    <div id="content">
    
     <!-- 왼쪽 메뉴 바 --> 
    <div id="top_bar"></div>
    
    <!-- 본격적으로 내용이 담기는 div -->
    <div class="container-fluid" >
      <div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-4">
						<h2>
						  이슈 목록
						</h2>
					</div>
					<div class="col-sm-8">
						<a href="d" class="btn btn-primary"><i class="material-icons">&#xE863;</i>
							<span>Refresh List</span></a> <a href="#" class="btn btn-info"><i
							class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
					</div>
				</div>
			</div>
			<div class="table-filter">
				<div class="row">
					<div class="col-sm-3">
						<div class="show-entries">
							<span>Show</span> <select class="form-control">
								<option>5</option>
								<option>10</option>
								<option>15</option>
								<option>20</option>
							</select> <span>entries</span>
						</div>
					</div>
					<div class="col-sm-9">
						<button type="button" class="btn btn-primary">
							<i class="fa fa-search"></i>
						</button>
						<div class="filter-group">
							<label>Name</label> <input type="text" class="form-control">
						</div>
						<div class="filter-group">
							<label>Location</label> <select class="form-control">
								<option>All</option>
								<option>Berlin</option>
								<option>London</option>
								<option>Madrid</option>
								<option>New York</option>
								<option>Paris</option>
							</select>
						</div>
						<div class="filter-group">
							<label>Status</label> <select class="form-control">
								<option>Any</option>
								<option>Delivered</option>
								<option>Shipped</option>
								<option>Pending</option>
								<option>Cancelled</option>
							</select>
						</div>
						<span class="filter-icon"><i class="fa fa-filter"></i></span>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>NO</th>
						<th>작성자</th>
						<th>작성 날짜</th>
						<th>중요도</th>
						<th>Net Amount</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="#">Michael Holz</a></td>
						<td>London</td>
						<td><span class="status text-success">&bull;</span> Delivered</td>
						<td>$254</td>
						<td><a href="#" class="view" title="View Details"
							data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="#">Paula Wilson</a></td>
						<td>Madrid</td>
						<td><span class="status text-info">&bull;</span> Shipped</td>
						<td>$1,260</td>
						<td><a href="#" class="view" title="View Details"
							data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="#">Antonio Moreno</a></td>
						<td>Berlin</td>
						<td><span class="status text-danger">&bull;</span> Cancelled</td>
						<td>$350</td>
						<td><a href="#" class="view" title="View Details"
							data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="#">Mary Saveley</a></td>
						<td>New York</td>
						<td><span class="status text-warning">&bull;</span> Pending</td>
						<td>$1,572</td>
						<td><a href="#" class="view" title="View Details"
							data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="#">Martin Sommer</a></td>
						<td>Paris</td>
						<td><span class="status text-success">&bull;</span> Delivered</td>
						<td>$580</td>
						<td><a href="#" class="view" title="View Details"
							data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
					</tr>
				</tbody>
			</table>
			<div class="clearfix">
				<div class="hint-text">
					Showing <b>5</b> out of <b>25</b> entries
				</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item active"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">6</a></li>
					<li class="page-item"><a href="#" class="page-link">7</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	  </div>
    </div>
    




   

    <!-- 푸터 -->
    <div id="footer"></div>


  </div>
  
  <!-- 푸터 -->
  <div id="footer"></div>
  
 </div>
</div>
</body>
</html>