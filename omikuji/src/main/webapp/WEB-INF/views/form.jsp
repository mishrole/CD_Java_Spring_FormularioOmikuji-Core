<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji (Core)</title>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	
	<div class="container py-5">
		<c:if test="${MESSAGE != null}">
		<div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>${MESSAGE}</strong>
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
		</div>
    	</c:if>
    	
		<div class="d-flex justify-content-center">
			<div class="container">
				<h3 class="text-center">Send an Omikuji</h3>
				<div class="card">
					<div class="card-body">
						<form action="/omikuji/save" method="POST" id="omikujiForm">
							<div class="row mx-auto">
								<div class="col-12 col-md-6">
									<div class="form-floating mb-3">
									  <input type="number" class="form-control requires-validation validate-save validate-minmax" name="years" id="years" min="5" max="25">
									  <div class="invalid-feedback"></div>
									  <label for="years">Pick any number from 5 to 25</label>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-floating mb-3">
									  <input type="text" class="form-control requires-validation validate-save" name="city" id="city">
									  <div class="invalid-feedback"></div>
									  <label for="city">Enter the name of any city</label>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-floating mb-3">
									  <input type="text" class="form-control requires-validation validate-save" name="person" id="person">
									  <div class="invalid-feedback"></div>
									  <label for="person">Enter the name of any real person</label>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-floating mb-3">
									  <input type="text" class="form-control requires-validation validate-save" name="hobby" id="hobby">
									  <div class="invalid-feedback"></div>
									  <label for="hobby">Enter a professional endeavor or hobby</label>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-floating mb-3">
									  <input type="text" class="form-control requires-validation validate-save" name="animal" id="animal">
									  <div class="invalid-feedback"></div>
									  <label for="animal">Enter any type of living thing</label>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-floating mb-3">
									  <textarea name="message" class="form-control requires-validation validate-save" id="message"></textarea>
									  <div class="invalid-feedback"></div>
									  <label for="message">Say Something nice to someone:</label>
									</div>
								</div>
								<div class="col-12">
									<p>Send and show a friend</p>
									<div class="d-flex align-items-center justify-content-end">
										<button class="btn btn-primary" type="submit">Send</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery (No necesario en Bootstrap 5) -->
	<!-- <script src="/webjars/jquery/jquery.min.js"></script> -->
	<!--Bootstrap -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<!-- Javascript Local -->
	<script src="/js/validateHelper.js"></script>
	<script src="/js/validateOmikujiForm.js"></script>
</body>
</html>