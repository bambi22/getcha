<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당 리스트</title>
<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
</head>
<body>	
<div class="album py-5 bg-light" style="margin-left:250px; width:1000px">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
<c:forEach var="rest" items="${restList }"  step="1">
        <div class="col">
          <div class="card shadow-sm">
          	<img src="resources/img/restaurant/${rest.representImage }" width="100%" height="200">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->

            <div class="card-body">
              <p class="card-text">
              	<strong>${rest.restName}</strong><br>
              	<span style="font-size:16px;">${rest.restIntro }</span> <br>
              	<span style="font-size:12px;">${rest.type }·${rest.dong }</span>
              </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                </div>
                <small class="text-muted">
	                <c:if test="${rest.avgPoint == 0  }">
	                	<img  src="resources/img/icon/emptystar.png" width="10px">
	                </c:if>
	                <c:if test="${rest.avgPoint != 0  }">
	                	<img  src="resources/img/icon/star.png" width="10px">
	                </c:if>
	                ${rest.avgPoint }
	            </small>
              </div>
            </div>
          </div>
        </div>
</c:forEach>

      </div>
    </div>
  </div>
</body>
</html>