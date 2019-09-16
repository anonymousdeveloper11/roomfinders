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

  


  <title>Room Management</title>
  
 
</head>
<body>
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
          
         
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item active mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/owner/room/add">
              <i class="fas fa-user-plus"></i> Add Room</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/logout">
              <i class="fas fa-sign-in-alt"></i>

              Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section id="register" class="bg-light py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mx-auto">
          <div class="card">
            <div class="card-header bg-primary text-white">
              <h4>
                <i class="fas fa-user-plus"></i> Add Room Details</h4>
            </div>
            <div class="card-body">

                      <form role="form"  action="<c:url value="/owner/room/add"/>" method="post" enctype="multipart/form-data">
                                <input type="hidden"
                                    name="{_csrf.parameterName}"
                                    value="$_csrf.token}"/>
                                    
   
   
   <div class="form-group">
  <label for="type">Room Type</label>
  
    <select id="type" name="type" class="form-control">
      <option>Select Room</option>
      <option>Single Room</option>
      <option>Double Room</option>
      <option>Flat</option>
    </select>
  </div>

     
      <div class="form-group">
  <label for="area">Area</label>
  
    <input id="area" name="area" type="text" placeholder="" class="form-control" >
    <p class="help-block">Area in square feet</p>
  </div>

  <div class="form-group">
  <label  for="price">Price</label>
  
    <input id="price" name="price" type="text" placeholder="" class="form-control">
    
  </div>

	
	 <div class="form-group">
                                    <label for="image">Image</label>
                                      <div class="form-control">
                                    
                                   <!--   <input type="file" name="image" id="image" class="input-file"/> -->
                                   
                                                   <input id="fileInput" type="file" name="image" onchange="updateSize();" multiple>
                selected files: <span id="fileNum">0</span>
               <!--  total size: <span id="fileSize">0</span> -->
               
                                   
                                   
                                </div>
                                </div>
                                <div class="form-group">
                                <label  for="location">Location</label>
                                 
                                <input type="text" class="form-control" id="location" name="location" placeholder="Enter location">
                                
                                </div>
                                <div class="form-group">
                                <label  for="phone">Phone</label>
                                 
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone number">
                                
                                </div>
                                
                                <div class="form-group">
                                <label   for="Parking">Parking</label>

<select  id="parking" name="parking" >
 
  <option value="true">YES</option>
  <option value="false">NO</option>
 
</select>
 </div>
  


<div class="form-group">
  <label for="Water">Water</label>
  <div class="form-control"> 
    <label class="radio-inline" for="water-0">
      <input type="radio" name="water" id="water-0" value="true">
      Yes
    </label> 
    <label class="radio-inline" for="water-1">
      <input type="radio" name="water" id="water-1" value="false">
      No
    </label>
  </div>
</div>

<div class="form-group">
                                <label  for="bedroom">Bedroom</label>
                                
                                <input type="text" class="form-control" id="bedroom" name="bedroom" placeholder="Enter no. of bedroom">
                                
                                </div>
                                
                                <div class="form-group">
                                <label  for="bathroom">Bathroom</label>
                                 
                                <input type="text" class="form-control" id="bathroom" name="bathroom" placeholder="Enter no. of bathroom">
                                
                             </div>
 <div class="form-group">
 
  <label  for="comment">Comment</label>
  
  <textarea id="comment" name="comment"></textarea>
</div>


                              <div class="form-group">
  <label  for="check_critiria">Check the box</label>
  
    <div class="input-group">
      <span class="input-group-addon">     
          <input type="checkbox">     
      </span>
      <input id="check_critiria" name="check_critiria" class="form-control" type="text" placeholder="I accept the criteria">
    </div>
    
  </div>
                    
                                
                                
                                <div >
                                
                                <input type="submit" value="Save" class="btn btn-primary"/>
                                <input type="reset" value="Reset" class="btn btn-primary"/>
                                </div>
      
 
                           </form>
                        
                          
            </div> 
   </div>
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
                        
                      <div>
            
            <div>
            ${file.getName()}
            </div>
            </#list>
        </div>
        <script>
            function updateSize() {
                var nBytes = 0,
                        oFiles = document.getElementById("fileInput").files,
                        nFiles = oFiles.length;
                for (var nFileId = 0; nFileId < nFiles; nFileId++) {
                    nBytes += oFiles[nFileId].size;
                }
                var sOutput = nBytes + " bytes";
                // optional code for multiples approximation
                for (var aMultiples = ["KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"], nMultiple = 0, nApprox = nBytes / 1024; nApprox > 1; nApprox /= 1024, nMultiple++) {
                    sOutput = nApprox.toFixed(3) + " " + aMultiples[nMultiple] + " (" + nBytes + " bytes)";
                }
                // end of optional code
                document.getElementById("fileNum").innerHTML = nFiles;
                document.getElementById("fileSize").innerHTML = sOutput;
            }
        </script>
              
            
 


</body>
</html>

 