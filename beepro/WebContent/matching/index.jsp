<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>NAME</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/agency.css" rel="stylesheet">
</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">BeePro</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#advantage">장점 info</a>
          </li>
          <li class="nav-item">
            <!-- <a class="nav-link js-scroll-trigger" href="#matching"><span id="match-sub"> 매칭 matching </span></a> -->
            <a class="nav-link js-scroll-trigger" href="#matching" id="match-sub">매칭 matching</a>
            <ul class="sub-nav">
              <li><a class="nav-link" href="project.jsp">by project</a></li>
              <li><a class="nav-link" href="personal.jsp">by personal</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#cowork">협업 cowork</a>
          </li>
          <li class="nav-item" style="margin-top: 10px;">
            <button type="button" class="btn btn-primary btn-sm" onclick="location.href='login.jsp'">
              login
            </button>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  <!-- Header -->
  <header class="masthead" style="background-color: rgba(75,97,207);">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">matching & cowork</div>
        <div class="intro-heading text-uppercase">logo</div>
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
      </div>
    </div>
  </header>

  <!-- Services -->
  <section class="page-section" id="advantage">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Advantages</h2>
          <h3 class="section-subheading text-muted">장점 픽토그램 사용</h3>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">E-Commerce</h4>
          <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Responsive Design</h4>
          <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Web Security</h4>
          <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Portfolio Grid -->
  <section class="bg-light page-section" id="matching">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">matching</h2>
          <h3 class="section-subheading text-muted">프로젝트 & 사람 매칭 연결</h3>
        </div>
      </div>
      

      <div class="row">
        <div class="col-md-6 col-sm-6 portfolio-item" style="padding: 20px;">
          <div class="portfolio-caption">
            <h4>project</h4>
            <img src="https://previews.123rf.com/images/unitonevector/unitonevector1908/unitonevector190800830/128682281-vector-illustration-coworking-large-long-table-people-share-workspace-by-working-together-on-laptop-.jpg" alt="" style="width: 100%;">
            <button class="btn btn-primary btn-lg" style="float: right;" onclick="location.href='project.jsp'">project matching</button>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 portfolio-item" style="padding: 20px;">
          <div class="portfolio-caption">
            <h4>personal</h4>
            <img src="https://media.istockphoto.com/vectors/vector-illustration-coworking-meeting-room-flat-vector-id1148521016" alt="" style="width: 100%;">
            <button class="btn btn-primary btn-lg" style="float: right;" onclick="location.href='personal.jsp'">personal matching</button>
          </div>
        </div>
        
      </div>
    </div>
  </section>

  <!-- About -->
  <section class="page-section" id="cowork">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">cowork</h2>
          <h3 class="section-subheading text-muted">협업 섹션</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12" style="text-align: center;">
          <button class="btn btn-primary btn-xl">cowork</button>
          <img src="img/cowork.jpg" alt="" style="width: 100%;">
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/agency.js"></script>

</body>

</html>
    