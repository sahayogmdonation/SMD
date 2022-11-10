<%-- 
    Document   : header2
    Created on : 05-Nov-2022, 1:37:42 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Dashboard</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon" type="text/css" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" type="text/css" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link
          rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css
        "
          type="text/css" />
    <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css
        "
          type="text/css" />
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" type="text/css" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style2.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
         <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="bi bi-phone"></i> +1 5589 55488 55
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </div>
    
  <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">
        <a href="index.xhtml"><img src="Admin/assets/img/logo.png" alt="" style="height:50px;width:auto" />
        </a>
        <div class="w300"></div>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
            <li><a class="nav-link scrollto" href="#Medicines">Medicines</a></li>
            <li><a class="nav-link scrollto" href="#ngo">NGO</a></li>
            <li><a class="nav-link scrollto" href="#about">About</a></li>
       

          <!-- Example single danger button -->
          
            <li><a class="nav-link scrollto" href="#contact">Contact  </a></li>

          </ul>

          <ul>
            <li class="nav-item dropdown pe-3">

              <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                <img src="assets/img/profile-img.jpg" style="width:auto; height:30px;" alt="Profile"
                     class="rounded-circle" />
                <span class="d-none d-md-block dropdown-toggle ps-2">Admin</span>
              </a><!-- End Profile Iamge Icon -->

              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                <li class="dropdown-header">
                  <h6>Adn</h6>
                  <span>Web Designer</span>
                </li>
                <li>
                  <hr class="dropdown-divider" />
                </li>

                <li>
                  <a class="dropdown-item d-flex align-items-center" href="profile.jsp">
                    <i class="bi bi-person"></i>
                    <span>My Profile</span>
                  </a>
                </li>

                <li>
                  <hr class="dropdown-divider" />
                </li>

                <li>
                  <a class="dropdown-item d-flex align-items-center" href="/Profile.jsp">
                    <i class="bi bi-question-circle"></i>
                    <span>Change Password</span>
                  </a>
                </li>
                <li>
                  <hr class="dropdown-divider" />
                </li>

                <li>
                  <a class="dropdown-item d-flex align-items-center" href="/Logout.java">
                    <i class="bi bi-box-arrow-right"></i>
                    <span>Log Out</span>
                  </a>
                </li>

              </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->


        
        <a href="/Logout.java" class="appointment-btn scrollto"><span class="d-none d-md-inline">Logout</span></a>
        


      </div>
    </header><!-- End Header -->
    
    </body>
</html>
