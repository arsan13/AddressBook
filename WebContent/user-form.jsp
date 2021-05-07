<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> -->
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
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption><hr>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Phone</label> <input type="number"
						value="<c:out value='${user.phone}' />" class="form-control"
						name="phone">
				</fieldset>

				<fieldset class="form-group">
					<label>Country</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-secondary">Reset</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
