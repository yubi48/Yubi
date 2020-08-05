<%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Profles !!!!!!!!!!!</title>
<%@ include file="header.jsp" %>
</head>
<body>
	<header style="height: 30px; background-color: #21c9ff;">
		<b style="margin-left: 50px;">Coming soon </b>
	</header>
	<div class="container">
		<!-- sessionScope  is called implicit EL object -->
		<img src="img/student.png" style="height: 139px">

		<button type="button" class="btn btn-primary">Manage Users</button>
		<button type="reset" class="btn btn-danger">Email</button>
		<a href="profiles">
			<button type="button" class="btn btn-success">Profiles</button>
		</a> <a href="loggedUser">
			<button type="button" class="btn btn-primary">Logged in User</button>
		</a> <a href="logout">
			<button type="button" class="btn btn-warning">Logout</button>
		</a>
		<hr />
		<ul class="pagination">
			<cc:forEach var="i" begin="1" end="${numOfPage }">
				<li><a href="viewProfile?pageid=${i }"><cc:out
							value="${i }" /> </a></li>
			</cc:forEach>
		</ul>
		<form action="searchProfile">





			<input type="text" name="search" class="form-control"
				style="width: 50%; display: inline;" />
			<button type="submit" class="btn btn-primary">Go</button>
			<a href="profiles">
				<button type="button" class="btn btn-primary">Clear</button>
			</a>
		</form>
		<hr />
		<form action="filterProfile">
			<select name="filterText" class="form-control"
				style="width: 80%; display: inline;">
				<option>Select</option>
				<cc:forEach items="${listoptions}" var="toption">
					<option>${toption}</option>
				</cc:forEach>
			</select>
			<button type="submit" class="btn btn-primary"
				style="margin-top: -4px;">Go</button>
		</form>
		<hr />
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Username</th>
					<th>Password</th>
					<th>Name</th>
					<th>Email <a href="sortProfile?sort=asc"> <img
							src="img/asc.png" />
					</a> <a href="sortProfile?sort=desc"> <img src="img/desc.png" />
					</a>

					</th>
					<th>Qualification</th>
					<th>Mobile</th>
					<th>Photo</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>

				<cc:forEach items="${profileDTOs}" var="profileDTO">
					<tr>
						<td>${profileDTO.username}</td>
						<td>${profileDTO.password}</td>
						<td>${profileDTO.name}</td>

						<td>${profileDTO.email}
						<td>${profileDTO.qualification}</td>
						<td>${profileDTO.mobile}</td>
						<td><img src="${profileDTO.photo}" style="height: 120px;"
							class="zoom" /></td>
						<td><a href="editProfile?username=${profileDTO.username}">
								<button type="button" class="btn btn-primary">E</button>
						</a> <a href="deleteProfile?username=${profileDTO.username}">
								<button type="button" class="btn btn-danger">D</button>
						</a></td>
					</tr>
				</cc:forEach>
			</tbody>
		</table>
	</div>


</body>
</html>