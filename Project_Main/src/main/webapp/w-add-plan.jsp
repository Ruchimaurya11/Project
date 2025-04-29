<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="wp-header.jsp" %>
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
        				<h2>Plan Add</h2>
        			</div>
        			<form class="reservation_form row" action="PlanController" method="post" id="contactForm" novalidate="novalidate">
						
						<div class="form-group col-lg-12" >
						<div class="col-xl-12">
								<input type="hidden" name="id" value="<%=w.getId()%>">
					   </div>
					   <div class="col-xl-12">
							<select class="res_select" name="budget" id="budgetSelect" onchange="resetToDefault(this)" >
							
								
								<option value="1 Lac - 2 Lac">1 Lac - 2 Lac</option>
								<option value="2 Lac - 3 Lac">2 Lac - 3 Lac</option>
								<option value="3 Lac - 4 Lac">3 Lac - 4 Lac</option>
							    <option value="4 Lac - 5 Lac">4 Lac - 5 Lac</option>
							    <option value="5 Lac - 10 Lac">5 Lac - 10 Lac</option>
							</select>
						</div> 
						 <div class="col-xl-12">
							<select class="res_select" name="style">
							
								
								<option value="Standard">Standard</option>
								<option value="delux">Delux</option>
							    <option value="superdelux">Super Delux</option>
							    <option value="premium">Premium</option>
								<option value="theme">Theme</option>
							</select>
						</div> 
						<div class=" col-xl-12">
							<input type="text" name="noofguest"
							placeholder="No of Guest">
						</div>
						<div class="col-xl-12">
							<input type="text" name="venue" placeholder="venue">
						</div>
						<div class="col-xl-12">
						    <input type="text" name="photovideos"placeholder="Photographs And Videos">
						</div>
						<div class="col-xl-12">
							<input type="text" name="noofguestfortransport"
							placeholder="Transportations For No of Guest">
						</div>
						<div class="col-xl-12">
							<button type="submit" name="action" value="add plan"
							class="boxed_btn3">Add Plan</button>
						</div>
			
						
						
						</div>
					</form>
        		</div>
        	</div>
        </section>

</body>
</html>