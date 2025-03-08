<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="row justify-content-center " style="margin-top:100px">
                            <div class="col-xl-7 col-lg-8">
                                <div class="popup_box  ">
                                  <%
                                    String msg = (String)request.getAttribute("msg");
                                    if(msg!=null){
                                    	%>
                                    	 <div class="form_heading text-center">
                                            <h5><%out.print(msg); %></h5>
                                        </div>
                                    	<%
                                    }
                                    
                                    %>
                                    <div class="popup_inner">
                                        <div class="form_heading text-center">
                                            <h3>Customer</h3>
                                        </div>
                                        <form action="CustomerController" method="post">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <input type="email" name="email" placeholder="Email">
                                                </div>
                                                <div class="col-xl-12">
                                                    <button type="submit" name="action" value="getotp" class="boxed_btn3">Get OTP</button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="form_heading text-center">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

</body>
</html>