<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style><%@include file="/WEB-INF/style.css"%></style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark" >
			<a href="#" class="navbar-brand"><span class="badge badge-light">Address</span> Book</a>
            <!--  <a href="register.jsp" class="btn btn-light"> Sign-up</a> --> 
             <div class="collapse navbar-collapse d-flex justify-content-between " id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li></li>
				</ul>
				<div class="btn">
					<a href="register.jsp" class="btn btn-light"> Sign-up</a>
				</div>
			</div>
             
		</nav>
	</header>
	
	<div class="My-container">
        <form class="My-form" action="login" method="post">
            <h1 class="My-heading">Log in</h1><br />
            <div class="My-form-content">
                <input id="user-name" name="uname" placeholder="Email" type="text" />
                <input id="password" name="pwd" placeholder="Password" type="password" /><br />
                <button class="button" type="submit"> Submit</button>
            </div>
        </form>
    </div>
    
</body>
</html>
