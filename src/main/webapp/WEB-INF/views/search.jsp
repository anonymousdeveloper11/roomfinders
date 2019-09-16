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
          <i class="fas fa-phone"></i> (617)-555-5555
        </div>
        <div class="col-md-4">
          <i class="fas fa-envelope-open"></i> contact@btrealestate.co
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
          <li class="nav-item active mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
          </li>
         
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/signup">
              <i class="fas fa-user-plus"></i> Register</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/login">
              <i class="fas fa-sign-in-alt"></i>

              Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Showcase -->
 
  <!-- Listings -->
  <section id="listings" class="py-5">
    <div class="container">
      <h3 class="text-center mb-3">Search Room</h3>
      <div class="row">
        <!-- Listing 1 -->
        <c:forEach items="${roomlist }" var="room">
        <c:set var="rooms" value="${fn:split(room.image, ', ')}" />
        <div class="col-md-6 col-lg-4 mb-4">
          <div class="card listing-preview">
            <img class="card-img-top" src=" /images/${rooms[0]}" alt="">
            <div class="card-img-overlay">
              <h2>
                <span class="badge badge-secondary text-white">Rs${room.price }</span>
              </h2>
            </div>
            <div class="card-body">
              <div class="listing-heading text-center">
                
                <p>
                  <i class="fas fa-map-marker text-secondary"></i> ${room.location }</p>
              </div>
              <hr>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-home"></i>Type: ${room.type }</div>
                <div class="col-6">
                  <i class="fas fa-parking"></i>Parking:${room.parking }</div>
              </div>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-bed"></i>Bedroom: ${room.bedroom }</div>
                <div class="col-6">
                  <i class="fas fa-bath"></i>Bathroom:${room.bathroom }</div>
              </div>
              <hr>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-user"></i> ${room.usersDetails.name}</div>
              </div>
              <div class="row text-secondary pb-2">
                <div class="col-6">
                  <i class="fas fa-clock"></i> Post Date:${room.date }</div>
              </div>
              <hr>
              <a href="${pageContext.request.contextPath}/roomDetail/${room.id}" class="btn btn-primary">More Info</a>
              <a href="${pageContext.request.contextPath}/user/booking/${room.id}" class ="btn btn-primary">Booking</a>
            </div>
          </div>
        </div>
</c:forEach>
     
      </div>
    </div>
  </section>

  <section id="services" class="py-5 bg-secondary text-white">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-4">
          <i class="fas fa-comment fa-4x mr-4"></i>
          <hr>
          <h3>Consulting Services</h3>
          <p>For further more inquiry contact us..</p>
        </div>
        <div class="col-md-4">
          <i class="fas fa-home fa-4x mr-4"></i>
          <hr>
          <h3>Propery Management</h3>
          <p>Room provided in this website is been verifed by our management team.</p>
        </div>
        <div class="col-md-4">
          <i class="fas fa-suitcase fa-4x mr-4"></i>
          <hr>
          <h3>Renting & Selling</h3>
          <p>To rent a room tenant must contact with owner.</p>
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