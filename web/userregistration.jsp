<%-- 
    Document   : userregisteration
    Created on : 03-Nov-2022, 9:40:28 am
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>Forms / Elements - NiceAdmin Bootstrap Template</title>
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

     
    <body >
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
        <main  style="background-color: #f6f9ff">
      <div class="container"  >

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-8 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.jsp" class="logo d-flex align-items-center w-auto">
                         <img src="Admin/assets/img/logo.png" alt="" style="height:70px;width:auto;border-radius:10px"/>
                </a>
              </div><!-- End Logo -->

              <div class="col-xl-6 card mb-12" style="  box-shadow: 0px 0 30px rgba(1, 41, 112, 0.1);   border: none;">

                  <div class="card-body " >

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>
               <form method="POST" action="UserRegisteration">
                                    <div class="row mb-3">
                                        <label for="inputText" class="col-sm-3
                                            col-form-label">Name</label>
                                        <div class="col-sm-9">
                                            <input type="text"
                                                class="form-control" id="name" name="name" required/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputEmail" class="col-sm-3
                                            col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="email"
                                                class="form-control" id="email" name="email" required/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputPassword"
                                            class="col-sm-3 col-form-label">Password</label>
                                        <div class="col-sm-9">
                                            <input type="password"
                                                class="form-control" id="pass" name="pass" required/>
                                        </div>
                                    </div>
                                        <div class="row mb-3">
                                        <label for="inputPassword"
                                            class="col-sm-3 col-form-label"> Confirm Password</label>
                                        <div class="col-sm-9">
                                            <input type="password"
                                                class="form-control" id="cpass" name="cpass" required/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputNumber" class="col-sm-3
                                            col-form-label">Contact No.</label>
                                        <div class="col-sm-9">
                                            <input type="number"
                                                class="form-control" id="con" name="con" required/>
                                        </div>
                                    </div>
                                     <div class="row mb-3">
                                        <label for="inputText" class="col-sm-3
                                            col-form-label">About</label>
                                        <div class="col-sm-9">
                                            <input type="Text"
                                                class="form-control" id="about" name="about" />
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputNumber" class="col-sm-3
                                            col-form-label">File Upload</label>
                                        <div class="col-sm-9">
                                            <input class="form-control"
                                                type="file" id="formFile" id="profile" name="profile"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-sm-3
                                            col-form-label">Date </label>
                                        <div class="col-sm-9">
                                            <input type="datetime-local"
                                                class="form-control" value="<%= (new java.util.Date()).toLocaleString()%>"  id="date" name="date" />
                                        </div>
                                    </div>
                                    <fieldset class="row ">
                                        <legend class="col-form-label col-sm-3
                                            pt-0">Gender</legend>
                                        <div class="col-sm-9" id="mgender" name="mgender">
                                            <div class="form-check col-4" >
                                                <input class="form-check-input"
                                                    type="radio"
                                                    name="gridRadios"
                                                    id="gridRadios1"
                                                    value="option1" selected="true" id="mgender" name="mgender"/>
                                                <label class="form-check-label"
                                                    for="gridRadios1">
                                                    Male
                                                </label>
                                            </div>
                                            <div class="form-check col-4">
                                                <input class="form-check-input"
                                                    type="radio"
                                                    name="gridRadios"
                                                    id="gridRadios2"
                                                    value="option2" id="fgender" name="fgender"/>
                                                <label class="form-check-label"
                                                    for="gridRadios2">
                                                    Female
                                                </label>
                                            </div>
                                          
                                        </div>
                                    </fieldset>
                              

                                  
                                        <div class="col-sm-12 text-center">
                                            <button type="submit" class="btn
                                                    btn-primary" onclick="date()">Submit</button>
                                        </div>
                                  

                                </form><!-- End General Form Elements -->

                        </div>
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
  
    <script>var date = new Date();
var date = date.toISOString().slice(0,10);
var currentTime = date.getHours() + ':' + date.getMinutes();

document.getElementById('date').value = currentDate;
document.getElementById('currentTime').value = currentTime;
alter(date);
    </script>

  <script type="text/javascript">
      var status = document.getElementById("status").value;
      if(status === "success"){
          swal("congratus","Create Successfully","success");
      }
  </script>
  
 
    </body>
</html>
