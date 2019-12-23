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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- datepicker -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#headers").load("common/side_bar.jsp");
		$("#top_bar").load("common/top_bar.jsp");
		$("#footer").load("common/footer.html")
	});

</script>
<script>
$( function() {
    var dateFormat = "mm/dd/yy",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 1
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 1
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
	
</script>   
<title>업무 추가</title>
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
				<div class="container-fluid">
					<div class="container">
							<h5><b>새 업무</b></h5>
							<hr>
							<form action="../todo/taskform" method="post">
							<input type="hidden" name="command" value="taskform">
							<div class="row">
							  <div class="form-group col-lg-8">
							    <label for="title">업무 명</label>
							    <input type="text" class="form-control" id="title" name="title">
							  </div>
							  <div class="form-group col-lg-4">
							    <label for="manager">담당자</label>
							    <input type="text" class="form-control" id="manager" name="manager" value="매니저 or 아이디" readonly>
							  </div>
							</div>
							  <div class="form-group">
							    <label for="content">업무내용</label>
							    <textarea class="form-control" id="content" name="content" rows="3"></textarea>
							  </div>
							<div class="row">
							  <div class="form-group col-lg-4">
							    <label for="exampleFormControlSelect1">중요도</label>
							    <select class="form-control" id="exampleFormControlSelect1">
							      <option>1</option>
							      <option>2</option>
							      <option>3</option>
							      <option>4</option>
							      <option>5</option>
							    </select>
							  </div>
							  <div class="form-group col-lg-8">
							  	<div class="row">
							  	<!-- https://jqueryui.com/datepicker/#date-range -->
								  	<div class="col-6">
		                  				<label for="from">시작날짜</label>
										<input type="text" class="form-control" id="from" name="from">
								  	</div>
								  	<div class="col-6">
										<label for="to">마감날짜</label>
										<input type="text" class="form-control" id="to" name="to">
								  	</div>
							  	</div>
							  	
                  			  </div>
							</div>
							
						    <button class="btn btn-primary" style="float:right;">작성</button>
							</form>
					</div>
				</div>
			</div>
			<!-- 푸터 -->
			<div id="footer"></div>
		</div>
	</div>
<script type="text/javascript">
   (function($) {
      function floatLabel(inputType) {
         $(inputType).each(function() {
            var $this = $(this);
            // on focus add cladd active to label
            $this.focus(function() {
               $this.next().addClass("active");
            });
            //on blur check field and remove class if needed
            $this.blur(function() {
               if ($this.val() === '' || $this.val() === 'blank') {
                  $this.next().removeClass();
               }
            });
         });
      }
      
      $(document).ready(function(){
         $('#country').tagEditor({placeholder : '언어 및 프로그램 능력을 작성하세요'});
      });
      // just add a class of "floatLabel to the input field!"
      floatLabel(".floatLabel");
   })(jQuery);
</script>

</body>
</html>