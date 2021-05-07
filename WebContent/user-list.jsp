<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		}
	%>

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div>
				<a href="#" class="navbar-brand"><span class="badge badge-light">Address  Book</span></a>
			</div>
			<div class="collapse navbar-collapse d-flex justify-content-between " id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li><a href="<%=request.getContextPath()%>/list"
						class="nav-link active">Users</a></li>
					<li>
					<a href="<%=request.getContextPath()%>/new" class="nav-link active">Add
						New User</a></li>
				</ul>
				
			<div class="button">
				<%
					if(session.getAttribute("username") != null){
				%>
					<a href="<%=request.getContextPath()%>/logout" class="btn btn-light">
							Logout</a>
					<% }  %> 
				</div>
			</div>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Country</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.phone}" /></td>
							<td><c:out value="${user.country}" /></td>
							<td><a class="btn btn-info" href="edit?id=<c:out value='${user.id}' />">Edit</a>
								<a class="btn btn-danger" href="delete?id=<c:out value='${user.id}' />">Delete</a>
							</td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
