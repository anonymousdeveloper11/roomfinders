<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/assets/css/all.css">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="/assets/css/bootstrap.css">
  <!-- Lightbox -->
  <link href="/assets/css/lightbox.min.css" rel="stylesheet">
  <!-- Custom -->
  <link rel="stylesheet" href="/assets/css/style.css">
   
  
  <title>RF Room Finder Admin</title>
   
</head>
<body>
 <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
               <!--  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>  -->
                <a class="navbar-brand" href="${pageContext.request.contextPath}/adminhome">RF Admin </a>
            </div>
             
                    <!-- /.dropdown-user -->
               
           </nav>
            <!-- /.navbar-top-links -->
          </div>   
             <section id="dashboard" class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2>Welcome </h2>
          <p>Here are the users details </p>
          <table class="table">
            <thead>
            
              <tr>
                <th scope="col">id</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${usersDetailslist}" var="usersDetails">
              <tr>
                <td>${usersDetails.id}</td>
                <td>${usersDetails.name}</td>
                <td>${usersDetails.email}</td>
                
                <td>
                <a class="btn-btn-light" href="${pageContext.request.contextPath}/admin/delete/${usersdetails.id}">Delete</a>
                </td>
              </tr>
              </c:forEach>
              
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </section>
            
             
             <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>
 

</body>
</html>