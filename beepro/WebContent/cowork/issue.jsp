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
<script type="text/javascript">
$(document).ready( function() {
    $("#headers").load("common/side_bar.jsp");
    $("#top_bar").load("common/top_bar.jsp");
    $("#footer").load("common/footer.html")
});
</script>
<style type="text/css">
#issue_title { font-size:24px;
               color:#334151;
               font-weight:bold;
               height:60px;
               line-height:50px;
               border-bottom : 2px solid #f2f2f2;
               }
  
#issue_list { width:500px; 
         height:auto;
         margin:0 40px;
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
       <div id="issue_list">
          <div id="issue_title">
                         이슈 관리
          </div>    
          
          <div>
         
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