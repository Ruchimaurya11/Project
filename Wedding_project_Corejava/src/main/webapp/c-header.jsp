<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="model.Customer"%>   
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="img/favicon.png" type="image/png">
        <title>Honey Wedding Multi</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
        
        <script>
        
        </script>
</head>
<body>
   <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
        <%
    
    response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
    
	
	 
	Customer c = null;
    if(session.getAttribute("data")!=null){
    	c = (Customer)session.getAttribute("data");
    }
    else{
    	response.sendRedirect("w-login.jsp");
    }
    
	
    
    %>
     <header class="header_area">
            <div class="main_menu">
            	<nav class="navbar navbar-expand-lg navbar-light">
					<div class="container box_1620">
						<!-- Brand and toggle get grouped for better mobile display -->
						<a class="navbar-brand logo_h" href="index.jsp"><img src="img/logo.png" alt=""></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						
							<ul class="nav navbar-nav menu_nav ml-auto">
								<li class="nav-item active"><a class="nav-link" href="c-home.jsp">Home</a></li> 
								<li class="nav-item"><a class="nav-link" href="#">Our Story  </a></li>
								<li class="nav-item"><a class="nav-link" href="#">Accomodation</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Gallery</a></li>
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Plans</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="c-view-plan.jsp">View Plan</a></li>
										
										
									</ul>
								</li> 
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="c-profile.jsp">Profile</a></li>
										<li class="nav-item"><a class="nav-link" href="c-change-password.jsp">Change Password</a></li>
										<li class="nav-item"><a class="nav-link" href="c-logout.jsp">Logout</a></li>
									</ul>
								</li> 
							
							</ul>
							</nav>
							 <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
						</div> 
					</div>
            	
            </div>
        </header>


</body>
</html>