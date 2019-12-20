<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style>
option { border-right:1px solid #ccc; } 

textarea { outline:3px solid rgb(221,226,236);
           border:0;
         }

textarea:focus { outline:3px solid rgba(75,97,207);
                 border:0;
               }
         
input {outline:3px solid rgb(221,226,236);
       border:0;
       height:30px;}

input:focus { outline:3px solid rgba(75,97,207);
              border:0;
              height:30px; }

select:focus { outline:3px solid rgba(75,97,207);
                border:0; }

select {width: 300px;
        padding: .5em .5em;
        outline:3px solid rgb(221,226,236);
        font-size:14px;
        border:0;
}

#box {float:left; 
      width:350px; 
      height:150px; 
      }
      
#box2 {float:left; 
       width:180px; 
       height:150px; 
       margin-left:52px; }

#title { font-size:14px; color:black; font-weight:bold;}

button a { text-decoration:none; 
           color:white;}
           
a:hover { text-decoration:none; 
                 color:white; }

</style>
<script type="text/javascript">
document.getElementById('currentDatetime').value= new Date().toISOString().slice(0, 16);
</script>
<!-- 탑 메뉴 -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- 이슈만들기 모달창 -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="margin-left:850px;"
     onclick="location.href='../issue?command=issueWrite'">
      <b>+&nbsp;&nbsp;이슈 생성하기</b>
  </button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:900px; height:730px; margin-left:-200px;">
      <div class="modal-header" style="background-color:rgba(75,97,207);">
        <h5 class="modal-title" id="exampleModalLabel" style="color:white;">
           <b>이슈 생성하기</b>
         </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" style="color:white;">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
        <form action="issue" method="post">
          
          <div style="margin-top:10px;">
          <p id="title">이슈 이름<span style="color:red;"> *</span></p>
            <input type="text" name="i_title" size="99">
          </div>
            
            <div id="box">
                        <p id="title" style="margin-top:35px;">프로젝트 명<span style="color:red;"> *</span></p>
                          <select style="width:350px;">
                           <option value="null">대상 선택</option>
                           
                           <!-- 생성된 프로젝트들을 목록으로 자동 추가되는 기능 구현하는 부분입니다. -->
                           
                        </select>
            </div>
                    
            <div id="box2">
                          <p id="title" style="margin-top:35px;">이슈 타입<span style="color:red;"> *</span></p>
                          <select style="width:180px;">
                           <option value="null">대상 선택</option>
                           <option value="버그" style="color:#ff5792; font-weight:bold;">버그</option>
                           <option value="개선" style="color:#4b61cf; font-weight:bold;">개선</option>
                           <option value="요구사항" style="color:#4abbdb; font-weight:bold;">요구사항</option>
                        </select>
                        
            </div>    

            <div id="box2">
                <p id="title" style="margin-top:35px;">중요도<span style="color:red;"> *</span></p>
                 <select style="width:180px;">
                 <option value="null">대상 선택</option>
                 <option value="심각" style="color:#ff5792; font-weight:bold;">심각</option>
                 <option value="높음" style="color:#fed136; font-weight:bold;">높음</option>
                 <option value="보통" style="color:#4b61cf; font-weight:bold;">보통</option>
                 <option value="낮음" style="color:#4abbdb; font-weight:bold;">낮음</option>
                 </select>
            </div>
            
              <p id="title" style="margin-right:300px; margin-top:-20px;">내용</p>
              <textarea rows="7" cols="99"></textarea>
              
              <div id="box">
               <p id="title" style="margin-top:20px;">작성자</p>
               <input type="text" name="writer" size="45">
              </div>
              
              <div id="box2" style="margin-left:80px;">
                <p id="title" style="margin-top:20px;">기간</p>
                <input type="datetime-local" id='currentDatetime'/>
              </div>
        </form>
      </div>
      
      <div class="modal-footer" style="margin-top:-30px; background-color:#f2f2f2;">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><b>취  소</b></button>
        <button type="submit" class="btn btn-primary" onclick=""><b>작  성</b></button>
      </div>
    </div>
  </div>
</div>
        <!-- 이슈만들기 모달창 끝 -->
        
		<!-- 탑 메뉴 끝-->
		
          <!-- Sidebar Toggle (Topbar) -->
          
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">
            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">사용자 이름</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
			                  내 정보
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
			                  로그아웃
                </a>
              </div>
            </li>

          </ul>

        </nav>
		<!-- 탑 메뉴 끝 -->