<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">

<head>
	<jsp:include page="../includes/adminHead.jsp"></jsp:include>
</head>

<body>
    <!-- tap on top start -->
    <div class="tap-top">
        <span class="lnr lnr-chevron-up"></span>
    </div>
    <!-- tap on tap end -->

    <!-- page-wrapper Start -->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
        <!-- Page Header Start-->
        <div class="page-header">
            <div class="header-wrapper m-0">
                <div class="header-logo-wrapper p-0">
                    <div class="logo-wrapper">
                        <a href="index.html">
                            <img class="img-fluid main-logo" src="assets/images/logo/1.png" alt="logo">
                            <img class="img-fluid white-logo" src="assets/images/logo/1-white.png" alt="logo">
                        </a>
                    </div>
                    <div class="toggle-sidebar">
                        <i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
                        <a href="index.html">
                            <img src="assets/images/logo/1.png" class="img-fluid" alt="">
                        </a>
                    </div>
                </div>
                <div class="nav-right col-6 pull-right right-header p-0">
                    <ul class="nav-menus">
                        <li>
                            <span class="header-search">
                                <i class="ri-search-line"></i>
                            </span>
                        </li>
                        <li class="onhover-dropdown">
                            <div class="notification-box">
                                <i class="ri-notification-line"></i>
                                <span class="badge rounded-pill badge-theme">4</span>
                            </div>
                            <ul class="notification-dropdown onhover-show-div">
                                <li>
                                    <i class="ri-notification-line"></i>
                                    <h6 class="f-18 mb-0">Notitications</h6>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-primary"></i>Delivery processing <span
                                            class="pull-right">10 min.</span>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-success"></i>Order Complete<span
                                            class="pull-right">1 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-info"></i>Tickets Generated<span
                                            class="pull-right">3 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-danger"></i>Delivery Complete<span
                                            class="pull-right">6 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <a class="btn btn-primary" href="javascript:void(0)">Check all notification</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <div class="mode">
                                <i class="ri-moon-line"></i>
                            </div>
                        </li>
                        <li class="profile-nav onhover-dropdown pe-0 me-0">
                            <div class="media profile-media">
                                <img class="user-profile rounded-circle" src="assets/images/users/4.jpg" alt="">
                                <div class="user-name-hide media-body">
                                    <span>Emay Walter</span>
                                    <p class="mb-0 font-roboto">Admin<i class="middle ri-arrow-down-s-line"></i></p>
                                </div>
                            </div>
                            <ul class="profile-dropdown onhover-show-div">
                                <li>
                                    <a href="all-users.html">
                                        <i data-feather="users"></i>
                                        <span>Users</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="order-list.html">
                                        <i data-feather="archive"></i>
                                        <span>Orders</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="support-ticket.html">
                                        <i data-feather="phone"></i>
                                        <span>Spports Tickets</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="profile-setting.html">
                                        <i data-feather="settings"></i>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                        href="javascript:void(0)">
                                        <i data-feather="log-out"></i>
                                        <span>Log out</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Page Header Ends-->

        <!-- Page Body Start-->
        <div class="page-body-wrapper">
            <!-- Page Sidebar Start-->
           		<jsp:include page="../includes/adminSidebar.jsp"></jsp:include>
            <!-- Page Sidebar Ends-->

            <!-- Coupon list table starts-->
            <div class="page-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card card-table">
                                <div class="card-body">
                                
                                    <div class="title-header option-title">
                                        <h5>Coupon List</h5>
                                        <div class="right-options">
                                            <ul>
                                                <li>
                                                    <div class="btn btn-solid add-coupon" href="add-new-product.html">Add Coupon</div>
                                                </li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                    <div>
                                        <div class="table-responsive">
                                            <table class="table all-package coupon-list-table table-hover theme-table">
                                                <thead>
                                                    <tr>
                                                        <th>번호(내림차순)</th>
														<th>쿠폰명</th>
														<th>쿠폰가격</th>
														<th>회원등급</th>
														<th>등록일자</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                	<c:forEach items="${list }" var="coupon">
                                                    <tr>
                                                        <td>${coupon.couNo }</td>
                                                        <td>${coupon.couName }</td>
                                                        <td>${coupon.couPrice }</td>
                                                        <td>${coupon.couPrice }</td>
                                                        <td>${coupon.regDate }</td>
                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<jsp:include page="../includes/footer.jsp"></jsp:include>
            </div>
            <!-- footer end-->
        </div>

        <!-- Create Coupon Table start -->
       
        <div class="modal create-coupon">
        	<div class="modal-dialog">
                <div class="modal-content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-sm-12">
                                     <form method="post" class="theme-form theme-form-2 mega-form">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="title-header option-title">
                                                    <h5>쿠폰 등록</h5>
                                                </div>
                                                <div class="tab-content" id="pills-tabContent">
                                                    <div class="tab-pane fade show active" id="pills-home"
                                                        role="tabpanel">
                                                            <div class="card-header-1">
                                                                <h5>General</h5>
                                                            </div>

                                                            <div class="row">
                                                                <div class="mb-4 row align-items-center">
                                                                    <label
                                                                      for="name"  class="col-lg-2 col-md-3 col-form-label form-label-title">쿠폰명</label>
                                                                    <div class="col-md-9 col-lg-10">
                                                                        <input class="form-control" name="couName" id="couName" type="text">
                                                                    </div>
                                                                </div>
 																<div class="mb-4 row align-items-center">
                                                                    <label
                                                                     for="price"   class="col-lg-2 col-md-3 col-form-label form-label-title">쿠폰 가격</label>
                                                                    <div class="col-md-9 col-lg-10">
                                                                        <input class="form-control" name="couPrice" id="couPrice" type="number">
                                                                    </div>
                                                                </div>
                                                                <div class="float-start ps-5 ms-5">
                                                                <div class="cancel-button m-0 float-start ">
																	<button class="btn btn-primary add-coupon btn-lg" >취소</button>
                                                               </div>
																<div class="add-button m-0">
																	<button  class="btn btn-primary add-coupon btn-lg" formaction="${pageContext.request.contextPath }/admin/couponRegister">추가</button>
                                                               </div>
                                                               </div>
                                                            </div>
                                                       
                                                    </div>
                                                    </div>
                                                </div>
                                            </div>
                                             </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    
	

    <!-- latest js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- feather icon js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/icons/feather-icon/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets2/js/icons/feather-icon/feather-icon.js"></script>

    <!-- scrollbar simplebar js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/scrollbar/simplebar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets2/js/scrollbar/custom.js"></script>

    <!-- customizer js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/customizer.js"></script>

    <!-- Sidebar js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/config.js"></script>

    <!-- Plugins JS -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/sidebar-menu.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets2/js/notify/bootstrap-notify.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets2/js/notify/index.js"></script>

    <!-- Data table js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets2/js/custom-data-table.js"></script>

    <!-- all checkbox select js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/checkbox-all-check.js"></script>

    <!-- sidebar effect -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/sidebareffect.js"></script>

    <!-- Theme js -->
    <script src="${pageContext.request.contextPath}/resources/assets2/js/script.js"></script>
    <script>
    $(function(){
    	$(".add-coupon").click(function(){
    		$(".create-coupon").modal("show");
    		$(".create-coupon").find(":text").focus();
    	})
    	
    	$(".cancel-button").on("click", "button", function(event){
    		$(this).find(":text").text("");
    		$(this).modal("hide");
    	});
    })
    
    </script>
</body>

</html>