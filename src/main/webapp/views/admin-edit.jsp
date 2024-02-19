<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>:: Swift - University Admin ::</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Custom Css -->
    <link rel="stylesheet" href="assets/css/main.css">

    <link rel="stylesheet" href="assets/css/themes/all-themes.css"/>
</head>

<body class="theme-blush">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="preloader">
            <div class="spinner-layer pl-blush">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
        <p>Please wait...</p>
    </div>
</div>

<!-- #END# Page Loader -->

<!-- Overlay For Sidebars -->
<!-- #END# Overlay For Sidebars -->

<!-- Morphing Search  -->

<!-- /morphsearch-content -->

<!-- Top Bar notification -->

<!-- #END# Notifications -->
<!-- Tasks -->

<!-- #Top Bar -->

<!--Side menu and right menu -->
<!--Side menu and right menu -->

<!-- main content -->
<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>Edit Admin</h2>
            <small class="text-muted">Welcome to Faraxel application</small>
        </div>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Basic Information <small>Please fill the details carefully...</small>
                        </h2>
                    </div>
                    <form action="/updatethis" method="post">
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    placeholder="Name against which data to be updated"
                                                    name="namesurname"
                                            />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-4 col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    placeholder="Enter Your New Email"
                                                    name="email"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    placeholder="Enter Your New Password"
                                                    name="password"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="terms" id="terms" class="filled-in chk-col-pink">
                                    <label for="terms">I read and agree to the <a href="javascript:void(0);">terms of usage</a>.</label>
                                </div>
                                <div class="col-sm-12">
                                    <button name="submit" type="submit" class="btn btn-raised g-bg-blush2">
                                        Submit
                                    </button>
                                    <a href="adminlist">
                                        <button type="submit" class="btn btn-raised btn-default">
                                            Cancel
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- main content -->

<div class="color-bg"></div>

<!-- Jquery Core Js -->
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="assets/bundles/morphingsearchscripts.bundle.js"></script> <!-- Main top morphing search -->

<script src="assets/plugins/jquery-sparkline/jquery.sparkline.min.js"></script> <!-- Sparkline Plugin Js -->
<script src="assets/plugins/chartjs/Chart.bundle.min.js"></script> <!-- Chart Plugins Js -->

<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="assets/js/pages/charts/sparkline.min.js"></script>
<script src="assets/js/pages/index.js"></script>
</body>

</html>