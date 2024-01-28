<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<h2>Login Page</h2>
${error}
<form action="verifylogin" method="post">
<pre>
UserName <input type ="text" name ="email" />
Password <input type ="text" name = "password" />
<input type = "submit" value = "Login" />
</pre>

</form>
</body>
</html>