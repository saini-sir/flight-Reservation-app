<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
   <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("https://media.istockphoto.com/id/1256620949/photo/travel-booking-web-page-concept-booking-on-the-internet.jpg?s=1024x1024&w=is&k=20&c=pbAmoZJUqJx5uRWgQRJH0nBo7Hn5zJu20aFLFImSZg8=");
            background-size: cover;
            background-position: center;
            font-family: 'Arial', sans-serif;
            color: #ffffff; /* Text color */
            text-align: center;
            height: 100vh; /* Full viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .div1{
        background-color:pink;
        color:black;
        font-size:22px;
        padding:10px;
        }
         .btn{
        margin-top:10px;
        background-color:blue;
        color:white;
        font-size:20px;
        border:none;
        }
        .btn:hover{
        background-color:green;
        color:white;
        }
</style>
</head>
<body>
<h2 style="color:blue;">Login Here</h2>
<h4 style="color:red;">${error}</h4>
<form action="verifylogin" method="post">
<div class="div1">
<pre>
UserName <input type ="text" name ="email" />
Password <input type ="text" name = "password" />
<input type = "submit" value = "Login" class="btn" />
</pre>
</div>
</form>
</body>
</html>