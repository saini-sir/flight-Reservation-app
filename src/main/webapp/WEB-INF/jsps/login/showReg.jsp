<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registrataion</title>
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
</style>
</head>
<body>
<h2>Create New Account</h2>
<form action="saveReg" method="post">
<pre>
First Name<input type = "text" name = "firstName" required placeholder = "Enter First Name"/>
Last Name <input type = "text" name ="lastName" required placeholder ="Enter Last Name" />
EmailId   <input type ="email" name = "email" reqired placeholder ="Enter Email"/>
Password  <input type = "number" name="password" required placeholder ="Enter Password"/>
          <input type = "submit" value = "Save" />
</pre>
</form>
</body>
</html>