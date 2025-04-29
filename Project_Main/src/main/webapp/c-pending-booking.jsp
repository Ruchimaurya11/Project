<%@page import="dao.WeddingPlannerDao"%>
<%@page import="model.WeddingPlanner"%>
<%@page import="dao.PlanDao"%>
<%@page import="model.Plan"%>
<%@page import="dao.BookingDao"%>
<%@page import="model.Booking"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@include file="c-header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">
			<%List<Booking> list = BookingDao.getPendingBookingByCusId(c.getId()); %>
			<%for(Booking b:list){%>
			<%Plan p = PlanDao.getPlanByPId(b.getPid()); %>
			<%WeddingPlanner w = WeddingPlannerDao.getSingleWP(p.getwp_id()); %>
			<div class="card" style="width: 18rem;">
				<div class="card-header"><%=w.getName()%></div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Budget : <%=p.getBudget() %></li>
					<li class="list-group-item">Style : <%=p.getStyle() %></li>
					<li class="list-group-item">No of Guest : <%=p.getNoofguest() %></li>
					<li class="list-group-item">Venue : <%=p.getVenue() %></li>
					<li class="list-group-item">Photos Videos : <%=p.getPhotovideos() %></li>
					<li class="list-group-item">No of Guest Tra: <%=p.getNoofguestfortransport() %></li>
					<li class="list-group-item">Status: <%=b.getBooking_status() %></li>
				</ul>
			</div>
			<%
			}
			%>

		</div>


	</div>
</body>
</html>