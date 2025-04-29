<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dao.WeddingPlannerDao"%>
<%@page import="model.WeddingPlanner"%>
<%@page import="dao.PlanDao"%>
<%@page import="model.Plan"%>
<%@include file="c-header.jsp"%>

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
            <%
            String msg =(String)request.getAttribute("msg");
            if(msg!=null){
            	%>
				<h3><%out.print(msg); %></h3>
				<%
            }
            %>
                <div class="form_title">
                    <h2>Book wedding</h2>
                   
                </div>
              <%int pid = Integer.parseInt(request.getParameter("pid")); %>
										<%Plan p = PlanDao.getPlanByPId(pid); %>
										<%WeddingPlanner w = WeddingPlannerDao.getSingleWP(p.getwp_id());%>
                <form action="BookingController" method="get">
                    <div class="form-group col-lg-12">
                 <input type="hidden" name="cusid" value="<%=c.getId()%>">
                    </div>
                    <div class="form-group col-lg-12">
                       <input type="hidden" name="pid" value="<%=p.getPid()%>">
                    </div>
                    
                    <div class="form-group col-lg-12">
                      <h4>Wedding Planner name : <%=w.getName() %></h4>
                    </div>
                    					<div class="col-xl-12">
													<h4>Budget : <%=p.getBudget() %></h4>
												</div>
												<div class="col-xl-12">
													<h4>Style : <%=p.getStyle() %></h4>
												</div>
												<div class="col-xl-12">
													<h4>No of Guest : <%=p.getNoofguest() %></h4>
												</div>
												<div class="col-xl-12">
													<h4>Vanue : <%=p.getVenue() %></h4>
												</div>
												<div class="col-xl-12">
													<h4>Photos Videos : <%=p.getPhotovideos() %></h4>
												</div>
												<div class="col-xl-12">
													<h4>No of Guest Transport : <%=p.getNoofguestfortransport() %></h4>
												</div>
												<!-- <div class="col-xl-12">
													<input type="date" name="date" placeholder="select date">
												</div> -->
												<div class="col-xl-12">
													<button type="submit" name="action" value="booknow"
														class="boxed_btn3">Book</button>
                </form>
            </div>
        </div>
    </section>
</body>
</html>