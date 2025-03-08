<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="c-header.jsp"%>
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
                                        <form action="CustomerController" method="post">
                                            <div class="row">
                                            	    <input type="hidden" name="email" value="<%=c.getEmail()%>">
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
                                            <h3><a href="c-forgot-password.jsp">Forgot Password?</a></h3>
                                        </div>

</body>
</html>