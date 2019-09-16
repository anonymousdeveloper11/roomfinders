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


    <title>RF Admin</title>

    

</head>
<body>
<div id="wrapper">
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
               
                <a class="navbar-brand" href="${pageContext.request.contextPath}/adminhome">RF Admin </a>
            </div>
            </nav>
            </div>
 <section id="listings" class="py-5">
    <div class="container">
      <h3 class="text-center mb-3">Available Room</h3>
      <div class="row">
        <!-- Listing 1 -->
        <c:forEach items="${roomlist }" var="room">
        <c:set var="rooms" value="${fn:split(room.image, ', ')}" />
        <div class="col-md-6 col-lg-4 mb-4">
          <div class="card listing-preview">
            <img class="card-img-top" src="/images/${rooms[0]}" alt="" height="200px">
            <div class="card-img-overlay">
              <h2>
                <span class="badge badge-secondary text-white">Rs${room.price }</span>
              </h2>
            </div>
            <div class="card-body">
              <div class="listing-heading text-center">
                 <h4 class="text-primary">${room.type }</h4>
                <p>
                  <i class="fas fa-map-marker text-secondary"></i> ${room.location }</p>
              </div>
              <hr>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-th-large"></i>Type: ${room.type }</div>
                <div class="col-6">
                  <i class="fas fa-car"></i>Parking:${room.parking }</div>
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
                  <i class="fas fa-user"></i> Owner Name:${room.usersDetails.name}</div>
              </div>
              <div class="row text-secondary pb-2">
                <div class="col-6">
                  <i class="fas fa-clock"></i>Post Date:${room.date}</div>
              </div>
              <hr>
              <a href="${pageContext.request.contextPath}/roomDetail/${room.id}" class="btn btn-primary">More Info</a>
             <!--   <a href="${pageContext.request.contextPath}/user/booking/${room.id}" class ="btn btn-primary">Booking</a>
            -->
            </div>
          </div>
        </div>
</c:forEach>
     
      </div>
    </div>
  </section>

<footer id="main-footer" class="py-4 bg-primary text-white text-center">
    Copyright &copy;
    <span class="year"></span> RF Room Finder
  </footer>

  <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/lightbox.min.js"></script>
  <script src="/assets/js/main.js "></script>
</body>
</html>