﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_registration.aspx.cs" Inherits="WebApplication1.User.user_registration" %>

<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User Registration Form</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <h1 style="color:white">User Registration Form</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form id="form1" runat="server">
                        <div class="form-group">
                            <label>Username</label>
                            <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Email ID</label>
                            <asp:TextBox ID="emailID" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="userpassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <label>Contact No</label>
                            <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Contact No"></asp:TextBox>
                        </div>

                        <div class="form-group">
                                <label for="" class="control-label mb-1">Address</label>
                                <asp:TextBox id="address" TextMode="multiline" Columns="40" Rows="4" runat="server" />
                            </div>

                        <div class="form-group">
                           <div id="ReCaptchContainer"></div>
        <asp:Label ID="lblMessage1" runat="server"></asp:Label>
                        </div>

                        <asp:Button ID="b1" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Register Now" OnClick="b1_Click" />
                        <center><a href="../index.aspx" style="color:black">Home Page</a></center>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    <script type="text/javascript">
        var your_site_key = '6Ld_ctAZAAAAACf5nkOLh_NSS-8Xj5RU5uFk9Yw6';
        var renderRecaptcha = function () {
            grecaptcha.render('ReCaptchContainer', {
                'sitekey': '6Ld_ctAZAAAAACf5nkOLh_NSS-8Xj5RU5uFk9Yw6',
                'callback': reCaptchaCallback,
                theme: 'light', //light or dark
                type: 'image',// image or audio
                size: 'normal'//normal or compact
            });
        };
        var reCaptchaCallback = function (response) {
            if (response !== '') {
                document.getElementById('lblMessage1').innerHTML = "";
            }
        };
    </script>
    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
