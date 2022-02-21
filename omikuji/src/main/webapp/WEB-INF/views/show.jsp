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
		<div class="d-flex justify-content-center">
			<div class="container">
				<h3 class="text-center">Here's Your Omikuji!</h3>
				<div class="card">
					<div class="card-body">
						<p>In <c:out value="${omikuji.years}"></c:out> years, you will live in <c:out value="${omikuji.city}"></c:out> with <c:out value="${omikuji.person}"></c:out> as your roommate, <c:out value="${omikuji.hobby}"></c:out> for a living. The next time you see a <c:out value="${omikuji.animal}"></c:out>, you will have good luck. Also, <c:out value="${omikuji.message}"></c:out></p>
					</div>
					<div class="card-footer">
						<div class="d-flex justify-content-center align-items-center">
						<a href="/omikuji">Go back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--Bootstrap -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>