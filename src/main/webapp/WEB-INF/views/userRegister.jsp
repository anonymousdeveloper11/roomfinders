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
   
    <title>User Register</title>

   
</head>


<body>
 <section id="top-bar" class="p-3">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <i class="fas fa-phone"></i> (977)-01-5555
        </div>
        <div class="col-md-4">
          <i class="fas fa-envelope-open"></i> contact@roomfinder.co
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
            <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
          </li>
          
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item active mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/signup">
              <i class="fas fa-user-plus"></i> Register</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath }/login">
              <i class="fas fa-sign-in-alt"></i>

              Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<div class="container">
        <div class="row">

            <div class="col-md-8 col-md-offset-2">
   
                     <form role="form" action="<c:url value="/signup"/>" method="post" enctype="multipart/form-data" > 
                     <input type="hidden"
                                    name="{_csrf.parameterName}"
                                    value="$_csrf.token}"/>
                               <fieldset>
                        <legend>Account Details</legend>
                               <div class="form-group col-md-12">
                                    <label for="inFullName">FullName</label>
                                    <input type="text" name="name" id="inName" class="form-control" placeholder="FullName"/>
                                </div>
                                <div class="from-group col-md-12">
                                    <label for="inAddress">Address</label>
                                    <input type="text" name="address" id="inAddress" class="form-control" placeholder="Address"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="inFPhone">Phone</label>
                                    <input type="text" name="phone" id="inPhone" class="form-control" placeholder="Phone"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="inEmail">Email</label>
                                    <input type="text" name="email" id="inEmail" class="form-control" placeholder="Email"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inUserName">UserName</label>
                                    <input type="text" name="username" id="inUserName" class="form-control" placeholder="UserName"/>
                                </div>
                                
                                <div class="form-group col-md-6">
                                    <label for="inPassword">Password</label>
                                    <input type="password" name="password" id="inPassword" class="form-control" placeholder="Password"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inConfirmPassword">Confirm Password</label>
                                    <input type="password" name="confirm" id="inConfirmpassword" class="form-control" placeholder="Confirm Password"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="inAuthority">Authority</label>
                                    <select name="authority">
                                    <option value="ROLE_ADMIN">Admin</option>
                                        <option value="ROLE_OWNER">Owner</option>
                                        <option value="ROLE_USER">User</option>
                                    </select>
                                </div>
                                
                                 </fieldset>

                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" id="">
                                    I accept the <a href="#">terms and conditions</a>.
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">
                                Register
                            </button>
                            <a href="<c:url value="/login"/>">Already have an account?</a>
                        </div>
                    </div>

                </form>
            </div>

        </div>
    </div>
    
    <footer id="main-footer" class="py-4 bg-primary text-white text-center">
    Copyright &copy;
    <span class="year"></span> RF Room Finder
  </footer>

  <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>
    
    <script type="text/javascript">
    $(document).ready(function() {
        $('#found_site').on('change', function() {
           $(this).val() == "other" ? $('#specify').closest('.form-group').show() : $('#specify').closest('.form-group').hide();
        })
    })
    </script>
    
</body>

</html>
                  