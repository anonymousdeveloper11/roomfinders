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
      <a class="navbar-brand" href="${pageContext.request.contextPath}/owner/home">
        <img src="/img/logo.png" class="logo" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav">
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/owner/home">Home</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/owner/dashboard">Booking Detail</a>
          </li>
          
        </ul>

        <ul class="navbar-nav ml-auto">
         
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/logout">
              <i class="fas fa-sign-in-alt"></i>

              Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section id="showcase-inner" class="py-5 text-white">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1 class="display-4">Owner Dashboard</h1>
          <p class="lead">Manage your RF Room Finder account</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Breadcrumb -->
  <section id="bc" class="mt-3">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath}/owner/home">
              <i class="fas fa-home"></i> Home</a>
          </li>
          <li class="breadcrumb-item active"> Dashboard</li>
        </ol>
      </nav>
    </div>
  </section>

  <section id="dashboard" class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2>Welcome ${userinfo.name}  </h2>
          <p>Here are the property listings that you have inquired about</p>
           <table class="table">
            <thead>
              <tr>
                <th scope="col">id</th>
                <th scope="col">Property</th>
                <th scope="col">Booking Date</th>
                <th scope="col">Booking Name</th>
                <th scope="col">Booking Phone</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${bookinglist}" var="booking">
              <tr>
                <td>${booking.id}</td>
                <td>${booking.room.type}</td>
                <td>${booking.bookingDate}</td>
                <td>${booking.usersDetails.name}</td>
                <td>${booking.phone}</td>
                
                <td>
                  <a class="btn btn-light" href="${pageContext.request.contextPath}/ownerRoomDetail/${room.id}">View Detail</a>
                </td>
              </tr>
              </c:forEach>
              
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </section>
  <!-- Footer -->
  <footer id="main-footer" class="py-4 bg-primary text-white text-center">
    Copyright &copy;
    <span class="year"></span> BT Real Estate
  </footer>

  <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>
</body>

</html>