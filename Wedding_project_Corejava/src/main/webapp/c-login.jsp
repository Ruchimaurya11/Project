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
                    <h2>Reservation Form</h2>
                   
                </div>
                <form class="reservation_form row" action="CustomerController" method="post" id="contactForm" novalidate="novalidate">
                   
                    <div class="form-group col-lg-12">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email address">
                    </div>
                    
                    <div class="form-group col-lg-12">
                        <input type="text" class="form-control" id="password" name="password" placeholder="password">
                    </div>
                   
                    <div class="form-group col-lg-12">
                        <button class="btn submit_btn" name="action" type="submit" value="login">Login</button>
                    </div>
                </form>
                  <div class="form_heading text-center">
                                            <h3><a href="c-forgot-password.jsp">Forgot Password?</a></h3>
                                        </div>
            </div>
        </div>
    </section>
</body>
</html>