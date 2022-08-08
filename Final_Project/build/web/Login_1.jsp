<%-- 
    Document   : Login
    Created on : Feb 28, 2022, 12:17:38 PM
    Author     : Nguyen Tien Nhat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <title>Login/Sign Up</title>
  <link href="css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <div class="container" id="container">
    <!-- sign in page -->
    <div class="form-container sign-in-container">
      <form action="login" method="post" class="form" id="login">
        <h1 class="form__title">Login</h1>
        <div class="form__input-group">
          <label for="account">Username: </label>
          <input type="text" class="form__input" name="account" id="username" maxlength="20" required> 
        </div>
        <div class="form__input-group">
          <label for="password">Password: </label>
          <input type="password" class="form__input" name="password" id="password" maxlength="20" required> 
        </div>
        <div class="form__input-group">
          <button type="submit" class="form__button">Submit</button>
        </div>
     </form>
    </div>
    
   <!--  create account page -->
   <div class="form-container sign-up-container">
     <form action="signup" method="post"  class="form" id="register">
       <h1 class="form__title">Register</h1>
       <div class="form__input-group">
         <label for="account"> Username: </label>
         <input type="text" class="form__input" name="account" id="username" maxlength="20" required>
       </div>
        <div class="form__input-group">
          <label for="password">Password: </label>
          <input type="password" class="form__input" name="password" id="pass" maxlength="20" required> 
        </div>
       <button class="form__button" type="submit">Submit</button>
     </form>
   </div> 
    
   <div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>Please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
 </div>
  
  <script src="js/mainlogin.js"></script>
  
</body>