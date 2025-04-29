<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="c-header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row justify-content-center">
                            <div class="col-xl-7 col-lg-8">
                                <div class="popup_box ">
                                    <div class="popup_inner">
                                        <div class="form_heading text-center">
                                            <h3>Customer</h3>
                                        </div>
                                        <form action="CustomerController" method="post">
                                            <div class="row">
                                            <div class="col-xl-12">
                                                    <input type="hidden" name="id" value="<%=c.getId()%>">
                                                </div>
                                                <div class="col-xl-12">
                                                    <input type="text" name="name" value="<%=c.getName()%>">
                                                </div>
                                                 <div class="col-xl-12">
                                                    <input type="text" name="contact" value="<%=c.getContact()%>">
                                                </div>
                                                 <div class="col-xl-12">
                                                    <input type="text" name="address" value="<%=c.getAddress()%>">
                                                </div>
                                                <div class="col-xl-12">
                                                    <input type="text" name="email" value="<%=c.getEmail()%>">
                                                </div>
                                                <div class="col-xl-12">
                                                    <button type="submit" name="action" value="update" class="boxed_btn3">Update</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

</body>
</html>