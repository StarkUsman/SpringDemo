<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>:: Swift - University Admin ::</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- Custom Css -->
<link rel="stylesheet" href="assets/css/main.css">
<link href="assets/css/login.css" rel="stylesheet">

<link rel="stylesheet" href="assets/css/themes/all-themes.css"/>
</head>
<body class="login-page authentication">
<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title"><span>Swift University</span>Register <span class="msg">Register a new membership</span></h1>
        <div class="col-sm-12">
            <form action="userDetails" id="sign_up">
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <input type="text" class="form-control" name="namesurname" id="namesurname" placeholder="Name Surname" required="" autofocus>
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-email"></i>
                </span>
                <div class="form-line">
                    <input type="email" class="form-control" name="email" placeholder="Email Address" required="">
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-lock"></i>
                </span>
                <div class="form-line">
                    <input type="password" class="form-control" name="password" minlength="6" placeholder="Password" required="">
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-lock"></i>
                </span>
                <div class="form-line">
                    <input type="password" class="form-control" name="confirm" minlength="6" placeholder="Confirm Password" required="">
                </div>
            </div>
            <div class="form-group">
                <input type="checkbox" name="terms" id="terms" class="filled-in chk-col-pink">
                <label for="terms">I read and agree to the <a href="javascript:void(0);">terms of usage</a>.</label>
            </div>
            <div class="text-center">
                <input class="btn btn-raised g-bg-blush2 waves-effect" type="submit" value="Sign Up"/>
<%--                <a href="#" class="btn btn-raised g-bg-blush2 waves-effect" >SIGN UP</a>--%>
            </div>
            <div class="m-t-10 m-b--5 align-center">
                <a href="sign-in.jsp">You already have a membership?</a>
            </div>
        </form>
        </div>
    </div>  
</div>
<div class="theme-bg"></div>

<!-- Jquery Core Js --> 
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>

</html>