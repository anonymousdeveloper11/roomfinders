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
                  <i class="fas fa-user"></i> Post Date:
                  <span class="float-right">${ roomdetail.date }</span>
                </li>
                 <li class="list-group-item text-secondary">
                  <i class="fas fa-user"></i> Room Status:
                  <span class="float-right">${ roomdetail.status}</span>
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
                  <span class="float-right">${ roomdetail.usersDetails.name }</span>
                </li>
                <li class="list-group-item text-secondary">
                  <i class="fas fa-user"></i> Owner Phone:
                  <span class="float-right">${ roomdetail.phone}</span>
                </li>
                
                
              


              </ul>
               <a href="${pageContext.request.contextPath}/admin/verify/${roomdetail.id}" class="btn btn-primary">Verify</a>
               <a href="${pageContext.request.contextPath}/admin/delete/${roomdetail.id}" class="btn btn-primary">Delete</a>
           
              </div>
            </div>
          </div>
         
                         
          
 <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/lightbox.min.js"></script>
  <script src="/assets/js/main.js "></script>
</body>
</html>