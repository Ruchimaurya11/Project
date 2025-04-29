<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <section class="reservation_form_area p_120">
        <div class="container">
            <div class="res_form_inner">
                <div class="form_title">
                    <h2>Wedding Planner</h2>
                   
                </div>
                <form action="Wp_Controller" method="post">
                    <div class="form-group col-lg-12">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                    </div>
                    <div class="form-group col-lg-12">
                        <input type="text" class="form-control" id="address" name="contact" placeholder="Contact">
                    </div>
                    
                    <div class="form-group col-lg-12">
                        <input type="text" class="form-control" id="contact" name="address" placeholder="Address">
                    </div>
                     <div class="form-group col-lg-12">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email ">
                    </div>
                    
                    <div class="form-group col-lg-12">
                        <input type="text" class="form-control" id="password" name="password" placeholder="password">
                    </div>
                   
                    <div class="form-group col-lg-12">
                        <button class="btn submit_btn" name="action" type="submit" value="register">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>