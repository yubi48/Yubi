<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
 <%@ include file="header.jsp" %>
<script>
   function clearMsg(){
	   document.getElementById("emessage").innerHTML="";
	   document.getElementById("studentImage").src="img/student.png";
   }   
   
   //function 
   function validateLogin() {
	    //string
		var uname=document.getElementById("username").value;
		if(uname.length==0){
			//document.getElementById("emessage") - span object
			document.getElementById("emessage").innerHTML="Username cannot be empty";
			//document.getElementById("studentImage") - image object
			document.getElementById("studentImage").src="img/validate.jpg";
			return;
		}
		var pass=document.getElementById("password").value;
		if(pass.length==0){
			document.getElementById("emessage").innerHTML="Password cannot be empty";
			document.getElementById("studentImage").src="img/validate.jpg";
			return;
		}
		//submitting form manually using JavaScript
		document.authform.submit();
   }
</script>


</head>
<body>
	<header style="background-color: #03a9f4; height: 30px;">
	   <b>Address : = ${applicationScope.address}</b> 
	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 </header>
	<div  class="container">
	     <hr style="border-top: 5px solid rgba(103,58,183,1);"/>
		<img id="studentImage"  src="${pageContext.request.contextPath}/img/student.png" class="semere"  style="height: 200px;">
		<form name="authform"  action="auth" method="post">
		<div  class="semere"   style="width: 50%">
		 <span  id="message"  style="color:red;font-size: 16px;font-weight: bold;">
		   <marquee scrolldelay="100" direction="right">  ${hmmm}</marquee>  
		 </span>
		   <hr/>
		   <span  id="emessage"  style="color:blue;font-size: 16px;font-weight: bold;"></span>
		 			<br/>
		 			 
		            <label for="username">Username</label>
		            <input type="text" name="username" class="form-control" id="username" onkeyup="clearMsg();">
		              <br/>
		               <label>Password</label>
		            <input type="password" name="password" class="form-control" id="password" onkeyup="clearMsg();">
		             <br/>
		<button type="button" class="btn btn-primary" onclick="validateLogin();">Sign In</button>
		<a href="${pageContext.request.contextPath}/signup"><button type="button" class="btn btn-info">Sign Up</button></a>
		<a href="${pageContext.request.contextPath}/fpassword"><button type="button" class="btn btn-primary">Forget Password</button></a>
		<a href="${pageContext.request.contextPath}/isignup"><button type="button" class="btn btn-warning">Sign Up Image</button></a>
		
		</div>
		</form>
	</div>

</body>
</html>