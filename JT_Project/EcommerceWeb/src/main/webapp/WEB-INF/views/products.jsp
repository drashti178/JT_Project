<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page isELIgnored="false" %>   
<!DOCTYPE html>

<html>

<head>
	<title>Products </title>
</head>

	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>


<link href="<c:url value="/resources/css/style2.css"/>" rel="stylesheet">
<body>

	<nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="assets/logo.png" alt="">
                </span>

                <div class="text logo-text">
                    <span class="name" style="color:orange;font-size:30px;">Charectro</span>
                    
                </div>
            </div>

            <i class='toggle'></i>
        </header>

        <div class="menu-bar">
            <div class="menu">

              

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="category">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Categories</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="product">
                            <i class='bx bx-bar-chart-alt-2 icon' ></i>
                            <span class="text nav-text">Products</span>
                        </a>
                    </li>
                     <li class="nav-link">
                        <a href="Users">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Users</span>
                        </a>
                    </li>

                    

                    
                </ul>
            </div>

            <div class="bottom-content">
                <li class="">
                    <a href="logout">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Logout</span>
                    </a>
                </li>

              
                
            </div>
        </div>

    </nav>

    <section class="home">
       <%
		response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
		String mail = (String)session.getAttribute("email");
		if(mail==null)
		{
			response.sendRedirect("");
		}
	%>
      	<h3 id="name">
    	<i class="fas fa-user"></i><b><%out.write("  Hello "+mail); %></b>  
	    </h3>
	    <br>
	    
    <table border="1px collapse black">
    <tr>
		<th>Id</th>
		<th>Name</th>
		<th>Description</th>
		<th>Mrp</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Discount</th>
		<th>Category</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		<c:forEach var="info" items="${productlist}">
		<tr>
			<td>${info.pid}</td>
			<td>${info.pname}</td>
			<td>${info.description}</td>
			<td>${info.mrp}</td>
			<td>${info.price}</td>
			<td>${info.quantity}</td>
			<td>${info.discount}</td>
			<td>${info.category}</td>
			<td><a href="editproduct?pid=${info.pid}">Edit</a></td>
			<td><a href="deleteproduct?pid=${info.pid}">Delete</a></td>
		</tr>	
		</c:forEach>
		
	</table>
	<h4>
			Add New Product <a href="addproduct">here</a><br><br>
			
	</h4>
        
       
    </section>
    

</body>

</html>