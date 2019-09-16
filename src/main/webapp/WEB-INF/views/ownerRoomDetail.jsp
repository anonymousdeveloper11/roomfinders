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
      <a class="navbar-brand" href="${pageContext.request.contextPath}/owner/home">
        <img src="/img/logo.png" class="logo" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav">
          <li class="nav-item active mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/owner/home">Home</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="about.html">About</a>
          </li>
         
        </ul>

        <ul class="navbar-nav ml-auto">
          
          
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/logout">
              <i class="fas fa-sign-in-alt"></i>

              Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <section id="showcase-inner" class="py-5 text-white">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1 class="display-4">${roomdetail.type }</h1>
          <p class="lead">
            <i class="fas fa-map-marker">${roomdetail.location}</i></p>
        </div>
      </div>
    </div>
  </section>

  <!-- Breadcrumb -->
  <section id="bc" class="mt-3">
    <div class="container">
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath}/owner/home">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath}/ownerRoomDetail/${room.id}">Room Detail</a>
          </li>
          <li class="breadcrumb-item active"></li>
        </ol>
      </nav>
    </div>
  </section>

  <!-- Listing -->
  <section id="roomDetail" class="py-4">
    <div class="container">
      <a href="listings.html" class="btn btn-light mb-4">Back To Listings</a>
      
      
      <div class="row">
        <div class="col-md-9">
          <!-- Home Main Image -->
          <c:set var="rooms" value="${fn:split(roomdetail.image, ', ')}" />  
          
          <img src="<c:url value="/images/${rooms[0]}"/>" alt="" class="img-main img-fluid mb-3">
          <!-- Thumbnails -->
          <div class="row mb-5 thumbs">
            
            
            <c:forEach items="${rooms }" var="ri">
            <div class="col-md-2">
              <a href="<c:url value="/images/${ri}"/>" data-lightbox="home-images">
                <img src="<c:url value="/images/${ri}"/>" alt="" class="img-fluid">
              </a>
            </div>
           </c:forEach>
             
            </div>
          </div>
          <!-- Fields -->
          <div class="row mb-5 fields">
            <div class="col-md-6">
              <ul class="list-group list-group-flush">
               <li class="list-group-item text-secondary">
                  <i class="fas fa-square"></i> Id:
                  <span class="float-right">${roomdetail.id}
                  </span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-home"></i> Type:
                  <span class="float-right">${roomdetail.type}</span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-square"></i> Area:
                  <span class="float-right">${roomdetail.area}</span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-square"></i> Price:
                  <span class="float-right">Rs${roomdetail.price}</span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-map-marker"></i> Location:
                  <span class="float-right">${roomdetail.location}
                  </span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-calender"></i> Post Date:
                  <span class="float-right">${roomdetail.date }</span>
                </li>
                
              </ul>
            </div>
            <div class="col-md-6">
              <ul class="list-group list-group-flush">
                <li class="list-group-item text-secondary">
                  <i class="fas fa-square"></i> Water:
                  <span class="float-right">${roomdetail.water}</span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-parking"></i> Parking:
                  <span class="float-right">${roomdetail.parking}
                  </span>
                </li>
                
                 <li class="list-group-item text-secondary">
                  <i class="fas fa-bath"></i> Bathroom:
                  <span class="float-right">${roomdetail.bathroom}
                  </span>
                </li>
                 <li class="list-group-item text-secondary">
                  <i class="fas fa-bed"></i> Bedroom:
                  <span class="float-right">${roomdetail.bedroom}
                  </span>
                </li>
                 <li class="list-group-item text-secondary">
                  <i class="fas fa-comment"></i> Comment:
                  <span class="float-right">${roomdetail.comment}
                  </span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-user"></i> Owner Name:
                  <span class="float-right">${roomdetail.usersDetails.name }</span>
                </li>
                
                
              


              </ul>
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
  <script src="/assets/js/lightbox.min.js"></script>
  <script src="/assets/js/main.js "></script>
</body>

</html>