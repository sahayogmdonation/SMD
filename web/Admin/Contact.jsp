<%@ include file = "Header/header.jsp" %>
             <main id="main" class="main">
                 
                 <div class="pagetitle">
                 <h1>Contact</h1>
                 <nav>
                   <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                     <li class="breadcrumb-item">Admin</li>
                     <li class="breadcrumb-item active">Contact</li>
                   </ol>
                 </nav>
               </div><!-- End Page Title -->
               
                <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Type Of Problem</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td><a href="ContactDetail.jsp" class="btn btn-success"><span class="bi bi-eye-fill"></span></a></td>
                  </tr>                 
                </tbody>
              </table>

             </main><!-- End #main -->

            <%@ include file = "Footer/footer.jsp" %>