<%@page import="dao.PlanDao"%>
<%@page import="model.Plan"%>
<%@page import="java.util.List"%>
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
<div class="container">
     <table class="table" style="margin-top:200px">
     
		<thead>
			<tr>
				<th scope="col">Budget</th>
				<th scope="col">Style</th>
				<th scope="col">No of Guest</th>
				<th scope="col">Venue</th>
				<th scope="col">Photo Videos</th>
				<th scope="col">No Of Guest Transport</th>
				<th scope="col">Edit</th>
				<th scope="col">Delete</th>
			</tr>
			</thead>
			<tbody>
			
			<%List<Plan>list=PlanDao.getPlanByWPId(w.getId()); %>
		<%for(Plan p:list){ %>
			<tr>
				<th scope="row"><%=p.getBudget() %></th>
				<td><%=p.getStyle() %></td>
				<td><%=p.getNoofguest() %></td>
				<td><%=p.getVenue() %></td>
				<td><%=p.getPhotovideos() %></td>
				<td><%=p.getNoofguestfortransport() %></td>
				<td><a href="w-single-plan.jsp?pid=<%=p.getPid()%>">Edit</a></td>
				<td><a href="w-delete-plan.jsp?pid=<%=p.getPid()%>">Delete</a></td>
			</tr>
		<%} %>
			
			
			
			</tbody>
	

</table>


</div>

</body>
</html>