<%-- 
    Document   : login
    Created on : 03-Nov-2022, 9:44:38 am
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>User Login</title>
        <meta content="" name="description"/>
        <meta content="" name="keywords"/>

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon"  type="text/css" />
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"  type="text/css" />
        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect"  type="text/css"  />
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet"  type="text/css"  />

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css"
            rel="stylesheet" type="text/css" />
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
            rel="stylesheet" type="text/css" />
        <link href="assets/vendor/boxicons/css/boxicons.min.css"
            rel="stylesheet" type="text/css" />
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet" type="text/css" />
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet" type="text/css" />
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet" type="text/css" />
        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet"  type="text/css" />
          <link href="assets/css/style2.css" rel="stylesheet" type="text/css" />
          
    </head>
    <body>
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
         <main style="background-color: #f6f9ff">
        <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.jsp" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="" style="height:70px;width:auto;border-radius:10px"/>
                 
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3" style="  box-shadow: 0px 0 30px rgba(1, 41, 112, 0.1);   border: none;">

                    <div class="card-body ">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
<!--                    <p class="text-center small">Enter your username & password to login</p>-->
                  </div>

                  <form class="row g-3 needs-validation" method="POST" action="UserLogin">

                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Username</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="email"  class="form-control" id="email" name="email" required=""/>
                        <div class="invalid-feedback">Please enter your email.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password"  class="form-control" id="pass" name="pass" required=""/>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>

                 
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Login</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Don't have account? <a href="userregistration.jsp">Create an account</a></p>
                      <a href="userreg.jsp"></a>
                    </div>
                  </form>

                </div>

          
              </div>
                  <div class="h25" ></div>

                   <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="">Sahayog Donation</a>
              </div>
                  
            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

        
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetaleart.css"/>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
   <script type="text/javascript">
      var status = document.getElementById("status").value;
      if(status === "failed"){
          swal("Sorry","Wrong username and password","error");
      }
  </script>
    </body>
</html>
