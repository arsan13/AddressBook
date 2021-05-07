<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style><%@include file="/WEB-INF/style.css"%></style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark" >
			<a href="#" class="navbar-brand"><span class="badge badge-light">Address</span> Book</a>
		</nav>
	</header>
	
	<div class="My-container">
        <form class="My-form" action="register" method="post">
            <h2 class="My-heading">Sign-up</h2>
            <div class="My-form-content">
            	<input id="name" name="name" placeholder="Full Name" type="text" />
                <input id="email" name="email" placeholder="Email" type="email" />
                <input id="password" name="pwd1" placeholder="Password" type="password" />
                <input id="password" name="pwd2" placeholder="Confirm Password" type="password" /><br />
                <button class="button" type="submit"> Submit</button>
            </div>
        </form>
        
    </div>
    
</body>
</html>
    