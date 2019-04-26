<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<%@include file="UserHeader.jsp"%>
    
    

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>User Home Page</title>
 
<style type="text/css">
#myId
{
background-color:blue;
}
</style>

</head>
<body>


<br/>
<br/>
<br/>

<h1><b><center><font face="verdana" color="green">User Home Page</font></center></b></h1>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value="/resources/images/image1.jpg"/>" alt="laptop" width="300" height="500">
        <div class="carousel-caption">
          <h3>SurfacePro</h3>
          <p>ESR Case for The Surface Pro 6, Multi-Angle Business Cover with Pen Holder</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/furniture.jpg"/>" alt="furnitures" width="300" height="500">
        <div class="carousel-caption">
          <h3>KidsTable</h3>
          <p>Model SitOut</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/image4.jpg"/>"  alt="camera" width="300" height="500">
        <div class="carousel-caption">
          <h3>canon</h3>
          <p>black Canon DSLR camera</p>
        </div>
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/images/images8.jpg"/>" alt="phone" width="300" height="300">
        <div class="carousel-caption">
          <h3>RedMi</h3>
          <p>RedMi note 7 Pro</p>
        </div>
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/images/kidswear.jpg"/>"  alt="clothes" width="300" height="300">
        <div class="carousel-caption">
          <h3>style</h3>
          <p>Trends For All </p>
        </div>
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/images/dellap1.jpg"/>" alt="lap" width="300" height="300">
        <div class="carousel-caption">
          <h3>Dell LapTop </h3>
          <p>Dell LapTop Latest Model</p>
        </div>
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/images/lg.jpg"/>" alt="TV" width="300" height="300">
        <div class="carousel-caption">
          <h3>LG TV</h3>
          <p>LED New Model</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body> 
</html>
