<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags" %>  

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Note CRUD Spring</title>
</head>
<body onload="">
	<div class="container">
		<!-- <div class="jumbotron" style="margin: 45px 0px"> -->
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img class ="img-responsive center-block" src="C:\\Users\\Koel\\Desktop\\pic1.jpg" alt="Los Angeles" style="width:100%">
    </div>

    <div class="item">
      <img class ="img-responsive center-block" src="C:\\Users\\Koel\\Desktop\\pic2.jpg" alt="Chicago" style="width:100%">
    </div>

    <div class="item">
      <img class ="img-responsive center-block" src="C:\\Users\\Koel\\Desktop\\pic3.jpg" alt="New York" style="width:100%">
    </div>
      </div>
      <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

			<h2 class="text-center">Note CRUD APP</h2>
		</div>

		<form method="POST" action="saveNote" modelAttribute="note">

			<div class="form-group">
				<label for="noteid">Note ID</label> <input type="text"
					class="form-control" id="noteId" aria-describedby="name"
					placeholder="Enter Note ID" name="noteId">
			</div>

			<div class="form-group">
				<label for="exampleInputTitle">Note Title</label> 
				<input type="text"
					class="form-control" id="noteTitle" aria-describedby="name"
					placeholder="Enter Note Title" name="noteTitle">
			</div>
			
			<div class="form-group">
				<label for="exampleInputNoteText">Note Text</label> 
				<input type="text" class="form-control" id="noteContent"
					placeholder="Enter Note Text" name="noteContent">
			</div>
			
			<div class="form-group">
				<label for="exampleInputNoteCategory">Note Category</label> 
				<input type="text" class="form-control" id="noteStatus"
					placeholder="Enter Note Text" name="noteStatus">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

		<div style="margin-top: 1em; text-align: center">
			<h2>All Notes Information</h2>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Note ID</th>
						<th scope="col">Note Title</th>
						<th scope="col">Note Text</th>
						<th scope="col">Note Category</th>
					</tr>
				</thead>
				<tbody id='table-body'>
					<c:forEach items="${SavedNotes}" var="noteobj">
						<tr>
							<td>${noteobj.noteId}</td>
							<td>${noteobj.noteTitle}</td>
							<td>${noteobj.noteContent}</td>
							<td>${noteobj.noteStatus}</td>
							<td><a href="update">Update</a></td>
							<td><form action="deleteNote" method="post">
								<input type="hidden" id="noteId" name="noteId" value="${noteobj.noteId}" />
								<button type="submit">Delete</button>
					</form></td>
							
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
