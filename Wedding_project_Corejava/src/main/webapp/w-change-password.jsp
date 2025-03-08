<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="wp-header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <div class="form_heading text-center">
                                            <h3>Change Password</h3>
                                        </div>
                                        <form action="Wp_Controller" method="post">
                                            <div class="row" style="margin-top:100px">
                                            	    <input type="hidden" name="email" value="<%=w.getEmail()%>">
                                                <div class="col-xl-12">
                                                    <input type="password" name="op" placeholder="Old Password">
                                                </div>
                                                <div class="col-xl-12">
                                                    <input type="password" name="np" placeholder="New Password">
                                                </div>
                                                 <div class="col-xl-12">
                                                    <input type="password" name="cnp" placeholder="Confirm New Password">
                                                </div>
                                                <div class="col-xl-12">
                                                    <button type="submit" name="action" value="cp" class="boxed_btn3">Change Password</button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="form_heading text-center">
                                            <h3><a href="w-forgot-password.jsp">Forgot Password?</a></h3>
                                        </div>
</body>
</html>