<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta
      content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
      name="viewport"
    />
    <title>:: Swift - University Admin ::</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link
      rel="stylesheet"
      href="assets/plugins/bootstrap/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
    />
    <!-- Custom Css -->
    <link rel="stylesheet" href="assets/css/main.css" />
    <link href="assets/css/login.css" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/themes/all-themes.css" />
  </head>
  <body class="login-page authentication">
    <div class="container">
      <div class="card-top"></div>
      <div class="card">
        <h1 class="title">
          <span>Swift University</span>Login
          <span class="msg">Sign in to start your session</span>
        </h1>
        <div class="col-sm-12">
          <form action="check-details" id="sign_in" method="GET">
            <div class="input-group">
              <span class="input-group-addon">
                <i class="zmdi zmdi-account"></i>
              </span>
              <div class="form-line">
                <input
                  type="text"
                  class="form-control"
                  name="email"
                  placeholder="Username"
                  required
                  autofocus
                />
              </div>
            </div>
            <div class="input-group">
              <span class="input-group-addon">
                <i class="zmdi zmdi-lock"></i>
              </span>
              <div class="form-line">
                <input
                  type="password"
                  class="form-control"
                  name="password"
                  placeholder="Password"
                  required
                />
              </div>
            </div>
            <div class="">
              <input
                type="checkbox"
                name="rememberme"
                id="rememberme"
                class="filled-in chk-col-pink"
              />
              <label for="rememberme">Remember Me</label>
            </div>
            <div class="text-center">
              <input class="btn btn-raised waves-effect g-bg-blush2" type="submit" value="Sign In"/>
              <a href="signup" class="btn btn-raised waves-effect"
                >SIGN UP</a
              >
            </div>
            <div class="text-center">
              <a href="forgot-password.html">Forgot Password?</a>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="theme-bg"></div>
    <!-- Jquery Core Js -->
    <script src="assets/bundles/libscripts.bundle.js"></script>
    <!-- Lib Scripts Plugin Js -->
    <script src="assets/bundles/vendorscripts.bundle.js"></script>
    <!-- Lib Scripts Plugin Js -->
    <script src="assets/bundles/mainscripts.bundle.js"></script>
    <!-- Custom Js -->
  </body>
</html>
