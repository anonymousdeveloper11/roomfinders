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
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Send Email</div>
                        <div class="panel-body">
                            <div class="col-md-6">
                                <form role="form" id="sendEmail" action="<c:url value="/Admin/sendEmail"/>" method="post"  >

                                    <input type="hidden"
                                    name="${_csrf.parameterName}"
                                    value="${ _csrf.token}"/>
                                    

                                    <div class="form-group">
                                        <label>Email to</label>
                                        <input class="form-control" id="receiverMail" type="text" name="mailTo" size="65" >
                                       <!--   <p class="help-block">${error_title}</p>-->
                                    </div>

                                    <div class="form-group">
                                        <label>Subject </label>
                                        <input class="form-control"  id="mailSubject" type="text" name="subject" size="65">
                                       <!--  <p class="help-block">${error_tag}</p>-->
                                    </div>

                                    <div class="form-group">

                                        <textarea id="mailMessage" cols="50" rows="10" name="message" placeholder="Message"></textarea>
                                    </div>
                                   


                                    <button type="submit" class="btn btn-default">Submit</button>
                                    <button type="reset" class="btn btn-default">Reset</button>
                                </form>
                            </div>


                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

        <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>

</body>
</html>