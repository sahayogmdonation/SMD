<%@ include file = "Header/header.jsp" %>
        


<main id="main" class="main">
                 
                  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                    <h1 class="h2">Medicine Request</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                           
                        </div>
                         <a class="btn btn-primary" href="ngomedrequired.jsp">Add Medicine</a>
                    </div>
                </div>
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
                    <td><a href="MedicienRequestDetail.jsp" class="btn btn-success"><span class="bi bi-eye-fill"></span></a></td>
                    <td><a href="" class="btn btn-success"><span class="bi bi-pencil"></span></a></td>
                     <td><a href="" class="btn btn-success"><span class="bi bi-trash-fill" style="color: rgb(255, 0, 0);"></span></a></td>
                      
                  </tr>                 
                </tbody>
              </table>
              
             </main><!-- End #main -->

           <%@ include file = "Footer/footer.jsp" %>