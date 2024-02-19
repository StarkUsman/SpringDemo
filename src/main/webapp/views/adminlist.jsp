<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.List"%>
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
    <script src="jquery-3.7.1.js"></script>
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
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->

<!--Side menu and right menu -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <div class="user-info">
            <div class="admin-image"> <img src="assets/images/random-avatar7.jpg" alt=""> </div>
            <div class="admin-action-info"> <span>Welcome</span>
                <h3>Prof. John Smith</h3>
                <ul>
                    <li><a data-placement="bottom" title="Go to Inbox" href=""><i class="zmdi zmdi-email"></i></a></li>
                    <li><a data-placement="bottom" title="Go to Profile" href=""><i class="zmdi zmdi-account"></i></a></li>
                    <li><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="zmdi zmdi-settings"></i></a></li>
                    <li><a data-placement="bottom" title="Sign Out" href="/" ><i class="zmdi zmdi-sign-in"></i></a></li>
                </ul>
            </div>
        </div>
        <!-- #User Info -->
        <!-- Menu -->
        <div class="menu">
            <ul class="list">
                <li class="header">MAIN NAVIGATION</li>
                <li class="active open"><a href="adminlist"><i class="zmdi zmdi-home"></i><span>Dashboard</span></a></li>
                <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-account"></i><span>Admin Actions</span> </a>
                    <ul class="ml-menu">
                        <li><a href="adminlist">All Admins</a></li>
                        <li><a href="signup">Add Admin</a></li>
                        <li><a href="adminlist">Update Admin</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- #Menu -->
    </aside>
    <!-- #END# Left Sidebar -->
    <!-- Right Sidebar -->
    <!-- #END# Right Sidebar -->
</section>
<!--Side menu and right menu -->

<!-- main content -->
<section class="content home">
    <div class="container-fluid">
        <div class="content">
            <div class="main">
                <div class="page-header">
                    <h4 class="page-title">Admin List</h4>
                    <div class="breadcrumb">
                        <span class="me-1 text-gray"><i class="feather icon-home"></i></span>
                        <div class="breadcrumb-item"><a href="adminlist"> Home </a></div>
                    </div>
                    <div class="container-element">
                        <a href="signup"><button class="btn btn-primary text-white">Add an Admin</button></a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="mt-4">
                            <form action="/deleteByName">
                                <input placeholder="Select By Name" id="name" name="name"/>
                                    <button name="ddlFlag" value="delete" type="submit">Delete Record By Name</button>
                                <br>
                            </form>
                            <br>
                            <table id="data-table" class="table data-table">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>UserName</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody id="tableBody">
                                </tbody>
                            </table>
                            <script>
                                var data;
                                $(document).ready(function (){
                                    $.ajax({
                                        url:"/getAllUsers/",
                                        // type: "POST",
                                        // data: $('#uid').val(),
                                        contentType: "application/json",
                                        dataType: "json",
                                        success: function (r){
                                            for (let i = 0; i < r.length; i++)  {

                                                var status = r[i].terms;
                                                if (status === 'on') {
                                                    var status = "<b className='text-success'>Active</b>";
                                                } else {
                                                    var status = "<b className='text-danger'>Pending</b>";
                                                }
                                                $('#tableBody').append('<tr>' +
                                                    '<td>' + r[i].uid + '</td>' +
                                                    '<td>' + r[i].namesurname + '</td>' +
                                                    '<td>' + r[i].email + '</td>' +
                                                    '<td>' + r[i].password + '</td>' +
                                                    '<td>' + status + '</td>' +
                                                    '</tr>');
                                            }
                                        }
                                    })
                                })</script>
                            <form action="/updateByName">
                                <button name="ddlFlag" value="update" type="submit">Update Record</button>
                            </form>
                        </div>
                    </div>
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