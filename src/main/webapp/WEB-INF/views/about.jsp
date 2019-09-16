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
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
        <img src="/img/logo.png" class="logo" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav">
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
          </li>
          <li class="nav-item active mr-3">
            <a class="nav-link" href="about.html">About</a>
          </li>
         
        </ul>

        
      </div>
    </div>
  </nav>

  <section id="showcase-inner" class="py-5 text-white">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1 class="display-4">About RF Room Finder</h1>
          <p class="lead">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt, pariatur!</p>
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
            <a href="${pageContext.request.contextPath}/home">
              <i class="fas fa-home"></i> Home</a>
          </li>
          <li class="breadcrumb-item active"> About</li>
        </ol>
      </nav>
    </div>
  </section>

  <section id="about" class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <h2>We Search For The Perfect Home</h2>
          <p class="lead">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt, pariatur!</p>
          <img src="assets/img/about.jpg" alt="">
          <p class="mt-4">
  
 Room Finder is a Rental Solution Provider.

Room Finder is a web portal designed to reshape the conventional pattern of rental  solution for building, flat, room,
  and land all around Nepal. This portal allows people to search and book properties from available property list via online presence
 . The properties are displayed in categorical lists where clients can search the property that best suits their budget range as well as
  location. The list is regularly updated by admin;when property owners  post through online with detail information of property then 
  first admin verify  that property detail and room verified.

Room Finder will completely reduce the old tiresome process of physical travel for the search of room, flat, building etc. 
Without such burden, the clients will get all facilities of Room Finder in a single click.

Room Finder offers clients to set preferences for location as well as budget, as per their need. Property owners can post,
 manage and modify properties from their free accounts. In addition to this, the property owners can also view the list of the applicants and 
 tag the property status to ‘Booked’. Property seekers can easily surf via Room Finder
  to search and book property. Our best feature that builds fast communication among property owner and property seeker is “Notify Room”,
   which notifies via email and mobile app. Clients who use this feature will get notification whenever a new property that matches to
    client’s requirement is posted. Similar type of notification alerts to property owner as well, if any client applies to book his property.

Room Finder is a facilitator that provides dedicated service to property owners and tenants. Our dedicated team works behind and maintains 
the portal 24/7 to meet success; which lies solely on our users’ satisfaction. In addition to this, Room Finder team also guides and 
provides sufficient information through email, Facebook, Twitter, Google Plus, Instagram, LinkedIn etc. Room Finder is here for you, to
 provide efficient rental solution in this hectic busy schedule of modern day lifestyle.
  </p>
        </div>
        </div>
        </div>
        </section>
        
  <footer id="main-footer" class="py-4 bg-primary text-white text-center">
    Copyright &copy;
    <span class="year"></span> RF Room Finder
  </footer>

  <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>


</body>
</html>