<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<html lang="en">
<head >
<title>LMS</title>
<metacharset="utf-8">
<meta charset="utf-8">
</head>

<!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-light">

	<!-- Links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
		<li class="nav-item"><a class="nav-link" href="#">Link 2</a></li>
		<li class="nav-item"><a class="nav-link" href="#">Link 3</a></li>
	</ul>

</nav>
<div class="container">

	<c:when test="${mode == 'BOOK_VİEV'}">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Book Name</th>
				<th scope="col">Autor</th>
				<th scope="col">Purchase Date</th>
				<th scope="col">Edit</th>
				<th scope="col">Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="$(books)">
				<tr>
					<th scope="row">1</th>
					<td>$(book.id)</td>
					<td>$(book.bookName)</td>
					<td>$(book.author)</td>
					<td>$(book.purchaseDate)</td>
					<td ><a href="updateBook?id=${book.id }"><div class="glyphicon glyphicon-pencil"></div></a></td>
					<td ><a href="updateBook?id=${book.id }"><div class="glyphicon glyphicon-pencil"></div></a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>

	</c:when>

	<c:when test="${mode == 'BOOK_EDIT' || mode == 'BOOK_NEW'  }">
		<form action="save" method="POST">
		 <input type="hidden"  class="form-control" value="${book.id }" name="id" id="id">
			<div class="form-group row">
				<label for="bookName" >Book Name</label>
					<input type="text"  class="form-control" value="${book.bookName }"
						id="bookName" name="bookName">
				
			</div>
			<div class="form-group">
				<label for="authot" >Author</label>
					<input type="text"  class="form-control" value="${book.author }"
						id="author" name="author">
				
			</div>
			<div class="form-group">
				<label for="purchaseDate" >Purchase Date</label>
					<input type="text"  class="form-control" value="${book.purchaseDate }"
						id="purchaseDate" name="purchaseDate">
				
			</div>
			  <button type="submit" class="brn brn-default">Submit</button>
		</form>

	</c:when>






	<table class="table table-bordered table-dark">

		</div>
		
		
</html>