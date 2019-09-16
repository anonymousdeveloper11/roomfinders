<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/aboutl">About</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="listings.html">Featured Listings</a>
          </li>
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath }/user/dashboard">
              <i class="fas fa-dashboard"></i>Dashboard</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContextPath.request.contextPath}/logout">
              <i class="fas fa-sign-out-alt"></i>

              Logout ${userinfo.username}</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <p>
  Sorry, Room is already booked.
  </p>

</body>
</html>