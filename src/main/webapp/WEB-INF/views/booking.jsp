<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
  <!-- Custom -->
  <link rel="stylesheet" href="/assets/css/style.css">

  <title>RF Room Finder</title>
</head>

<body>
  <!-- Top Bar -->
  <section id="top-bar" class="p-3">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <i class="fas fa-phone"></i> (977)-01-5555
        </div>
        <div class="col-md-4">
          <i class="fas fa-envelope-open"></i> contact@rfroomfinder.co
        </div>
        <div class="col-md-4">
          <div class="social text-right">
            <a href="#">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="#">
              <i class="fab fa-facebook"></i>
            </a>
            <a href="#">
              <i class="fab fa-linkedin"></i>
            </a>
            <a href="#">
              <i class="fab fa-instagram"></i>
            </a>
            <a href="#">
              <i class="fab fa-pinterest"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
    <div class="container">
      <a class="navbar-brand" href="index.html">
        <img src="/img/logo.png" class="logo" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav">
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/user/home">Home</a>
          </li>
          
          
        </ul>

        <ul class="navbar-nav ml-auto">
         
          <li class="nav-item active mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/logout">
              <i class="fas fa-sign-in-alt"></i>

              Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section id="booking" class="bg-light py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mx-auto">
          <div class="card">
            <div class="card-header bg-primary text-white">
              <h4>
                <i class="fas fa-sign-in-alt"></i> Booking</h4>
            </div>
            <div class="card-body">
              <form  role="form" action="<c:url value="/user/room/book"/>" method="post">
              <input type="hidden"
                                    name="{_csrf.parameterName}"
                                    value="$_csrf.token}"/>
                <div class="form-group">
                  <label for="username">Username:</label>
                  <input type="text" name="username" class="form-control" value=" ${userinfo.username}" readonly>
                </div>

                
                  <input type="hidden" name="roomId" class="form-control"  value="${roomdetail.id}" readonly>
                
                
                <div class="form-group">
                 </div>

                
                  <input type="hidden" name="ownerId" class="form-control"  value="${roomdetail.usersDetails.username}" readonly>
                
                
                <div class="form-group">
                  <label for="phone">Phone:</label>
                  <input type="text" name="phone" class="form-control" >
                </div>
                <div class="form-group">
                  <label for="remark">Remark</label>
                  <textarea id="remark" name="remark"></textarea>
                </div>
                

                <input type="submit" value="Booking" class="btn btn-secondary btn-block">
              </form>
            </div>
          </div>
        </div>
      </div>
   </div>
  </section>

  <!-- Footer -->
  <footer id="main-footer" class="py-4 bg-primary text-white text-center">
    Copyright &copy;
    <span class="year"></span> RF Room Finder
  </footer>

  <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>
 
</body>

</html>